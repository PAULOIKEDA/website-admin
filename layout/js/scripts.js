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