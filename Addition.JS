<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h2>Add Two Numbers</h2>
    <table>
        <tr>
            <td>First Number</td>
            <td>
                <input type="text" id="first" />
            </td>
        </tr>
        <tr>
            <td>Second Number</td>
            <td>
                <input type="text" id="second" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="Add Two Numbers" onclick="add()" />
            </td>
        </tr>
        <tr>
            <td>Result</td>
            <td>
                <input type="text" id="result" />
            </td>
        </tr>
    </table>

    <script>
        function add() {
            var first = document.getElementById('first').value;
            var second = document.getElementById('second').value;

            if (first == '' || second == '') {
                alert('Please enter input numbers');
                return;
            }
            else if (isNaN(first) || isNaN(second)) {
                alert('Please enter valid input numbers');
                return;
            }
            var result = parseInt(first) + parseInt(second);

            document.getElementById('result').value = result;
            var a;
            console.log(a);
        }
    </script>
</body>
</html>
