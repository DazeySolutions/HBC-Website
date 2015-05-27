<div id="pages-controller-cms-content" data-pjax-fragment="Content">
	<nav class="navbar navbar-inverse navbar-fixed-top offset-left">
	  	<div class="container-fluid">
	        <div class="navbar-header">
				<% include CMSBreadcrumbs %>
	        </div>
	        <div id="navbar" class="">
	            <ul class="nav navbar-nav navbar-right">
	                <li class="<% if ViewState == tree %>active<% end_if %>">
						<a href="#cms-content-treeview" class="cms-panel-link" data-href="$LinkTreeView">
						    <i class="glyphicon glyphicon-grain"></i>
						</a>
					</li>
					<li class="<% if ViewState == tree %>active<% end_if %>">
					    <a href="#cms-content-listview" class="cms-panel-link" data-href="$LinkListView">
					        <i class="glyphicon glyphicon-align-justify"></i>  
					    </a>
					</li>
	            </ul>
	        </div><!--/.nav-collapse -->
	    </div>
	</nav>
	<div class="offset-left">
		<div class="container-fluid">
		    <div class="row">
		        <div class="col-xs-12">
		            <div class="cms-content-view cms-panel-deferred" id="cms-content-treeview" data-url="$LinkTreeView">
		                <%-- Lazy-loaded via ajax --%>
		            </div>
		            <div class="cms-content-view cms-panel-deferred" id="cms-content-listview" data-url="$LinkListView" data-deferred-no-cache="true">
		                <%-- Lazy-loaded via ajax --%>
		            </div>
		        </div>
	        </div>
	    </div>
    </div>
    <!--$Tools-->
</div>