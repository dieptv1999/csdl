document.getElementById("add-one").addEventListener("click",function (ev) {
    var clone=document.getElementById("one_items").lastChild.cloneNode(true);
    clone.setAttribute("id","item_"+document.getElementById("one_items").childElementCount);
})