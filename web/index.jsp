<%--
  Created by IntelliJ IDEA.
  User: tao_thao
  Date: 24/11/2019
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CSDL</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="css/style.css"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-2">
    <h1>CDSL</h1>
    <hr>
    <div class="row w-100">
        <div class="col-md-3 mb-3">
            <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="one-tab" data-toggle="tab" href="#" role="tab"
                       aria-controls="one" aria-selected="true">Tìm bao đóng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="two-tab" data-toggle="tab" href="#two" role="tab"
                       aria-controls="two" aria-selected="false">Tìm khóa tối thiểu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="three-tab" data-toggle="tab" href="#three" role="tab"
                       aria-controls="three" aria-selected="false">Tìm phụ thuộc hàm tối thiểu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="four-tab" data-toggle="tab" href="#four" role="tab"
                       aria-controls="four" aria-selected="false">Kiểm tra mất mát</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="five-tab" data-toggle="tab" href="#five" role="tab"
                       aria-controls="five" aria-selected="false">Tìm phụ thuộc hàm không dư thừa</a>
                </li>
            </ul>
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-9">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="one" role="tabpanel" aria-labelledby="one-tab">
                    <h2>Tìm bao đóng</h2>
                    <form class="item_" id="item_1">
                        U = <input type="text" placeholder="Tập các quan hệ" id="u_one">
                        <h4>F =</h4>
                        <div class="content_">
                            <input type="text" class="ele-one">
                            <i class="fas fa-arrow-right"></i>
                            <input type="text" class="ele-two">
                        </div>
                    </form>
                    <i class="fa fa-plus" id="add-one"></i>
                    <div class="row">Tập thuộc tính = <input type="text" id="source_one"></div>
                    <button class="btn btn-primary" id="check_one">Check</button>
                    <h1 id="result"></h1>
                </div>
                <div class="tab-pane fade" id="two" role="tabpanel" aria-labelledby="two-tab">
                    <h2>Tìm khóa tối thiểu</h2>
                    <form class="item_" id="item_2">
                        U = <input type="text" placeholder="Tập các quan hệ" id="u_two">
                        <h4>F =</h4>
                        <div class="content_two">
                            <input type="text" class="ele-one">
                            <i class="fas fa-arrow-right"></i>
                            <input type="text" class="ele-two">
                        </div>
                    </form>
                    <i class="fa fa-plus" id="add-two"></i><br>
                    <button class="btn btn-primary" id="check_two">Check</button>
                    <h1 id="result_two"></h1>
                </div>
                <div class="tab-pane fade" id="three" role="tabpanel" aria-labelledby="three-tab">
                    <h2>Tìm phủ tối thiểu</h2>
                    <form class="item_" id="item_3">
                        U = <input type="text" placeholder="Tập các quan hệ" id="u_three">
                        <h4>F =</h4>
                        <div class="content_three">
                            <input type="text" class="ele-one">
                            <i class="fas fa-arrow-right"></i>
                            <input type="text" class="ele-two">
                        </div>
                    </form>
                    <i class="fa fa-plus" id="add-three"></i><br>
                    <button class="btn btn-primary" id="check_three">Check</button>
                    <h1 id="result_three"></h1>
                </div>
                <div class="tab-pane fade" id="four" role="tabpanel" aria-labelledby="four-tab">
                    <h2>Kiểm tra mất mát</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque, eveniet earum. Sed accusantium
                        eligendi molestiae quo hic velit nobis et, tempora placeat ratione rem blanditiis voluptates vel
                        ipsam? Facilis, earum!</p>

                </div>
                <div class="tab-pane fade" id="five" role="tabpanel" aria-labelledby="five-tab">
                    <h2>Tìm phụ thuộc hàm không dư thừa</h2>
                    <form class="item_" id="item_5">
                        U = <input type="text" placeholder="Tập các quan hệ" id="u_five">
                        <h4>F =</h4>
                        <div class="content_five">
                            <input type="text" class="ele-one">
                            <i class="fas fa-arrow-right"></i>
                            <input type="text" class="ele-two">
                        </div>
                    </form>
                    <i class="fa fa-plus" id="add-five"></i><br>
                    <button class="btn btn-primary" id="check_five">Check</button>
                    <h1 id="result_five"></h1>
                </div>
            </div>
        </div>
        <!-- /.col-md-8 -->
    </div>
