function cookieagree() {
  // code
  document.getElementById("cookiemodal").remove();
}

function cookieclose() {
  // code
  document.getElementById("cookiemodal").remove();
}

document.getElementById("cookieagree").addEventListener("click", cookieagree);
document.getElementById("cookieclose").addEventListener("click", cookieclose);
