<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <script src="Script/jQuery.min.js"></script>
    <script>
        // document.getElementById('heading').style.color = 'red';

        //ready fumction syntax 1
        //$(document).ready(function () {
          //  document.getElementById('heading').style.color = 'red';
        //});

        //$(function () {
            //document.getElementById('heading').style.color = 'red';
          //  document.getElementById('heading').style.background = 'yellow';
        //});

       // $.noConflict(); //jQuery will not support $

        $(function () {
            $('#heading').css('color', 'white');
            $('#heading').css('background-color', 'red');
        });

      /*  jQuery(function () {
            jQuery('#heading').css('color', 'white');
            jQuery('#heading').css('background-color', 'green');
        });*/

/*      Aniket = $.noConflict();

        Aniket(function () {
            Aniket('#heading').css('color', 'white');
            Aniket('#heading').css('background-color', 'pink');
        });*/

    </script>
</head>
<body>
    <h2 id="heading">JQuery Introduction</h2>

</body>
</html>
