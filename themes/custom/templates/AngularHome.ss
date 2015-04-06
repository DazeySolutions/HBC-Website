<div class="content">
    <div data-ng-repeat="image in images">
        <img ng-src="/{{image.Filename}}">
    </div>
    <div data-ng-repeat="section in content" class="section-row" data-ng-class-even="'even'" data-ng-class-odd="'odd'">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h2>{{section.Title}}</h2>
                    <div  ng-bind-html="section.Content | to_trusted"></div> 
                </div>
            </div>
        </div>
    </div>
</div>
$Form
