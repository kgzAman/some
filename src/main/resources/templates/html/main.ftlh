<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/main">Главная</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link" href="/addFlight">Зарегистрировать рейс</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" style="margin-right: auto">
            <input class="form-control mr-sm-2" type="search" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <#if user??>
        <#else>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link" href="/login"></a>
                <button type="button" class="btn btn-link">выход</button>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/registration"></a>
                <button type="button" class="btn btn-link">Регистрация</button>
            </li>
        </ul>
        </#if>
    </div>
</nav>
<div class="list">

    <#list flights as flight>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th scope="col">рейс</th>
            <th scope="col">Дата регистрации</th>
            <th scope="col">Компания </th>
            <th scope="col">Зарегистрированно билетов</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${flight.numberOfFlight}</td>
            <td>${flight.localDateTime}</td>
            <#list flight.Company as company>
            <td>${company}</td>
            <td>${company.tiket}</td>
            </#list>
        </tr>

        </tbody>
    </table>
    </#list>
</div>
</body>
</html>

</body>
</html>