$ ->
  $('#nav>li').each ->
    li = $(@)
    return unless li.children('ul').length
    timer = null
    li.on 'mouseenter', ->
      clearTimeout timer
      li.addClass 'active'
      li.find('ul').slideDown('fast');
    li.on 'mouseleave', ->
      clearTimeout timer
      timer = setTimeout (-> li.find('ul').slideUp 'fast', -> li.removeClass 'active'), 20




