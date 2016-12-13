# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$("#sort").change (event) ->
    	$.ajax '/',
	    type: 'GET'
	    dataType: 'html'
	    data: {"value" : this.value}
	    error: (jqXHR, textStatus, errorThrown) ->
	    success: (data, textStatus, jqXHR) ->
	    	$('body').html(data)