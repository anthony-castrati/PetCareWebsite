<!DOCTYPE html>
<html lang="en">

  <head>
        <meta name="description" content="Capital City Pet Care accepts online payments via Paypal, and all major debit/credit cards.">
    <jsp:include page="header.jsp"/>
  </head>
  
  <body>
    <jsp:include page="navigation.jsp"/>
      <div class="container">
        <div class="page-header">
            <h1 class="text-center">Payments</h1>
        </div>
        <div class="row">
                <div class="col-md-12">
                        <jsp:include page="messaging.jsp"/>
                </div>
        </div>
        <div class="row">
                <div class="col-md-4 col-sm-4 pay">
                        <div class="tier text-center">
                                <h3>Cash</h3>
                                <p><img src="img/cash.png"></p>
                                <div class="detail">
                                <p>We accept cash</p>
                                </div>
                        </div>
                </div>
                <div class="col-md-4 col-sm-4 pay">
                        <div class="tier text-center">
                                <h3>Check</h3>
                                <p><img src="img/check.png"></p>
                                <div class="detail">
                                <p>We accept checks</p>
                                </div>
                        </div>
                </div>
                <div class="col-md-4 col-sm-4 pay">
                        <div class="tier text-center">
                                <h3>Credit/Debit</h3>
                                <p><img src="img/paypal.png"></p>
                                <div class="container">
                                        <div class="row">
                                                <div class="col-md-8 col-md-offset-2">
                                                        <form id="Pay" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
                                                                        <input type="hidden" name="cmd" value="_xclick">
                                                                        <input type="hidden" name="return" value="http://capcitypetcare.com/payments">
                                                                        <input type="hidden" name="business" value="alexxis@capcitypetcare.com">
                                                                        <input type="hidden" name="currency_code" value="USD">
                                                                        <input type="hidden" name="rm" value="2">
                                                                        <input type="hidden" name="cancel_return" value ="http://capcitypetcare.com/payments?action=cancel">
                                                                        <input type="hidden" name="cpp_logo_image" value ="http://capcitypetcare.com/img/paypal_logo.png">
                                                                        <input type="hidden" name="item_name" value="Pet Care Services">
                                                                        <input type="hidden" name="no_shipping" value="1">
                                                                        <div class="input-group">
                                                                          <span class="input-group-addon">$</span>
                                                                          <input id="amount" type="text" name="amount" class="form-control">
                                                                          <span class="input-group-btn">
                                                                        <button type="image" class="btn btn-primary btn-large" type="button" name="submit" alt="PayPal - The safer, easier way to pay online!" onclick="$('#Pay').submit()">Pay Now</button>
                                                                      </span>
                                                                        </div>
                                                                        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
                                                                </form>
                                                        </div>
                                                </div>      
                                        </div>
                                <div class="detail">
                                        <div class="row">
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                <img src="img/mc.png">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                <img src="img/vs.png">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                <img src="img/dc.png">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                <img src="img/ae.png">
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
      </div>
  <jsp:include page="footer.jsp"/>
  </body>
</html>