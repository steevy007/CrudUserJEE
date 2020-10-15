<%-- 
    Document   : index
    Created on : 2020-10-13, 17:01:37
    Author     : Sanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file="/view/partial/_css.jsp" %>
        <title>CrudJEE | Home</title>
    </head>
    <body>
        <%@include  file="/view/partial/_menu.jsp" %>
        <br>
    <center><h1>Listes Des Personne</h1></center>
    <br>
    <div class="container">
        <table id="dt-vertical-scroll" class="table" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th class="th-sm">ID
                    </th>
                    <th class="th-sm">NOM
                    </th>
                    <th class="th-sm">PRENOM
                    </th>
                    <th class="th-sm">Age
                    </th>
                    <th class="th-sm">Adresse
                    </th>
                    <th>
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="personne" items="${ personnes }">
                    <tr>
                        <td><c:out value="${ personne.id }" /></td>
                        <td><c:out value="${ personne.nom }"/></td>
                        <td><c:out value="${ personne.prenom }"/></td>
                        <td><c:out value="${ personne.age }"/></td>
                        <td><c:out value="${ personne.adresse }"/></td>
                        <td>
                            <a href="/CrudUser/Edit?ID=<c:out value="${ personne.id }" />"><i class="far fa-edit"></i></a> &nbsp;
                            <a href="/CrudUser/Delete?ID=<c:out value="${ personne.id }"/>"><i class="fas fa-trash"></i></a>
                        </td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <c:if test="${ request.getServletPath()=='/Index' }" >Se Index</c:if>
    </div>
    <%@include  file="/view/partial/_js.jsp" %>

    <script>
        $(document).ready(function () {
            $('#dt-vertical-scroll').dataTable({
                "paging": false,
                "fnInitComplete": function () {
                    var myCustomScrollbar = document.querySelector('#dt-vertical-scroll_wrapper .dataTables_scrollBody');
                    var ps = new PerfectScrollbar(myCustomScrollbar);
                },
                "scrollY": 450,
            });
        });

    </script>
</body>
</html>
