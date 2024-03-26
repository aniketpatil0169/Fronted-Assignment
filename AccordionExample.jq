<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accordion Example</title>
    <style>
        .accordion {
            max-width: 800px;
            margin: auto;
        }

        .accordion-item {
            margin-bottom: 10px;
        }

        .accordion-header {
            background-color: deeppink;
            color: #fff;
            padding: 10px;
            cursor: pointer;
        }

        .accordion-content {
            display: none;
            padding: 10px;
            background-color: yellow;
        }
    </style>
</head>
<body>

    <div class="accordion">
        <div class="accordion-item">
            <div class="accordion-header">Section 1</div>
            <div class="accordion-content">
                <p>Content for section 1 goes here.</p>
            </div>
        </div>
        <div class="accordion-item">
            <div class="accordion-header">Section 2</div>
            <div class="accordion-content">
                <p>Content for section 2 goes here.</p>
            </div>
        </div>
        <div class="accordion-item">
            <div class="accordion-header">Section 3</div>
            <div class="accordion-content">
                <p>Content for section 3 goes here.</p>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.accordion-header').click(function () {
                $(this).next('.accordion-content').slideToggle();
            });
        });
    </script>

</body>
</html>
