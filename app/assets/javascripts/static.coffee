$(document).on 'turbolinks:load', ->
  $('#resolution-card').hide()

  $('#add-resolution-link').click (event) ->
    $('#resolution-card').slideDown()
    $('#add-resolution-link').addClass('disabled')
    $('#nevermind-link').fadeIn('slow')
    event.preventDefault()
    return

  $('#nevermind-link').click (event) ->
    $('#resolution-card').slideUp()
    $('#add-resolution-link').removeClass('disabled')
    event.preventDefault()
    return

