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
							<i class="fa fa-fw fa-lg fa-database"></i>
							<% _t('CMSMain.TabContent', 'Content') %>
						</a>
					</li>
					<li class="<% if class == 'CMSPageSettingsController' %>active<% end_if %>">
						<a href="$LinkPageSettings" title="Form_EditForm" data-href="$LinkPageSettings">
							<i class="fa fa-fw fa-lg fa-cogs"></i>
							<% _t('CMSMain.TabSettings', 'Settings') %>
						</a>
					</li>
					<li class="<% if class == 'CMSPageHistoryController' %>active<% end_if %>">
						<a href="$LinkPageHistory"title="Form_EditForm" data-href="$LinkPageHistory">
							<i class="fa fa-fw fa-lg fa-history"></i>
							<% _t('CMSMain.TabHistory', 'History') %>
						</a>
					</li>
				</ul>
	        </div><!--/.nav-collapse -->
	    </div>
	</nav>
	<div class="offset-left cms-content">
		<div class="container-fluid with-tools min">
			$Tools
			<div class="row inner-offset-left">
				<div class="col-xs-12">
					$EditForm
				</div>
			</div>
		</div>
	</div>
</div>