<%@page contentType="text/html" import="java.util.*, java.text.*" pageEncoding="utf-8"%>
<html>
    <head>
        <title>IMC</title>
        <meta charset="utf-8">
    </head>
    <body>
        <%
            float peso = Float.parseFloat(request.getParameter("peso"));
            float altura = Float.parseFloat(request.getParameter("altura"));
            String escolha = request.getParameter("escolha");
            float resultado = 0;
            out.print("Calculadora de IMC");

            if (escolha.equals("mas")) {
                resultado = peso / (altura * altura);
                out.print("<br/> O seu IMC é de " + resultado);
                
                if (resultado < 20) {
                    out.print("<br/> Você está abaixo do peso");
                } else if (resultado >= 20 && resultado <= 25) {
                    out.print("<br/> Você está com o peso normal");
                } else if (resultado > 25 && resultado <= 30) {
                    out.print("<br/> Você está acima do peso");
                } else {
                    out.print("<br/> Você está na obesidade");
                }
            } else if (escolha.equals("fem")) {
                resultado = peso / (altura * altura);
                out.print("<br/> O seu IMC é de " + resultado);
                if (resultado < 19) {
                    out.print("<br/> Você está abaixo do peso");
                } else if (resultado >= 19 && resultado <= 24) {
                    out.print("<br/> Você está com o peso normal");
                } else if (resultado > 24 && resultado <= 30) {
                    out.print("<br/> Você está acima do peso");
                } else {
                    out.print("<br/> Você está na obesidade");
                }
            } else {
                out.print("<br/> Escolha não válida");
            }
        %>
    </body>
</html>
