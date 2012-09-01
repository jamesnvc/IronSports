createOptions = (arry) ->
  options = $.map arry, (wght) ->
    $(document.createElement('option')).attr('value', wght).text(wght)[0]
  docFrag = document.createDocumentFragment()
  $.each options, ->
    docFrag.appendChild this
  return docFrag

weight_classes =
  M: ['53 kg', '59 kg', '66 kg', '74 kg', '83 kg', '93 kg', '105 kg', '120 kg', '120+ kg' ]
  F: ['43 kg', '47 kg', '52 kg', '57 kg', '63 kg', '72 kg', '84 kg', '84+ kg']

jQuery ->
  $('#user_gender').change ->
    gender = $(this).val()
    $('#user_weight_class').empty().append(createOptions(weight_classes[gender]))
    $('#user_bodyweight').change()

  $('#user_bodyweight').change ->
    weight = $(this).val()
    sex = $('#user_gender').val()
    cls = weight_classes[sex][weight_classes[sex].length - 1]
    $.each weight_classes[sex], ->
      if weight <= parseInt this, 10
        cls = this
        return false
    $('#user_weight_class option[selected="selected"]').removeAttr 'selected'
    $('#user_weight_class option[value="' + cls + '"]').attr 'selected', 'selected'

