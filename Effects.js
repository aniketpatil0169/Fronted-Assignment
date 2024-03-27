<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <script src="Script/jQuery.min.js"></script>
    <style>
        #div1 {
            background-color:red;
            width:50%;
            padding:20px 0 20px 10px;
            height:150px;
            border:2px solid black;
            border-radius: 10px;
            display:none;
        }

        button {
        width:50%;
        }
    </style>
</head>
<body>
    <h2>Effects Demo</h2>

    <button>Click Me!!! </button> <br /><br />
    <div id="div1">
        jQuery is a Javascript Library. <br />

        jQuery greatly simplifies Javascript Programming. <br />

        jQuery is easy to learn.
    </div>

    <script>
        $(function () {
            $('button').click(function () {
                //$('#div1').hide();
                //$('#div1').show();
               // document.getElementById('div1').style.display = 'block';
               // $('#div1').toggle();

              /*  $('#div1').show(1000, function () {
                    alert('show effect completed');
                });*/

               //Fade in fade out

               // $('#div1').fadeIn(10000);
              //  $('#div1').fadeOut(10000);
                //$('#div1').fadeToggle();
              /*  $('#div1').fadeTo(1000, function () {
                    alert('effect completed..');
                }, 0.5);*/

              /*  $('#div1').fadeTo(1000, 0.2);
                alert('Effect Completed...');*/

                // slide down, up, toogle

               // $('#div1').slideDown(2000);
               // $('#div1').slideUp(2000);
               // $('#div1').slideToggle(2000);
               /* $('#div1').slideToggle(2000, function () {
                    $('button').hide();
                });*/


                // Animate Function
/*                $('#div1').animate({ width: '+=100px' });
                $('#div1').animate({ height: '+=100px' });
                $('#div1').animate({ width: '-=100px' });
                $('#div1').animate({ height: '-=100px' });
*/
             /*   $('#div1').animate({
                    marginLeft: '200px',
                    width: '+=200px',
                    fontsize: '28px',
                    backgroundColor: "lightgreen"
                });*/

               // $('#div1').slideUp(5000);
                // setInterval(stopAnimate, 2000);

              /*  $('#div1').slideDown(3000);
                $('#div1').css('background-color', 'skyblue');
                $('#div1').slideUp(3000);
                $('#div1').slideDown(3000);*/

                $('#div1').slideDown(3000)
                .css('background-color', 'skyblue')
                .slideUp(3000)
                .slideDown(3000);

            });
            function stopAnimate() {
                $('#div1').stop();
            }
            });

    </script>

</body>
</html>
