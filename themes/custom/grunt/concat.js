module.exports = {
    options: {
      separator: ';',
    },
    dist: {
      src: ['bower_components/jquery/dist/jquery.js',  'bower_components/angular/angular.js',  'bower_components/angular-ui-router/release/angular-ui-router.js',  'bower_components/bootstrap/dist/js/bootstrap.js'],
      dest: 'dist/js/dependencies.min.js',
    },
    basic: {
      src: ['src/js/custom.js'],
      dest: 'dist/js/custom.min.js',
    }
};
