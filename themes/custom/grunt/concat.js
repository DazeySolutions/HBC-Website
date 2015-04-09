module.exports = {
    options: {
      separator: ';',
    },
    dist: {
      src: ['lib/instafeed.js', 'lib/ngImageSlide.js', 'bower_components/jquery/dist/jquery.js',  'bower_components/angular/angular.js',  'bower_components/angular-ui-router/release/angular-ui-router.js',  'bower_components/bootstrap/dist/js/bootstrap.js', 'bower_components/angular-animate/angular-animate.js', 'bower_components/angularjs-toaster/toaster.js','bower_components/ng-lodash/build/ng-lodash.js'],
      dest: 'dist/js/dependencies.min.js',
    },
    css: {
      src: ['bower_components/angularjs-toaster/toaster.css', 'dist/css/main.css' ],
      dest: 'dist/css/main.css',
    },
    basic: {
      src: ['src/js/custom.js'],
      dest: 'dist/js/custom.min.js',
    }
};
