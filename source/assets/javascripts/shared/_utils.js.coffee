###doc
---
title: Timeout Wrappers
name: timeout_wrappers
category: Javascripts - Utilities
---
Writing `setTimeout` and `clearTimeout in coffeescript is, well, ugly. The
`delay` function swaps the order of the function and timing, and names the
function in a more human friendly manner. The `cancel` function replaces
`clearTimeout` and reads much more clearly in code as well.

```coffee_example
timeoutName = null

$(window).on "event", ->
  cancel timeoutName
  timeoutName = delay 100, ->
    alert "I'm delayed"
```
###

exports = exports ? this

exports.delay = (ms, func) -> setTimeout func, ms
exports.cancel = (id) -> clearTimeout id
