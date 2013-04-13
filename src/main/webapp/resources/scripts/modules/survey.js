define([
    'jquery',
    'vendor/underscore'], function($, _) {

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
        }
    }
});