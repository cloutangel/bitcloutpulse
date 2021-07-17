<main>
  <div class="coins-table" style="max-width: 1280px;margin: 50px auto;">
    <div>
      <div class="clearfix">      
        <p class="coins-table-ttl"><img src="/img/bitcloutpulse-logo.png" height="64"/></p>
        {>home__pagination}
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

      <div class="clearfix">
        {>home__pagination}
      </div>
    </div>
  </div>
</main>