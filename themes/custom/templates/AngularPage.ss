<div class="content">
    $Content
    <div data-ng-repeat="section in content" ng-bind-html-unsafe="section.Content">
        <h2>section.Title</h2>
        {{section.Content}}
    </div>
</div>
$Form
