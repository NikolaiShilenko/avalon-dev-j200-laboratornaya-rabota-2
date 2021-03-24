<%-- 
    Document   : index
    Created on : Mar 21, 2021, 8:57:31 PM
    Author     : Nikolai Shilenko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
        <style>
            body {
                background: #597da3;
            }
            #box {
                background: #c0d3e2;
                position: absolute;
                margin: auto;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                padding: 20px;
                width: 200px;
                height: 200px;
                border: inset grey 1px;
            }
        </style>
    </head>
    <body>
        <div id = box>
            <form action='Calculator'>
                <table>
                    <tr>
                        <b>Enter two integers<b>
                    </tr>
                    <tr>
                        <td><input type='text' name='num1' size='12'></td>
                    </tr>
                    <tr>
                        <td><input type='text' name='num2' size='12'></td>
                    </tr>
                    <tr>
                        <td>
                            <input type='submit' name='sum' formmethod='GET' size='12' value='+'>                 
                            <input type='submit' name='mul' formmethod='POST' size='12' value='x'>
                            <input type='reset' value='c'>
                        </td>
                    </tr>
                    <tr>
                        <%if (request.getAttribute("result") != null) {%>
                        <td><output name="result"><b><big><%= request.getAttribute("result")%></big></b></output</td>
                                        <% } else { %>
                        <td><output name="result"><b><big></big></b></output</td>
                                        <% }%>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
