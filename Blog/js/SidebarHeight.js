window.onload = function() {
    var mainHeight = document.querySelector('.main').offsetHeight;
    document.querySelector('.sidebar').style.height = mainHeight + 'px';
};

document.addEventListener("DOMContentLoaded", function() {
    const heads = document.querySelectorAll("th.head");
    heads.forEach(head => {
      const nextTh = head.nextElementSibling;
      if (nextTh) {
        const headHeight = head.offsetHeight;
        const arrowSize = headHeight / 2;
        nextTh.style.setProperty('--arrow-size', `${arrowSize}px`);
      }
    });
  });
