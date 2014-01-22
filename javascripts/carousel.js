(function() {
  $(function() {
    var carousel, items;
    carousel = $('.jcarousel');
    items = carousel.find('a');
    carousel.jcarousel({
      wrap: 'circular'
    }).jcarouselAutoscroll({
      interval: 3000,
      target: '+=1',
      autostart: true
    });
    $('.jcarousel-pagination').on('jcarouselpagination:createend', function() {
      return $('.jcarousel-pagination li').eq(0).addClass('active');
    }).jcarouselPagination({
      item: function(page) {
        return "<li>" + page + "</li>";
      }
    });
    return carousel.on('jcarousel:scrollend', function(event, widget) {
      var idx;
      idx = items.index(widget.target());
      carousel.find('li.active').removeClass('active');
      return carousel.find('li').eq(idx).addClass('active');
    });
  });

}).call(this);
