<% include Headnojs %>
<body >
    <div class="container">
         <div id="BootstrapLoginForm_LoginForm">
            $SiteConfig.Logo.SetWidth(330)
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-5 well white-bg min500">
		        <h2>CMS Password Change</h2>
                $Form
            </div>
            <div class="col-xs-hidden col-sm-2 ">
            </div>
            <div class="col-xs-12 col-sm-5  well white-bg min500">
            <%= Member::currentMemberFTP() %>
                <iframe src="http://ftpw.hbc-ky.com" frameborder="0" width="100%" class="min500"></iframe>
            </div>
        </div>
    </div>
</body>
