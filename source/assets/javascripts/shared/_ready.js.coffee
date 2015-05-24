exports = exports ? this

exports.ready = (func) ->
  if document.readyState != 'loading'
    func()
  else
    document.addEventListener 'DOMContentLoaded', func
