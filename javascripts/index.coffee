$ ->
  $('#nav>li').each ->
    li = $(@)
    li.on 'mouseenter', ->
      li.find('ul').show();
    li.on 'mouseleave', ->
      li.find('ul').hide();

  carousel = $('#carousel')
  carousel.find('li').each (idx) ->
    li = $(@)
    li.on 'click', (e) ->
      li.addClass('active').siblings().removeClass 'active'
      carousel.find('a').each (i) ->
        $(@)[if(i == idx ) then 'show' else 'hide']()




