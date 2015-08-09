$loadBtn = $('input#load-btn')

$loadBtn.on "click", ->
  $.ajax
    type: 'get'
    url: 'http://192.168.33.10:3000/tweets/more/' + localStorage['last_id']
    success: (data) ->
      alert data
    error: (data) ->
      alert data
  $('#tweet').val('')
