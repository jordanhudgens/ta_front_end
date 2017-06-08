ready = ->
  clipboard = new Clipboard('.slack-link')
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
