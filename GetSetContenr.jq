<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h2>Get Set Content Demo</h2>

    <table>
        <tr>
            <td>Name</td>
            <td>
                <input type="text" id="txt1" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <p id="p1">This is a paragraph text</p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="div1">
                    <span>Span Content</span>
                    <a href="http://www.google.com">Visit Google</a>
                </div>
            </td>
        </tr>
    </table>
    <hr />
    <input type="button" value="Get Content" id="btn1" />
    <hr />
    <textarea id="messages" rows="5" cols="70"></textarea>
    <hr />
    <input type="button" value="Set Content" id="btn2" />
    <table>
        <tr>
            <td>Name</td>
            <td>
                <input type="text" id="txt2" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <p id="p2"></p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="div2"></div>
            </td>
        </tr>
    </table>


    <script src="Scripts/jQuery.min.js"></script>
    <script>

        $(function () {

            // document.getElementById('messages').value = '';
            $('#messages').val('');

            $('#btn1').click(function () {
                var v1 = $('#txt1').val();
                var existingMessage = $('#messages').val();
                $('#messages').val(`${existingMessage} ${v1}\n`);

                v1 = $('#p1').text();
                existingMessage = $('#messages').val();
                $('#messages').val(`${existingMessage} ${v1}\n`);

                v1 = $('#div1').html();
                existingMessage = $('#messages').val();
                $('#messages').val(`${existingMessage} ${v1}\n`);
            });

            $('#btn2').click(function () {
                $('#txt2').val('Javascript Library');
                $('#p2').text('This is second Paragraph');
                $('#div2').html(`<span><b>Span</b> Content</span>
                    <a href='http://www.facebook.com'>Visit Facebook</a>
                    `);
            });
        });

    </script>
</body>
</html>
