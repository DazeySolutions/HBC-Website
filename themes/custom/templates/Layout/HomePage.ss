<% include Head %>
<body data-ng-app="hbcWebApp">
	<% include Header %>
        <div class="container-full" ui-view>
<section>
    <article>
        
        <h1>$Title</h1>
        
        <div class="content">
            $Content
        </div>

    </article>

    $Form
    
</section>
        </div>
        <% include Footer %>
    </body>
