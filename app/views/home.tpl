<main>
  <div class="coins-table" style="max-width: 1280px;margin: 50px auto;">
    <div>
      <div class="clearfix">
        <p class="coins-table-ttl"><img src="/img/bitcloutpulse-logo.png" height="64" /></p>
        {>home__pagination}
      </div>
      <table class="table_sort">
        <thead>
          <tr>
            <th width="20">№</th>
            <th>Nickname</th>
            <th>Bought, $CLOUT</th>
            <th>Sold, $CLOUT</th>
            <th>Balance, $CLOUT</th>
            <th>
              <div class="hint">
                <a href="/?contest_id=1"><img src="/i/coin.png" class="coin-img" alt="" />Contest 1</a>
                <!-- <div class="hint-d">
                  <p>Top 100 users who trade the most BUY volume this week will split $10k (https://bitclout.com/u/10k)
                    among themselves proportional to their buy volume.</p>
                  <p>For example, if you buy 10 CLOUT of $artz (https://bitclout.com/u/artz) and sell 5 CLOUT of
                    $elonmusk (https://bitclout.com/u/elonmusk), your BUY volume is still 10 CLOUT.</p>
                  <p>Volume counts 1.5x if traded on <a href="http://bitcloutpulse.com/" target="_blank">bitcloutpulse.com</a></p>
                </div> -->
              </div>
            </th>
            <th>
              <div class="hint">
                <a href="/?contest_id=2"><img src="/i/coin.png" class="coin-img" alt="" />Contest 2</a>
                <!-- <div class="hint-d">
                  <p>Anyone who trades at least 100 CLOUT in total BUY volume gets 1 entry into a random drawing for an
                    additional $10,000 in prizes:</p>
                  1 winner will get $5,000<br>
                  4 winners will get $1,000<br>
                  4 winners will get $250<br><br>
                  <p>For example, if you buy 100 CLOUT worth of creator coins, but then sell 25 CLOUT worth, your buy
                    volume would still be 100 CLOUT so you would qualify.</p>
                  <p>Get an extra entry if that 100 CLOUT in buy volume happens on <a href="http://bitcloutpulse.com/" target="_blank">bitcloutpulse.com</a>!</p>
                </div> -->
              </div>
            </th>
            <th>
              <div class="hint">
                <a href="/?contest_id=3"><img src="/i/coin.png" class="coin-img" alt="" />Contest 3</a>
                <!-- <div class="hint-d">
                  <p>If you buy just 1 CLOUT more in creator coins than you sell over the course of the week, you will
                    get 1 entry into another drawing with the same prizes as above. This means (buy volume - sell
                    volume) >= 1 CLOUT.</p>
                  <p>For example, if you buy 5 CLOUT worth of creator coins, but then later in the week sell 3 CLOUT
                    worth, your net buy volume would be 2 CLOUT so you would qualify.</p>
                  <p>Get an extra entry if at least half of your trades occur on <a href="http://bitcloutpulse.com/" target="_blank">bitcloutpulse.com</a>!</p>
                </div> -->
              </div>
            </th>
          </tr>
        </thead>
        <tbody>
          {list}
          <tr>
            <td>{rank}</td>
            <td><a href="https://bitclout.com/u/{username}" target="_blank" rel="noopener norefer"><i style="background-image: url('https://bitclout.com/api/v0/get-single-profile-picture/{pubkey}?fallback=https://bitclout.com/assets/img/default_profile_pic.png');">&nbsp;</i>{username}</a><img src="/i/coin.png" class="coin-img" alt=""></td>
            <td class="green">{bought:clout}</td>
            <td class="red">{sold:clout}</td>
            <td>{balance:clout}</td>
            <td>{contest1:clout}</td>
            <td>{contest2}<img src="/i/ticket-1.png" class="ticket-img" alt="" /></td>
            <td>{contest3}<img src="/i/ticket-2.png" class="ticket-img" alt="" /></td>
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