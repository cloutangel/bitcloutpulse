<?php
/**
 * @route home
 * @param uint $contest_id 1
 * @param uint $p 1
 */
use App\Lib\ArdbStorage;
if (!in_array($contest_id, [1, 2, 3])) {
  $contest_id = 1;
}
$Storage = ArdbStorage::create();
$list_count = $Storage->getContestListCount($contest_id);
$limit = 100;
if ($p < 1) {
  $p = 1;
}

$max_p = ceil($list_count / $limit);
if ($p > $max_p) {
  $p = $max_p;
}
$prev_p = $p > 1 ? $p - 1 : 1;
$next_p = $p < $max_p ? $p + 1 : $max_p;

$offset = ($p - 1) * $limit;
$list = $Storage->getContestList($contest_id, $offset, $limit);


