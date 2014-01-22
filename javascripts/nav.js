(function() {
  $(function() {
    return $('#nav>li').each(function() {
      var li, timer;
      li = $(this);
      if (!li.children('ul').length) {
        return;
      }
      timer = null;
      li.on('mouseenter', function() {
        clearTimeout(timer);
        li.addClass('active');
        return li.find('ul').slideDown('fast');
      });
      return li.on('mouseleave', function() {
        clearTimeout(timer);
        return timer = setTimeout((function() {
          return li.find('ul').slideUp('fast', function() {
            return li.removeClass('active');
          });
        }), 20);
      });
    });
  });

}).call(this);
