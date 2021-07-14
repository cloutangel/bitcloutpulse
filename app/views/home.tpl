<main>
  <div class="coins-table" style="max-width: 1280px;margin: 50px auto;">
    <div>
      <div class="clearfix">
        <p class="coins-table-ttl">CREATOR COINS TRADING</p>
        <nav class="navigation-pagination">
          <ul class="pagination pagination-sm">
            <!-- <li class="page-item disabled"><span class="page-link">First</span></li>
            <li class="page-item disabled"><span class="page-link"><i class="prev"></i></span></li> -->
            <li class="page-item disabled"><span class="page-link text-nowrap">Page <strong
                  class="font-weight-medium">1</strong> of <strong class="font-weight-medium">1</strong></span></li>
            <!-- <li class="page-item"><a class="page-link" href="txs?p=2"><span><i class="next"></i></span></a></li> -->
            <!-- <li class="page-item"><a class="page-link" href="txs?p=10000"><span>Last</span></a></li> -->
          </ul>
        </nav>
      </div>
      <table>
        <thead>
          <tr>
            <th width="20">№</th>
            <th>Username</th>
            <th>Bought, $CLOUT</th>
            <th>Sold, $CLOUT</th>
            <th>Balance, $CLOUT</th>
            <th><a href="/?contest_id=1"><img src="/i/coin.png" class="coin-img" alt="">Contest 1</a></th>
            <th><a href="/?contest_id=2"><img src="/i/coin.png" class="coin-img" alt="">Contest 2</a></th>
            <th><a href="/?contest_id=3"><img src="/i/coin.png" class="coin-img" alt="">Contest 3</a></th>
          </tr>
        </thead>
        <tbody>
          {list}
            <tr>
              <td>{rank}</td>
              <td><a href="https://bitclout.com/u/{username}" target="_blank" rel="noopener norefer">{username}</a><img src="/i/coin.png" class="coin-img" alt=""></td>
              <td class="green">{bought:clout}</td>
              <td class="red">{sold:clout}</td>
              <td>{balance:clout}</td>
              <td>{contest1:clout}</td>
              <td>{contest2}</td>
              <td>{contest3}</td>
            </tr>
          {/list}
        </tbody>
      </table>

      <!-- <div class="clearfix">
        <nav class="navigation-pagination">
          <ul class="pagination pagination-sm mb-0">
            <li class="page-item disabled"><span class="page-link">First</span></li>
            <li class="page-item disabled"><span class="page-link"><i class="prev"></i></span></li>
            <li class="page-item disabled"><span class="page-link text-nowrap">Page <strong
                  class="font-weight-medium">1</strong> of <strong class="font-weight-medium">10000</strong></span></li>
            <li class="page-item"><a class="page-link" href="txs?p=2"><span><i class="next"></i></span></a></li>
            <li class="page-item"><a class="page-link" href="txs?p=10000"><span>Last</span></a></li>
          </ul>
        </nav>
      </div> -->
    </div>
  </div>
</main>