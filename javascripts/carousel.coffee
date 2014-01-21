$ ->
  carousel = $('.jcarousel')
  items = carousel.find('a')

  carousel.jcarousel(wrap: 'both').jcarouselAutoscroll
    interval: 3000
    target: '+=1'
    autostart: true

  carousel.on 'jcarousel:scrollend', (event, widget) ->
    idx = items.index widget.target()
    carousel.find('li.active').removeClass 'active'
    carousel.find('li').eq(idx).addClass 'active'

  $('.jcarousel li').each (idx) ->
    li = $ @
    li.click ->
      carousel.jcarousel('scroll', idx);