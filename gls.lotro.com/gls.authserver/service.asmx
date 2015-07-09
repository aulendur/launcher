

<html>

    <head><link rel="alternate" type="text/xml" href="/gls.authserver/service.asmx?disco" />

    <style type="text/css">
    
		BODY { color: #000000; background-color: white; font-family: Verdana; margin-left: 0px; margin-top: 0px; }
		#content { margin-left: 30px; font-size: .70em; padding-bottom: 2em; }
		A:link { color: #336699; font-weight: bold; text-decoration: underline; }
		A:visited { color: #6699cc; font-weight: bold; text-decoration: underline; }
		A:active { color: #336699; font-weight: bold; text-decoration: underline; }
		A:hover { color: cc3300; font-weight: bold; text-decoration: underline; }
		P { color: #000000; margin-top: 0px; margin-bottom: 12px; font-family: Verdana; }
		pre { background-color: #e5e5cc; padding: 5px; font-family: Courier New; font-size: x-small; margin-top: -5px; border: 1px #f0f0e0 solid; }
		td { color: #000000; font-family: Verdana; font-size: .7em; }
		h2 { font-size: 1.5em; font-weight: bold; margin-top: 25px; margin-bottom: 10px; border-top: 1px solid #003366; margin-left: -15px; color: #003366; }
		h3 { font-size: 1.1em; color: #000000; margin-left: -15px; margin-top: 10px; margin-bottom: 10px; }
		ul { margin-top: 10px; margin-left: 20px; }
		ol { margin-top: 10px; margin-left: 20px; }
		li { margin-top: 10px; color: #000000; }
		font.value { color: darkblue; font: bold; }
		font.key { color: darkgreen; font: bold; }
		font.error { color: darkred; font: bold; }
		.heading1 { color: #ffffff; font-family: Tahoma; font-size: 26px; font-weight: normal; background-color: #003366; margin-top: 0px; margin-bottom: 0px; margin-left: -30px; padding-top: 10px; padding-bottom: 3px; padding-left: 15px; width: 105%; }
		.button { background-color: #dcdcdc; font-family: Verdana; font-size: 1em; border-top: #cccccc 1px solid; border-bottom: #666666 1px solid; border-left: #cccccc 1px solid; border-right: #666666 1px solid; }
		.frmheader { color: #000000; background: #dcdcdc; font-family: Verdana; font-size: .7em; font-weight: normal; border-bottom: 1px solid #dcdcdc; padding-top: 2px; padding-bottom: 2px; }
		.frmtext { font-family: Verdana; font-size: .7em; margin-top: 8px; margin-bottom: 0px; margin-left: 32px; }
		.frmInput { font-family: Verdana; font-size: 1em; }
		.intro { margin-left: -15px; }
           
    </style>

    <title>
	Global Login System Authentication Service Web Service
</title></head>

  <body>

    <div id="content">

      <p class="heading1">Global Login System Authentication Service</p><br>

      <span>
          <p class="intro">The GLS AuthServer service is responsible for handling front end authentication
requests and managing authentication tickets for clients. It is consumed by the game launcher and provides
profile and subscription information.</p>
      </span>

      <span>

          <p class="intro">The following operations are supported.  For a formal definition, please review the <a href="service.asmx?WSDL">Service Description</a>. </p>
          
          
              <ul>
            
              <li>
                <a href="service.asmx?op=LoginAccount">LoginAccount</a>
                
                <span>
                  <br>Authenticates the supplied user credentials.
If the supplied username and password are verified by the back-end billing system,
this method will return an authentication ticket that can be used to hand off
authentication status to other services (such as the game server) as well as a
user profile that describes the subscriptions available to this user.
Unsuccessful authentication attempts will cause an exception to be thrown
which may contain information from the billing system.  If that happens,
either the username does not exist, or the password was incorrect.
The authentication ticket that is returned is valid for a fixed period of time.
If it is necessary to maintain an authentication context for longer than a few
minutes, the RefreshTicket method should be used to obtain an extended ticket.
                </span>
              </li>
              <p>
            
              <li>
                <a href="service.asmx?op=RefreshTicket">RefreshTicket</a>
                
                <span>
                  <br>Refreshes an authentication ticket. If a valid
ticket is presented, this method will return another ticket that is valid for an
extended period of time.  This mechanism can be used to keep an authentication
context valid for the full period of a user's contact with Turbine services.
An exception will be thrown if the ticket cannot be renewed for any reason.
In particular, an expired ticket will cause a TicketExpiredException to be thrown.
If that happens, a Call to LoginAccount will be necessary to re-authenticate
the account.
                </span>
              </li>
              <p>
            
              </ul>
            
      </span>

      
      

    <span>
        
    </span>
    
      

      

    
  </body>
</html>
