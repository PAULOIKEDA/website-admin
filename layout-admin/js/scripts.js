ScrollReveal().reveal(
    '.animation', {
        reset: true,
        delay: 500,
        useDelay: 'onload',
        interval: 150,
        easing: 'ease-in'
    }
);

$(function () {
    $('[data-toggle="tooltip"]').tooltip()
})

$(document).ready(function() {
    $('.sidebar-toogle').on('click', function() {
        $('.sidebar').toggleClass('toggled');
    });
    var active = $('.sidebar .active');
    if (active.length && active.parent('.collapse').length) {
        var parent = active.parent('.collapse');
        parent.prev('a').attr('aria-expanded', true);
        parent.addClass('show');
    }
});