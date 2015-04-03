module.exports = {

    // Task options
    options: {
        limit: 4
    },

    // Dev tasks
    devFirst: [
        'clean',
        'jshint'
    ],
    devSecond: [
        'less:dev',
        'uglify',
	'copy'
    ],

    // Production tasks
    prodFirst: [
        'clean',
        'jshint'
    ],
    prodSecond: [
        'less:prod',
        'uglify',
	'copy'
    ],

    // Image tasks
    imgFirst: [
        'imagemin'
    ]
};
