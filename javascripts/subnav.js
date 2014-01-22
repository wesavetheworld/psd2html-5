(function() {
  $(function() {
    return $('#subnav li').mouseenter(function() {
      return $(this).addClass('active');
    }).mouseleave(function() {
      return $(this).removeClass('active');
    });
  });

}).call(this);
