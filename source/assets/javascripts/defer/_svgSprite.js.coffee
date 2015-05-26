svgSprite = ->
  svg = new XMLHttpRequest()
  svg.open "GET", "/assets/images/svg/sprite.svg", true
  svg.send()
  svg.onload = (data) ->
    wrapper = document.createElement "div"
    wrapper.innerHTML = svg.responseText
    document.body.insertBefore wrapper, document.body.childNodes[0]

ready svgSprite
