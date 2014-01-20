$ ->
  $('#nav>li').each ->
    li = $(@)
    timer = null
    li.on 'mouseenter', ->
      clearTimeout timer if timer
      li.find('ul').show();
    li.on 'mouseleave', ->
      clearTimeout timer if timer
      timer = setTimeout (-> li.find('ul').hide()), 20

  carousel = $('#carousel')
  carousel.find('li').each (idx) ->
    li = $(@)
    li.on 'click', (e) ->
      li.addClass('active').siblings().removeClass 'active'
      carousel.find('a').each (i) ->
        $(@)[if(i == idx ) then 'show' else 'hide']()




