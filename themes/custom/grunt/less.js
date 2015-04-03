module.exports = {

    // Development settings
    dev: {
        files: {
	    "dist/css/main.css": "src/less/main.less"
        }
    },

    // Production settings
    prod: {
        options:{
            compress: true
        },
	files: {
	    "dist/css/main.css": "src/less/main.less"
        }
    }
};
