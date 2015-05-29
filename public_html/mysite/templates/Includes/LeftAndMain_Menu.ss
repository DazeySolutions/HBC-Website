<div class="sidebar">
    <div class="header">
        <div class="col-xs-12">
            <div class="media">
                <div class="media-left media-middle">
                    <a href="$ApplicationLink" target="_blank" title="$ApplicationName (Version - $CMSVersion)">
                        <img src="http://beta.hbc-ky.com/framework/admin/images/logo_small.png">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><% if $SiteConfig %>$SiteConfig.Title<% else %>$ApplicationName<% end_if %></h4>
                </div>
            </div>
        </div>
    </div>
    <div class="login">
        <h5 class="text-center">
           <a href="Security/logout" class="logout-link" title="<% _t('LeftAndMain_Menu_ss.LOGOUT','Log out') %>"><i class="glyphicon glyphicon-log-out"></i></a>
           <% with $CurrentMember %>
				<span>
					<% _t('LeftAndMain_Menu_ss.Hello','Hi') %>
					<a href="{$AbsoluteBaseURL}admin/myprofile" class="profile-link">
						<% if $FirstName && $Surname %>$FirstName $Surname<% else_if $FirstName %>$FirstName<% else %>$Email<% end_if %>
					</a>
				</span>
			<% end_with %>
        </h5>
    </div>
    <div class="menu">
        <ul class="nav nav-pills nav-stacked">
        <% loop $MainMenu %>
            <li class="<% if $LinkingMode != 'link' %> active <% end_if %>" id="Menu-$Code"  title="$Title.ATT">
                <a href="$Link">
                    <i class="glyphicon glyphicon-file"></i>
                    <span>&nbsp;$Title</span>
                </a>
            </li>
		<% end_loop %>
            <li><a onclick="jQuery19('body').toggleClass('min');"><i class="glyphicon glyphicon-minus"></i><span>&nbsp;Minify</span></a></li>
        </ul>
    </div>
</div>