<?php
/**
 * @route home
 * @param uint $contest_id 1
 */
use App\Lib\ArdbStorage;
if (!in_array($contest_id, [1, 2, 3])) {
  $contest_id = 1;
}
$Storage = ArdbStorage::create();
$list = $Storage->getContestList($contest_id);
