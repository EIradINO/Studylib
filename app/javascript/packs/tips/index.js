count = 0;

document.getElementsByClassName("box")[0].style.visibility = "hidden";
document.getElementById("add_button").onclick = function(){
  count++;
  document.getElementById("boxes").appendChild(boxes.firstElementChild.cloneNode(true));
  document.getElementsByClassName("box")[count+1].style.visibility = "";
};

document.getElementById("delete_button").onclick = function () {
  if (count == 0) {
    alert("削除できるアイテムがありません")
  } else {
    document.getElementsByClassName("box")[count].remove();
    count--;
  }
}