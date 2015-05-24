###doc
---
title: Resizer Event
name: _resizer
category: Javascript - Events
---
Everytime a window is resized the `delayed resize` event is triggered. You can
listen to this, rather than listening for `$(window).on 'resize'` whenever you
want to execute an action on resize. This ensures that we don't flood the window
with executing script by wrapping it in a 1/10th of a second delay.

```coffee_example
$('.selector').on 'delayedResize', ->
  console.log "Window Resized"
```
###

resizer = ->
  resizeTimeout = null
  window.addEventListener "resize onorientationchange", ->
    cancel resizeTimeout
    resizeTimeout = delay 100, ->
      if window.CustomEvent
        event = new CustomEvent 'delayedResize'
      else
        event = document.createEvent 'delayedResize'
        event.initCustomEvent 'delayedResize', true, true
      window.dispatchEvent 'delayedResize'

ready resizer
