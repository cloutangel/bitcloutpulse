<?php
namespace App\Component;

use App\Lib\ArdbStorage;
use Muvon\Bitclout\CreatorCoin;

class Coin {
  static $map = [];
  public static function getByPubkey(string $pubkey) {
    if (!isset(static::$map[$pubkey])) {
      static::$map[$pubkey] = CreatorCoin::create(static::getCreatorReward($pubkey));
    }

    return static::$map[$pubkey];
  }

  public static function getCreatorReward(string $pubkey): int {
    $Storage = ArdbStorage::create();
    $reward = $Storage->getCreatorReward($pubkey);
    if (false === $reward) {
      $reward = static::findCreatorReward($pubkey);
      $Storage->setCreatorReward($pubkey, $reward);
    }

    return $reward;
  }

  public static function findCreatorReward(string $pubkey): int {
    return 0;
  }
}