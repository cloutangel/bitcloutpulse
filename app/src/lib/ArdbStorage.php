<?php
namespace App\Lib;


class ArdbStorage extends ArdbClient {
  public function getLastHeight(): int {
    return $this->Client->get('block:height') ?: 42553;
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
}