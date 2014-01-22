$ ->
  carousel = $('.jcarousel')
  items = carousel.find('a')

  carousel.jcarousel(wrap: 'circular').jcarouselAutoscroll
    interval: 3000
    target: '+=1'
    autostart: true

  $('.jcarousel-pagination').on 'jcarouselpagination:createend', ->
    $('.jcarousel-pagination li').eq(0).addClass 'active'
  .jcarouselPagination(item: (page) -> "<li>#{page}</li>")

  carousel.on 'jcarousel:scrollend', (event, widget) ->
    idx = items.index widget.target()
    carousel.find('li.active').removeClass 'active'
    carousel.find('li').eq(idx).addClass 'active'