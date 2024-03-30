<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h2>API to fetch Users</h2>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Username</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody id="users"></tbody>
    </table>

    <script src="Script/jQuery.min.js"></script>

    <script>
        $(function () {
            url: 'https://jsonplaceholder.typicode.com/users/users',
                type: 'get',
                success: functon(response) {
                //alert('call success');

                var trs = '';
                for (var u of response) {
                    trs += `<tr>
                    <td>${u.id}</td>
                    <td>${u.name}</td>
                    <td>${u.username}</td>
                    <td>${u.email}</td>
                    </tr>`;
                }
                $('#users').html(trs);
            },
            error: function (error) {
                alert('call failed');
                }
            });
        });
    </script>
</body>
</html>
