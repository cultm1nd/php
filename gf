<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Практическое задание 4.1 Всплытие событий </title> 
    <style type="text/css">
        #levelOne
        {
            padding: 25px;
            height: 200px;
            width: 200px;
            background-color: #C30;
        }
        #levelTwo
        {
            padding: 25px;
            height: 150px;
            width:150px;
            background-color: #39C;
        }
        #levelThree
        {
            padding: 25px;
            height: 100px;
            width: 100px;
            background-color: #396;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div id="levelOne" onclick="alert('верхний div')">
        <div id="levelTwo" onclick="alert('средний div')">
            <div id="levelThree" onclick="alert('нижний div')"></div>
            <a href="#" title="ссылка"  onclick="alert('ссылка')">ссылка</a>
        </div>
    </div>
</body>
</html>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Практическое задание 4.2 Поля метода Event </title> 
    <script src="jquery-3.7.1.min.js"></script> 
    <script type="text/javascript">
        window.onload=function()
        {
            document.getElementById('levelOne').onclick=function(e)
            {
                console.log(e);
            }
        }
    </script>
    <style type="text/css">
        #levelOne
        {
            padding: 25px;
            height: 200px;
            width: 200px;
            background-color: #C30;
        }
        #levelTwo
        {
            padding: 25px;
            height: 150px;
            width:150px;
            background-color: #39C;
        }
        #levelThree
        {
            padding: 25px;
            height: 100px;
            width: 100px;
            background-color: #396;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div id="levelOne">
        <div id="levelTwo" >
            <div id="levelThree"></div>
            <a href="#" title="ссылка">ссылка</a>
        </div>
    </div><br>
</body>
</html>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Практическое задание 4.3 Делегирование событий </title> 
    <script src="jquery-3.7.1.min.js"></script> 
    <script type="text/javascript">
        window.onload=function()
        {
            $('#One span').on('click',function()
            {
                var text=$(this).text();
                alert('Вы нажали на элемент с текстом ‐ «' + text + '»'); 
                $("<span>Тест</span>").insertAfter($("#One span:eq(2)"));     
            });
            $('#Two').on('click','span', function(){ 
                var text = $(this).text();  
                alert('Вы нажали на элемент с текстом ‐ «' + text + '»');  
                $("<span>Тест</span>").insertAfter($("#Two span:eq(2)"));     
            });
        }
    </script>
    <style type="text/css">
        #One
        {
            height:auto; 
            width:200px; 
            background-color:#CCE6E3; 
            border:2px solid #09F;
             font-size:16px; 
             float:left; 
        }
        #Two
        {
            height: auto;
             width:200px;
            background-color:#F8A998;
            border:2px solid #C00; 
            font-size:16px; 
             float: left;
             margin-left:10px; 
        }
        span,h2
        {
            display: block;
             margin:10px; 
        }
    </style>
</head>
<body>
    <div id="One"> 
        <h2>Элемент 1</h2>  
        <span>Элемент 1 в элементе 1</span> 
        <span>Элемент 2 в элементе 1</span> 
        <span>Элемент 3 в элементе 1</span> 
        </div> 
        <div id="Two"> 
        <h2>Элемент 2</h2>  
        <span>Элемент 1 в элементе 2</span> 
        <span>Элемент 2 в элементе 2</span> 
        <span>Элемент 3 в элементе 2</span> 
        </div> 
</body>
</html>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Практическое задание 4.4 Извлечение данных, переданных событием</title> 
    <script src="jquery-3.7.1.min.js"></script> 
    <script type="text/javascript">
        window.onload=function() 
{ 
$("a").on("click", { value: "Ссылка" }, myF); 
function myF (event)
{ 
alert("Это "+event.data.value); 
alert("Положение курсора по X: "+event.pageX+" \nПоложение курсора по Y: "+event.pageY) ;
}; 
} 
    </script>
    <style type="text/css">
        #One
        {
            height:auto; 
            width:200px; 
            background-color:#CCE6E3; 
            border:2px solid #09F;
             font-size:16px; 
             float:left; 
        }
        #Two
        {
            height: auto;
             width:200px;
            background-color:#F8A998;
            border:2px solid #C00; 
            font-size:16px; 
             float: left;
             margin-left:10px; 
        }
        span,h2
        {
            display: block;
             margin:10px; 
        }
    </style>
</head>
<body>
    <a href="#">Ссылка</a> 
</body>
</html>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Практическое задание 4.2 Событие on</title> 
    <script src="jquery-3.7.1.min.js"></script> 
    <script type="text/javascript">
        window.onload=function() 
{ 
$("a").on("click", { value: "Ссылка" }, myF); 
function myF (event)
{ 
alert("Это "+event.data.value); 
alert("Положение курсора по X: "+event.pageX+" \nПоложение курсора по Y: "+event.pageY) ;
}; 
} 
    </script>
    <style type="text/css">
        #One
        {
            height:auto; 
            width:200px; 
            background-color:#CCE6E3; 
            border:2px solid #09F;
             font-size:16px; 
             float:left; 
        }
        #Two
        {
            height: auto;
             width:200px;
            background-color:#F8A998;
            border:2px solid #C00; 
            font-size:16px; 
             float: left;
             margin-left:10px; 
        }
        span,h2
        {
            display: block;
             margin:10px; 
        }
    </style>
</head>
<body>
    <a href="#">Ссылка</a> 
</body>
</html>
