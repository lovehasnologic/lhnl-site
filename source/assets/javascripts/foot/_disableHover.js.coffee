###doc
---
title: Disabled Hover
name: disableHover
category: Javascripts - Page Data
---
As the window is scrolled, the `is--hoverDisabled` class is added to the body.
This ensures smoother scrolling on the page since hover effects don't need to be
redrawn. The issue is described more fully [here](http://www.thecssninja.com/javascript/pointer-events-60fps).

```
# (app/assets/stylesheets/01-foundation/general.scss)

.is--hoverDisabled {
  pointer-events: none;
}
```

This can cause problems in automated testing, since there is a tenth of a second
delay in scrolling ending and the class being removed. To get around this, you
can have the test add an `is--testing` class to the body.

```
# (app/assets/stylesheets/01-foundation/general.scss)

.is--testing {
  pointer-events: all !important;
}
```
###

disableHover = ->
  body = document.body
  scrollTimer = null
  disabledClass = "is--hoverDisabled"

  window.addEventListener "scroll", (->
    cancel scrollTimer
    unless body.classList.contains disabledClass
      body.classList.add disabledClass

    scrollTimer = delay 100, ->
      body.classList.remove disabledClass
  ), false

ready disableHover
