<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <script src="Script/jQuery.min.js"></script>
</head>
<body>
    <h2>Event Demo</h2>

    <input type="button" value="Click Me!!!" id="btn" />
    <script>
        $(function () {
            /*  $('#btn').click(function () {
                  $(this).hide();
              });*/

            /* $('#btn').mouseenter(function () {
                 $(this).css('background-color', 'red');
             });
             $('#btn').mouseleave(function () {
                     $(this).css('background-color', 'gray');
             });*/

            //Hover function

            /* $('#btn').hover(function () {
                 $(this).css('color', 'red');
             }, function () {
                 $(this).css('color', 'black')
             });*/

            //on function
            /*  $('#btn').on('click', function () {
                  $(this).hide();
              });*/

            $('#btn').on({
                click: function () { $(this).hide(); },
                mouseenter: function () {
                    $(this).css('color', 'green');
                },
                mouseleave: function () {
                    $(this).css('color', 'black');
                }
            });
        });
    </script>
</body>
</html>
