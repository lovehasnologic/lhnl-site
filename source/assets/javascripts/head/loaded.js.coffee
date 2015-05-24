###doc
---
title: Page Loaded
name: loaded
category: Javascripts - Page Data
---
When content is loaded, the `is--loaded` class is added to the body. This allows
us to defer any CSS rendering, or ensure a fully loaded DOM, by scoping the
target selector with this class.

```coffee_example
loaded = ->
  $("body").addClass "is--loaded"

if window.addEventListener
  window.addEventListener "load", loaded, false

else if window.attachEvent
  window.attachEvent "onload", loaded

else
  preExistingOnload = window.onload
  window.onload = ->
    setTimeout loaded, 0
    preExistingOnload?()
```
###

loaded = ->
  body = document.body
  body.classList.add "is--loaded"

if window.addEventListener
  window.addEventListener "load", loaded, false

else if window.attachEvent
  window.attachEvent "onload", loaded

else
  preExistingOnload = window.onload
  window.onload = ->
    setTimeout loaded, 0
    preExistingOnload?()
