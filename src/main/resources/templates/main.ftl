<#macro page>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">

    <title>Todo</title>
</head>
<body>

<div class="container d-flex justify-content-center my-5">
    <div class="col"></div>
    <div class="col-sm-8">
        <#nested>
    </div>
    <div class="col"></div>
</div>
</body>
</html>
</#macro>