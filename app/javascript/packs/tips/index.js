count = 0;

document.getElementsByClassName("box")[0].style.visibility = "hidden";
document.getElementById("addbutton").onclick = function(){
  count++;
  document.getElementById("boxes").appendChild(boxes.firstElementChild.cloneNode(true));
  document.getElementsByClassName("box")[count].style.visibility = "";
};

document.getElementById("delete").onclick = function () {
  document.getElementsByClassName("box")[count].remove();
  count--;
}