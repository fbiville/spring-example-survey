define([
    'jquery',
    'vendor/Modernizr'], function($, Modernizr) {

    var showForm = function() {
            $('.start').click(function() {
                scroll();
            });
        },
        scroll = function() {
            $('html, body').animate({
                scrollTop: $("#surveyForm").offset().top
            }, 2000);
        };

    return {
        init: function(scrollNow) {
            if (!scrollNow) {
                showForm();
            }
            else {
                scroll();
            }
        },
        checkDateSupport: function() {
            Modernizr.load({
                test: Modernizr.inputtypes.month,
                nope: ['http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js', '/resources/styles/jquery-ui.css'],
                complete: function () {
                    $('input[type=month]').datepicker({
                        dateFormat: 'yy-mm'
                    });
                }
            });
        }
    }
});