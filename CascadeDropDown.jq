<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style>
        select{
            width:220px;
            height:40px;
        }
    </style>
</head>
<body>
    <h2>Cascading Dropdown Demo</h2>
    
    <table>
        <tr>
            <td>Country</td>
            <td>
                <select id="country">
                    <option value="-1">-- Select Country --</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>State</td>
            <td>
                <select id="state" disabled>
                    <option value="-1">-- Select State --</option>
                    </select>
                </td>
            </tr>
        <tr>
            <td>City</td>
            <td>
                <select id="city" disabled>
                    <option value="-1">-- Select City --</option>
                    </select>
                </td>
            </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="Show Location" id="btn" />
                </td>
            </tr>
        <tr>
            <td colspan="2">
                <textarea rows="5" cols="100" id="location"></textarea>
            </td>
         </tr>
    </table>

    <script src="Script/jQuery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

        <script>
            $(function () {

        $('#country').select2();
        $('#state').select2();
        $('#city').select2();

        $('#btn').click(function () {
            var country = $('#country').val();
            var state = $('#state').val();
            var city = $('#city').val();

            var location = `Selected Country : ${country}\nSelected State : ${state}\nSelected City : ${city}`;

            $('#location').val(location);
        });

        $.ajax({
            url: 'https://api.countrystatecity.in/v1/countries',
            type: 'get',
            headers: {
                'X-CSCAPI-KEY': 'M2NIU2twTjR6a2xpa0M4MWROc05OdTR1NlNmZXpaMWJIMjFLdGhWcg=='
            },
            success: function (response) {
                var options = '';
                for (var c of response) {
                    options += `<option value="${c.iso2}">${c.name}</option>`;
                }
                $('#country').append(options);
            },
            error: function (error) {
                alert('country api call failed.');
            }
        });

                $('#country').change(function () {


                    $('#state').prop('disabled', false);
                    $('#state').html('<option value="-1">-- Selected State --</option>');

            var countryCode = $(this).val();

                    $.ajax({
                        url: `https://api.countrystatecity.in/v1/countries/${countryCode}/states`,
                        type: 'get',
                        headers: {
                            'X-CSCAPI-KEY': 'M2NIU2twTjR6a2xpa0M4MWROc05OdTR1NlNmZXpaMWJIMjFLdGhWcg=='
                        },
                        success: function (response) {
                            var options = '';
                            for (var c of response) {
                                options += `<option value="${c.iso2}">${c.name}</option>`;
                            }
                            $('#state').append(options);
                        },
                        error: function (error) {
                            alert('states api call failed.');
                        }
                    });
                });
                $('#state').change(function () {



                    $('#city').prop('disabled', false);
                    $('#city').html('<option value="-1">-- Selected State --</option>');

                    var stateCode = $(this).val();
                    var countryCode = $('#country').val();

                    $.ajax({
                        url:` https://api.countrystatecity.in/v1/countries/${countryCode}/states/${stateCode}/cities`,
                        type: 'get',
                        headers: {
                            'X-CSCAPI-KEY': 'M2NIU2twTjR6a2xpa0M4MWROc05OdTR1NlNmZXpaMWJIMjFLdGhWcg=='
                        },
                        success: function (response) {
                            var options = '';
                            for (var c of response) {
                                options += ` <option value="${c.name}">${c.name}</option>`;
                            }
                            $('#city').append(options);
                        },
                        error: function (error) {
                            alert('city api call failed.');
                        }
                    });

                });
    });
    </script>

</body>
</html>
