$ ->
  $('#subnav li').mouseenter(-> $(@).addClass 'active').mouseleave(-> $(@).removeClass 'active')