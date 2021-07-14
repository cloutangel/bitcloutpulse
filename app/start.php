<?php
include_once getenv('APP_DIR') . '/vendor/muvon/kiss-money/src/functions.php';

use function Muvon\KISS\money_v2a;

function nanos_to_clout(int $nanos): string  {
  return money_v2a($nanos, 9, true) ?: 0;
}

View::registerFilterFunc('clout', 'nanos_to_clout');