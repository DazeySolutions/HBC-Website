<div id="pages-controller-cms-content" data-pjax-fragment="Content">
	<nav class="navbar navbar-inverse navbar-fixed-top offset-left">
	  	<div class="container-fluid">
	        <div class="navbar-header">
				<% include CMSBreadcrumbs %>
	        </div>
	        <div id="navbar" class="">
		        <ul class="nav navbar-nav navbar-right">
					<li class="<% if class == 'CMSPageEditController' %>active<% end_if %>">
						<a href="$LinkPageEdit" title="Form_EditForm" data-href="$LinkPageEdit">
							<% _t('CMSMain.TabContent', 'Content') %>
						</a>
					</li>
					<li class="<% if class == 'CMSPageSettingsController' %>active<% end_if %>">
						<a href="$LinkPageSettings" title="Form_EditForm" data-href="$LinkPageSettings">
							<% _t('CMSMain.TabSettings', 'Settings') %>
						</a>
					</li>
					<li class="<% if class == 'CMSPageHistoryController' %>active<% end_if %>">
						<a href="$LinkPageHistory"title="Form_EditForm" data-href="$LinkPageHistory">
							<% _t('CMSMain.TabHistory', 'History') %>
						</a>
					</li>
				</ul>
	        </div><!--/.nav-collapse -->
	    </div>
	</nav>

	$Tools

	$EditForm

</div>