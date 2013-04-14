// loader configuration
require.config({
    baseUrl: '/resources/scripts',
    shim: {
        'vendor/underscore': {
            exports: '_'
        },
        'vendor/Modernizr': {
            exports: 'Modernizr'
        }
    }
});