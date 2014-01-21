(function() {
  $(function() {
    var carousel, items;
    $('#nav>li').each(function() {
      var li, timer;
      li = $(this);
      timer = null;
      li.on('mouseenter', function() {
        clearTimeout(timer);
        li.addClass('active');
        return li.find('ul').slideDown('fast');
      });
      return li.on('mouseleave', function() {
        clearTimeout(timer);
        li.removeClass('active');
        return timer = setTimeout((function() {
          return li.find('ul').slideUp('fast');
        }), 20);
      });
    });
    carousel = $('.jcarousel');
    items = carousel.find('a');
    carousel.jcarousel({
      wrap: 'circular'
    }).jcarouselAutoscroll({
      interval: 3000,
      target: '+=1',
      autostart: true
    });
    carousel.on('jcarousel:scrollend', function(event, widget) {
      var idx;
      idx = items.index(widget.target());
      carousel.find('li.active').removeClass('active');
      return carousel.find('li').eq(idx).addClass('active');
    });
    return $('.jcarousel li').each(function(idx) {
      var li;
      li = $(this);
      return li.click(function() {
        return carousel.jcarousel('scroll', idx);
      });
    });
  });

}).call(this);
