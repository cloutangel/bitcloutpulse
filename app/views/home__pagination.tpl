<nav class="navigation-pagination">
  <ul class="pagination pagination-sm mb-0">
    <li class="page-item disabled"><a href="/?contest_id={contest_id};p=1"><span class="page-link">First</span></a></li>
    <li class="page-item disabled"><a href="/?contest_id={contest_id};p={prev_p}"><span class="page-link"><i class="prev"></i></span></a></li>
    <li class="page-item disabled"><span class="page-link text-nowrap">Page <strong
          class="font-weight-medium">{p}</strong> of <strong class="font-weight-medium">{max_p}</strong></span></li>
    <li class="page-item"><a class="page-link" href="/?contest_id={contest_id};p={next_p}"><span><i class="next"></i></span></a></li>
    <li class="page-item"><a class="page-link" href="/?contest_id={contest_id};p={max_p}"><span>Last</span></a></li>
  </ul>
</nav>