module.exports = {
    options: {
        separator: ';',
    },
    dist: {
        src: ['bower_components/jquery/dist/jquery.js',  
              'bower_components/bootstrap/dist/js/bootstrap.js', 
              'bower_components/angular/angular.js'
              ],
      dest: 'dist/js/dependencies.min.js',
    },
    dist1: {
        src: ['lib/instafeed.js', 
              'lib/ngImageSlide.js', 
              'lib/ngContact.js',
              'lib/ngChurchManagement.js'],
      dest: 'dist/js/modules.min.js',
    },
    dist2: {
        src: ['bower_components/pdfjs-dist/build/pdf.combined.js',
              'bower_components/angular-pdf-viewer/dist/angular-pdf-viewer.min.js',
              'bower_components/angular-animate/angular-animate.js', 
              'bower_components/angularjs-toaster/toaster.js',
              'bower_components/angular-strap/dist/angular-strap.js',
              'bower_components/angular-strap/dist/angular-strap.tpl.js',
              'bower_components/ng-lodash/build/ng-lodash.js'],
      dest: 'dist/js/libraries.min.js',
    },
    dist3: {
        src: ['bower_components/ngmap/build/scripts/ng-map.js',
              'bower_components/angular-ui-router/release/angular-ui-router.js'],
        dest: 'dist/js/angularuilibraries.min.js'
    },
    css: {
      src: ['bower_components/angularjs-toaster/toaster.css', 'dist/css/main.css' ],
      dest: 'dist/css/main.css',
    },
    basic: {
      src: ['src/js/custom.js'],
      dest: 'dist/js/custom.min.js',
    },
    inst: {
      src: ['src/js/instagram.js'],
      dest: 'dist/js/instagram.min.js',
    },
    ssuicore: {
        src: ['src/js/ssui.core.js'],
        dest: 'dist/js/ssui.core.js',
    }
};
