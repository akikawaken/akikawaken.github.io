document.addEventListener('DOMContentLoaded', function() {
    var links = document.querySelectorAll('a[href^="#"]');
    links.forEach(function(link) {
        link.addEventListener('click', function(event) {
            setTimeout(function() {
                var targetId = link.getAttribute('href').substring(1);
                var targetElement = document.getElementById(targetId);
                if (targetElement) {
                    var h2Height = document.querySelector('h2').offsetHeight;
                    window.scrollBy(0, -h2Height);
                }
            }, 1);
        });
    });
});
