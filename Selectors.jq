<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h1 class="yellow" name="heading">Selectors Demo</h1>
    <input type="button" value="Click Me!!!" id="btn" />

    <p>First Paragraph</p>
    <p class="yellow" name="second">Second Paragraph</p>
    <p class="yellow">Third Paragraph</p>

    <div>
        <p>Fourth Paragrph [Inside Div]</p>
    </div>

    <ul>
        <li>Tea</li>
        <li>Coffee</li>
        <li>Milk</li>
    </ul>
    <ul>
        <li>Wada pav</li>
        <li>Samosa</li>
        <li>Idli</li>
    </ul>

    <table border="1">
        <tr>
            <td>101</td>
            <td>Aniket</td>
            <td>Satara</td>
        </tr>
        <tr>
            <td>102</td>
            <td>Abhi</td>
            <td>Pune</td>
        </tr>
        <tr>
            <td>103</td>
            <td>Ravi</td>
            <td>Satara</td>
        </tr>
        <tr>
            <td>104</td>
            <td>Shruti</td>
            <td>Pune</td>
        </tr>
        <tr>
            <td>105</td>
            <td>Rushi</td>
            <td>Satara</td>
        </tr>
    </table>

    <script src="Script/jQuery.min.js"></script>
    <script>
        $(function () {
            $('#btn').click(function () {
               // $('p').css('background-color', 'pink');
               // $('.yellow').css('background-color', 'yellow');
               // $('p.yellow').css('background-color', 'yellow');
                //$('div p').css('background-color', 'yellow');
                //$('p:first').css('background-color', 'yellow');
                //$('p:last').css('background-color', 'yellow');
               // $('p:eq(1)').css('background-color', 'yellow');
                //$(this).css('background-color', 'yellow');
               // $('*').css('background-color', 'yellow');
               // $('[name]').css('background-color', 'yellow');
                //$('[name="heading"]').css('background-color', 'yellow');
               // $('tr').css('background-color', 'yellow');
                //$('tr:odd').css('background-color', 'yellow');
               // $('tr:even').css('background-color', 'red');
               // $('li:first').css('background-color', 'red');
                $('li:first-child').css('background-color', 'red');
            });
        });
    </script>
</body>
</html>
