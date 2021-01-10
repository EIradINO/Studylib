count = 0;

document.getElementById("add_content").onclick = function () {
  document.getElementById("article_containers").innerHTML += `<div class="content"><input type="hidden" name="article[containers_attributes][${count}][content]" id="article_containers_attributes_${count}_content_trix_input_container" /><trix-editor id="article_containers_attributes_${count}_content" input="article_containers_attributes_${count}_content_trix_input_container" class="trix-content" data-direct-upload-url="http://localhost:3000/rails/active_storage/direct_uploads" data-blob-url-template="http://localhost:3000/rails/active_storage/blobs/:signed_id/:filename"></trix-editor></div>`;
  count++;
};

document.getElementById("add_artip").onclick = function(){
  document.getElementById("article_containers").innerHTML += `<div class="content"><textarea name="article[containers_attributes][${count}][artip]" id="article_containers_attributes_${count}_artip"></textarea></div>`;
  console.log(document.getElementsByTagName("textarea")[count].value);
  count++;
};

document.getElementById("delete_button").onclick = function(){
  if (count == 0) {
    alert("削除できるアイテムがありません");
  } else {
    count--;
    document.getElementsByClassName("content")[count].remove();
  }
};


var $children = $('.second_select');
var original = $children.html();
$('.first_select').change(function() {
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