<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h2>Send Email</h2>

    <table>
        <tr>
            <td>Email Address</td>
            <td>
                <input type="text" id="email" />
            </td>
        </tr>
        <tr>
            <td>Email Subject</td>
            <td>
                <textarea id="subject"></textarea>
            </td>
        </tr>
        <tr>
            <td>Email Body</td>
            <td>
                <textarea rows="10" cols="100" id="body"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <input type="button" value="Send Email" id="btn" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <label id="result" style="color:red;"></label>
            </td>
        </tr>
    </table>

    <script src="Scripts/jQuery.min.js"></script>

    <script>

        $(function () {

            $('#btn').click(function () {
                var email = $('#email').val();
                var subject = $('#subject').val();
                var body = $('#body').val();

                var jsObj = {
                    ToEmail: email,
                    EmailSubject: subject,
                    EmailBody: body,
                    IsBodyHtml: true
                };
                $.ajax({
                    url: 'http://113.193.63.106:4050/api/email',
                    type: 'POST',
                    data: JSON.stringify(jsObj),
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (response) {
                        $('#result').text('Email sent successfully');
                    },
                    error: function (error) {
                        $('#result').text('Email sent failed');
                    }
                });
            });

            function generateOTP() {
                var otp = Math.floor(1000 + Math.random() * 9000);
                console.log(otp.toString()); 
            }
            setInterval(generateOTP, 3000);
        });


    </script>

</body>
</html>
