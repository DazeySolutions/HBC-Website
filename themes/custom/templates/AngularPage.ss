<div class="content">
    <div data-ng-repeat="section in content">
        <h2>{{section.Title}}</h2>
        <div  ng-bind-html="section.Content | to_trusted"></div> 
    </div>
</div>
$Form
