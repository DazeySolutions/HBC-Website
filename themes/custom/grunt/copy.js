module.exports = {
    main: {
        files: [
            {expand: true, flatten: true, src: ['bower_components/fontawesome/fonts/**'], dest: 'dist/assets/fonts/', filter: 'isFile'},
            {expand: true, flatten: true, src: ['bower_components/bootstrap/fonts/**'], dest: 'dist/assets/fonts/', filter: 'isFile'}
        ]
    }
};
