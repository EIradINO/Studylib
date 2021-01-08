document.getElementById("header_post_menu").onclick = function () {
  if (document.getElementById("header_post_sub").style.display == "block") {
    document.getElementById("header_post_sub").style.display = "none";
  } else {
    document.getElementById("header_post_sub").style.display = "block";
  }
}