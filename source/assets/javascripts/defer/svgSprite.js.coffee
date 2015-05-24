svgSprite = ->
  request = new XMLHttpRequest()
  request.open 'GET', '/assets/images/svg/icons.svg', true
  request.onload = ->
    if request.status >= 200 && request.status < 400
      data = request.responseText
      document.querySelectorAll('head').append data
  request.send()

ready svgSprite
