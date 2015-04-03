module.exports = {
    all: {
        files: [{
            expand: true,
            cwd: 'src/js',
            src: '**/*.js',
            dest: 'dist/js',
            ext: '.min.js'
        }]
    },
    depend: {
        files : {
            'dist/js/dependencies.min.js': [ 'bower_components/jquery/dist/jquery.js',  'bower_components/angular/angular.js',  'bower_components/angular-ui-router/release/angular-ui-router.js',  'bower_components/bootstrap/dist/js/bootstrap.js',  ]
        }
    }
};
