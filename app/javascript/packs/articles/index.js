
count = 0;

document.getElementById('container').onclick = function () {
  count++;
  document.getElementById('text').innerHTML += `<div id="article_container${count}"><input type="hidden" name="article[containers_attributes][${count}][content]" id="article_containers_attributes_${count}_content_trix_input_container" /><trix-editor id="article_containers_attributes_${count}_content" input="article_containers_attributes_${count}_content_trix_input_container" class="trix-content" data-direct-upload-url="http://localhost:3000/rails/active_storage/direct_uploads" data-blob-url-template="http://localhost:3000/rails/active_storage/blobs/:signed_id/:filename"></trix-editor></div>`
};

var $children = $('.children');
var original = $children.html();
$('.parent').change(function() {
  var val1 = $(this).val();
  $children.html(original).find('option').each(function() {
    var val2 = $(this).data('val');
    if (val1 != val2) {
      $(this).not(':first-child').remove();
    }
  });
  if ($(this).val() == "") {
    $children.attr('disabled', 'disabled');
  } else {
    $children.removeAttr('disabled');
  }

});