</div>
<!-- /.container -->
<script>
    document.getElementById("add-one").addEventListener("click", function (ev) {
        $("#item_1").append(createE());
    })

    function createE(s) {
        var d = document.createElement("div");
        d.className = "content_" + s;
        var in_1 = document.createElement("input");
        in_1.className = "ele-one";
        in_1.type = "text";
        var i_ = document.createElement("i");
        i_.className = "fas fa-arrow-right";
        var in_2 = document.createElement("input");
        in_2.className = "ele-two";
        in_2.type = "text";
        d.appendChild(in_1);
        d.appendChild(i_);
        d.appendChild(in_2);
        return d;
    }

    function getContent(id, s) {
        var content = document.getElementsByClassName("content_" + s);
        var list = "";
        for (var i = 0; i < content.length; ++i) {
            list += content[i].getElementsByClassName("ele-one")[0].value + ":" + content[i].getElementsByClassName("ele-two")[0].value + ",";
        }
        list = list.substring(0, list.length - 1);
        return list;
    }

    document.getElementById("check_one").addEventListener("click", function (ev) {
        var list = getContent(0, "");
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                var data = xhr.responseText;
                if (data != null) {
                    $("result").css("color", "deepskyblue");
                    $("#result").text(data);
                } else {
                    $("#result").css("color", "red");
                    $("#result").text("Tập không bao đóng!");
                }
            }
        }
        var link = "id=1&u=" + document.getElementById("u_one").value + "&f=" + list + "&source=" + document.getElementById("source_one").value;
        xhr.open('POST', 'home', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.send(link);
    })
    document.getElementById("add-two").addEventListener("click", function (ev) {
        $("#item_2").append(createE("two"));
    })
    document.getElementById("check_two").addEventListener("click", function (ev) {
        var list = getContent(1, "two");
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                var data = xhr.responseText;
                if (data != null) {
                    $("result_two").css("color", "deepskyblue");
                    $("#result_two").text(data);
                } else {
                    $("#result_two").css("color", "red");
                    $("#result_two").text("Khong co khoa toi thieu!");
                }
            }
        }
        var link = "id=2&u=" + document.getElementById("u_two").value + "&f=" + list;
        xhr.open('POST', 'home', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.send(link);
    })
    document.getElementById("add-three").addEventListener("click", function (ev) {
        $("#item_3").append(createE("three"));
    })
    document.getElementById("check_three").addEventListener("click", function (ev) {
        var list = getContent(1, "three");
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                var data = xhr.responseText;
                if (data != null) {
                    $("result_three").css("color", "deepskyblue");
                    $("#result_three").text(data);
                } else {
                    $("#result_three").css("color", "red");
                    $("#result_three").text("Khong co phu thuoc ham toi thieu!");
                }
            }
        }
        var link = "id=3&u=" + document.getElementById("u_three").value + "&f=" + list;
        xhr.open('POST', 'home', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.send(link);
    })
    document.getElementById("add-five").addEventListener("click", function (ev) {
      $("#item_5").append(createE("five"));
    })
    document.getElementById("check_five").addEventListener("click", function (ev) {
      var list = getContent(1, "five");
      var xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
          var data = xhr.responseText;
          if (data != null) {
            $("result_five").css("color", "deepskyblue");
            $("#result_five").text(data);
          } else {
            $("#result_five").css("color", "red");
            $("#result_five").text("Khong co phu thuoc ham toi thieu!");
          }
        }
      }
      var link = "id=5&u=" + document.getElementById("u_five").value + "&f=" + list;
      xhr.open('POST', 'home', true);
      xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
      xhr.send(link);
    })
</script>
</body>
</html>
