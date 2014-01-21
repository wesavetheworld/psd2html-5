$ ->
  $('#nav>li').each ->
    li = $(@)
    timer = null
    li.on 'mouseenter', ->
      clearTimeout timer
      li.addClass 'active'
      li.find('ul').slideDown('fast');
    li.on 'mouseleave', ->
      clearTimeout timer
      li.removeClass 'active'
      timer = setTimeout (-> li.find('ul').slideUp('fast')), 20

  carousel = $('.jcarousel')
  items = carousel.find('a')

  carousel.jcarousel(wrap: 'circular').jcarouselAutoscroll
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




