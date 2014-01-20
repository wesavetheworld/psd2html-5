(function() {
  $(function() {
    var carousel;
    carousel = $('#carousel');
    return carousel.find('li').each(function(idx) {
      var li;
      li = $(this);
      return li.on('click', function(e) {
        li.addClass('active').siblings().removeClass('active');
        return carousel.find('a').each(function(i) {
          return $(this)[i === idx ? 'show' : 'hide']();
        });
      });
    });
  });

}).call(this);
