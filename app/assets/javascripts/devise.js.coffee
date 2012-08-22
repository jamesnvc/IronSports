createOptions = (arry) ->
  options = $.map arry, (wght) ->
    $(document.createElement('option')).attr('value', wght).text(wght)[0]
  docFrag = document.createDocumentFragment()
  $.each options, ->
    docFrag.appendChild this
  return docFrag

weight_classes =
  M:
    createOptions ['53 kg', '59 kg', '66 kg', '74 kg', '83 kg', '93 kg', '105 kg', '120 kg', '120+ kg' ]
  F:
    createOptions ['43 kg', '47 kg', '52 kg', '57 kg', '63 kg', '72 kg', '84 kg', '84+ kg']

$('#user_gender').change ->
  gender = $(this).val()
  $('#user_weight_class').empty().append(weight_classes[gender])

