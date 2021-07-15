<?php
namespace App\Lib;


class ArdbStorage extends ArdbClient {
  public function getLastHeight(): int {
    return $this->Client->get('block:height') ?: 41501;
  }

  public function setLastHeight(int $height): static {
    $this->Client->set('block:height', $height);
    return $this;
  }

  public function getLastTxId(): string {
    return $this->Client->get('block:tx') ?: '';
  }

  public function setLastTxId(string $tx_id): static {
    $this->Client->set('block:tx', $tx_id);
    return $this;
  }

  public function getCreatorReward(string $pubkey): int|false {
    return $this->Client->hGet('creator:reward', $pubkey);
  }

  public function setCreatorReward(string $pubkey, int $reward): static {
    $this->Client->hSet('creator:reward', $pubkey, $reward);
    return $this;
  }

  public function getCreatorCoin(string $pubkey): array {
    return explode(':', $this->Client->hGet('creator:coin', $pubkey) ?: '0:0:0');
  }

  public function setCreatorCoin(string $pubkey, array $data): static {
    $this->Client->hSet('creator:coin', $pubkey, implode(':', $data));
    return $this;
  }

  public function getContestListCount(int $contest_id): int {
    return $this->Client->zCard('contest:' . $contest_id) ?: 0;
  }

  public function getContestList(int $contest_id, int $offset = 0, $limit = 100): array {
    // We get gapped entries to skip pubkeys
    $gap = 20;
    $end = $limit + $gap - 1;
    $list1 = $this->Client->zRevRange('contest:1', $offset, $end, true) ?: [];
    $list2 = $this->Client->zRevRange('contest:2', $offset, $end, true) ?: [];
    $list3 = $this->Client->zRevRange('contest:3', $offset, $end, true) ?: [];
    $result = [];
    $list = &${"list$contest_id"};

    $pubkeys = array_keys($list);
    $balance_map = $this->Client->hMGet('investor:balance', $pubkeys);
    $buy_map = $this->Client->hMGet('investor:buy', $pubkeys);
    $sell_map = $this->Client->hMGet('investor:sell', $pubkeys);
    $username_map = $this->Client->hMGet('username', $pubkeys);
    $rank = $offset;
    foreach ($list as $pubkey => $value) {
      $username = $username_map[$pubkey] ?: $pubkey;
      if ($pubkey === $username) { // <- skip pubkeys
        continue;
      }
      $result[] = [
        'rank' => ++$rank,
        'pubkey' => $pubkey,
        'username' => $username,
        'contest1' => $buy_map[$pubkey] ?: 0,
        'contest2' => floor(($contest_id === 2 ? $value : ($this->Client->zScore('contest:2', $pubkey) ?: 0)) / (100 * 10 ** 9)),
        'contest3' => floor(($contest_id === 3 ? $value : ($this->Client->zScore('contest:3', $pubkey) ?: 0)) / 10 ** 9),
        'bought' => $buy_map[$pubkey] ?: 0,
        'sold' => $sell_map[$pubkey] ?: 0,
        'balance' => ($buy_map[$pubkey] ?? 0) - ($sell_map[$pubkey] ?? 0),
      ];
    }

    return $result;
  }

  public function storeCoinOperation(string $investor_pubkey, string $creator_pubkey, string $operation, int $coins, int $clout): static {
    $this->Client->hIncrBy('investor:balance', $investor_pubkey, $operation === 'buy' ? -$clout : +$clout);
    $this->Client->hIncrBy('investor:' . $operation, $investor_pubkey, $clout);
    if ($operation === 'buy') {
      $this->Client->zIncrBy('contest:1', $clout, $investor_pubkey);
    }

    $buy_clout = $this->Client->hGet('investor:buy', $investor_pubkey) ?: 0;
    if ($buy_clout >= 100 * 10 ** 9) {
      $this->Client->zAdd('contest:2', $buy_clout, $investor_pubkey);
    }

    $this->Client->zIncrBy('contest:3', $operation === 'buy' ? $clout : -$clout, $investor_pubkey);
    $this->Client->hSet('username', $investor_pubkey, $investor_pubkey);
    return $this;
  }

  public function setUsername(string $pubkey, string $username): static {
    $this->Client->hSet('username', $pubkey, $username);
    return $this;
  }

  public function getUsernameMap(): array {
    return $this->Client->hGetAll('username') ?: [];
  }
}