<div id="pages-controller-cms-content" data-pjax-fragment="Content">
	<nav class="navbar navbar-inverse navbar-fixed-top offset-left">
	  	<div class="container-fluid">
	        <div class="navbar-header">
				<% include CMSBreadcrumbs %>
	        </div>
	        <div id="navbar" class="">
	            <ul class="nav navbar-nav navbar-right" role="tablist">
	                <li class="<% if ViewState == tree %>active<% end_if %>">
						<a href="#cms-content-treeview" aria-controls="cms-content-treeview" data-href="$LinkTreeView" role="tab" data-toggle="tab">
						    <i class="glyphicon glyphicon-grain"></i>
						</a>
					</li>
					<li class="<% if ViewState == list %>active<% end_if %>">
					    <a href="#cms-content-listview" aria-controls="cms-content-listview" data-href="$LinkListView" role="tab" data-toggle="tab">
					        <i class="glyphicon glyphicon-align-justify"></i>  
					    </a>
					</li>
	            </ul>
	        </div>
	    </div>
	</nav>
	<div class="offset-left cms-content">
		<div class="container-fluid with-tools min">
			$Tools
		    <div class="row inner-offset-left">
		        <div class="col-xs-12">
		        	<div class="tab-content">
			            <div role="tabpanel" class="tab-pane <% if ViewState == tree %>active<% end_if %> cms-content-view cms-panel-deferred" id="cms-content-treeview" data-url="$LinkTreeView">
			                <%-- Lazy-loaded via ajax --%>
			            </div>
			            <div role="tabpanel" class="tab-pane <% if ViewState == list %>active<% end_if %> cms-content-view cms-panel-deferred" id="cms-content-listview" data-url="$LinkListView" data-deferred-no-cache="true">
			                <%-- Lazy-loaded via ajax --%>
			            </div>
			    	</div>
		        </div>
	        </div>
	    </div>
    </div>
</div>