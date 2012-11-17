# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  Morris.Line
    element: 'holecards'
    data: [
      {y: '1', a:14}
      {y: '2', a: 21}
      {y: '3', a: 31}
      {y: '4', a: 45x}
    ]
    xkeys: 'y'
    ykeys: ['a']
    labels:['Series A']