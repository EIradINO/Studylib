
count = 0;

document.getElementById('container').onclick = function () {
  count++;
  document.getElementById('text').innerHTML += `<div id="article_container${count}"><input type="hidden" name="article[containers_attributes][${count}][content]" id="article_containers_attributes_${count}_content_trix_input_container" /><trix-editor id="article_containers_attributes_${count}_content" input="article_containers_attributes_${count}_content_trix_input_container" class="trix-content" data-direct-upload-url="http://localhost:3000/rails/active_storage/direct_uploads" data-blob-url-template="http://localhost:3000/rails/active_storage/blobs/:signed_id/:filename"></trix-editor></div>`
};

var $children = $('.children'); //都道府県の要素を変数に入れます。
var original = $children.html(); //後のイベントで、不要なoption要素を削除するため、オリジナルをとっておく

//地方側のselect要素が変更になるとイベントが発生
$('.parent').change(function() {

  //選択された地方のvalueを取得し変数に入れる
  var val1 = $(this).val();

  //削除された要素をもとに戻すため.html(original)を入れておく
  $children.html(original).find('option').each(function() {
    var val2 = $(this).data('val'); //data-valの値を取得

    //valueと異なるdata-valを持つ要素を削除
    if (val1 != val2) {
      $(this).not(':first-child').remove();
    }

  });

  //地方側のselect要素が未選択の場合、都道府県をdisabledにする
  if ($(this).val() == "") {
    $children.attr('disabled', 'disabled');
  } else {
    $children.removeAttr('disabled');
  }

});