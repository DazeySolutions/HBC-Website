module.exports = {
    all: {
        files: [{
            expand: true,
            cwd: 'src/',
            src: ['assets/*.{png,jpg,gif}'],
            dest: 'dist/'
        }]
    }
};
