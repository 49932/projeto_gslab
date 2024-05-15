<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Utilizador</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="content text-center">
            <h1>Selecione o utilizador que quer eliminar</h1>

            <%
            ArrayList<String> utilizadores = (ArrayList<String>) request.getAttribute("utilizadores");
            %>

            <div class="select-container">
                <form action="EliminarUtilizador" method="post" accept-charset="UTF-8">
                    <div class="form-group d-flex justify-content-center">
                        <label for="Utilizador" class="mr-2">Utilizador:</label>
                        <select id="Utilizador" name="Utilizador" class="form-control" style="width: 300px;">
                            <option value="" selected disabled hidden></option>

                            <%
                            if(utilizadores != null){
                                for (int i = 0; i < utilizadores.size(); i++) {
                                    String utilizador = utilizadores.get(i);
                            %>
                                    <option value="<%=utilizador%>"><%=utilizador%></option>
                            <%	
                                }
                            }
                            %>
                        </select>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Eliminar Sala">
                </form>
            </div>
            
        </div>
    </div>
</body>
</html>
