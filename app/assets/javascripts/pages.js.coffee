# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#wilksinfo').popover
    trigger: 'hover'
    placement: 'top'
    title: 'The Wilks Cofficient'
    content: """The Wilks Cofficient is a dimensionless number calculated from a
    lifter's gender and bodyweight which allows comparsions of the totals of
    two lifters of differing gender and/or bodyweight.

    For more information, click the question mark to visit the wikipedia page.
    """

