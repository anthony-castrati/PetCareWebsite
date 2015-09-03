<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:include page="header.jsp"/>
  </head>
  
  <body onload="initialize()">
    <jsp:include page="navigation.jsp"/>

    <div class="container">
        <div class="page-header">
            <h1 class="text-center">Promotions</h1>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="promotion">
                    <h2>Refer a Friend</h2>
                    <p>Refer a friend or family member and receive a $15 credit for future service after the referral's first
                        completed service.</p>
                    <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=Refer%20A%20Friend">
                    <p><small>Please present or refer to this coupon when scheduling your reservation.</small></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="promotion">
                    <h2>October 2014 Special</h2>
                    <p>Book 10 or more visits in October and receive 1 complementary nail trim during your reservation.  Some restrictions apply.  Limit 1 coupon per client.</p>
                    <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=October%202014%20Special">
                    <p><small>Please present or refer to this coupon when scheduling your reservation.</small></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="promotion">
                    <h2>New Client Special</h2>
                    <p>Receive 10% off your entire bill for your first booking.</p>
                    <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=New%20Client%20Special">
                    <p><small>Please present or refer to this coupon when scheduling your reservation.</small></p>
                </div>
            </div>
        </div>
    </div>
  <jsp:include page="footer.jsp"/>
  </body>
</html>
