<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Verificador de Palíndromos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-oV6azvdOMT2Tix1Dmn9c1zDnpK9yjqJfJ1M2dI6e2C2Og9qKg6D6gjDq24F4/wBF" crossorigin="anonymous">
    <style>
        body {
            background-color: #fffcef;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 100px;
        }
        .card {
            width: 500px;
            margin: auto;
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
        }
        .card-header {
            background-color: #c791ff;
            color: #fff;
            text-align: center;
            font-size: 24px;
            border-bottom: 1px solid #dee2e6;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn-primary {
            width: 100%;
            background-color: #bd8fff;
            border-color: #8c00ff;
        }
        .btn-secondary {
            width: 100%;
            background-color: #6c757d;
            border-color: #6c757d;
        }
        .result {
            margin-top: 30px;
            text-align: center;
        }
        .result h2 {
            color: #c471ff;
            margin-bottom: 20px;
        }
        .result h3 {
            color: #28a745;
        }
        .result p {
            font-size: 24px;
            font-weight: bold;
            color: #dca235;
        }
        .result table {
            width: 300px;
            margin: auto;
            border: 2px solid #fffb3c;
            border-radius: 0.25rem;
        }
        .result th, .result td {
            padding: 10px;
            text-align: center;
        }
        .result th {
            background-color: #ffc13c;
            color: #ffffff;
        }
        .result td {
            background-color: #ffd49c;
        }
        .subtitle {
            font-size: 18px;
            color: #6c757d;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card">
        <div class="card-header">
            <h1>Verificador de Palíndromos</h1>
        </div>
        <div class="card-body">
            <div class="subtitle">
                Ingresa una palabra o frase y descubre si es un palíndromo.
            </div>
            <form method="post">
                <div class="form-group">
                    <label for="inputPalabra">Ingrese una palabra o frase:</label>
                    <input type="text" class="form-control" id="inputPalabra" name="inputPalabra" required>
                </div>
                <button type="submit" class="btn btn-primary">Verificar</button>
            </form>
            <%
                String inputPalabra = request.getParameter("inputPalabra");

                if (inputPalabra != null) {
                    // Eliminar espacios y caracteres especiales, convertir a minúsculas
                    String cleanInput = inputPalabra.replaceAll("[^a-zA-Z]", "").toLowerCase();

                    String reverseInput = new StringBuilder(cleanInput).reverse().toString();

                    boolean esPalindromo = cleanInput.equals(reverseInput);
            %>

            <div class="result">
                <h2>Resultado</h2>
                <h3>¿Es palíndromo?</h3>
                <p><%= esPalindromo ? "Sí" : "No" %></p>

                <table class="table">
                    <tr>
                        <th>Palabra o Frase</th>
                        <th>Es Palíndromo</th>
                    </tr>
                    <tr>
                        <td><%= inputPalabra %></td>
                        <td><%= esPalindromo ? "Sí" : "No" %></td>
                    </tr>
                </table>
            </div>

            <%
                }
            %>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-oV6azvdOMT2Tix1Dmn9c1zDnpK9yjqJfJ1M2dI6e2C2Og9qKg6D6gjDq24F4/wBF" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-QWmV+xjFpMQ/lJ7GOOwFtk9JGoYgO4Cn6R/m9P/hMWQ5UqZBSbljFeFtg0jP0brD" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-8gYFvpiXab4b3FG1Up4Wnl6au8fJf9lOJm1uNBf8LJVNqgYYl0lfiHFl8u1Pg3ys" crossorigin="anonymous"></script>

</body>
</html>
