<%-- 
    Document   : edit
    Created on : 2020-10-14, 23:23:34
    Author     : Sanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file="/view/partial/_css.jsp" %>
        <title>CrudJEE | Edit</title>
    </head>
    <body>
        <%@include  file="/view/partial/_menu.jsp" %>
        <br>
    <center><h1>Modifier Une Personne</h1></center>
    <br>
    <div class="container">
        <!-- Material form subscription -->
        <div class="card">

            <h5 class="card-header info-color white-text text-center py-4">
                <strong>Modifier Une Personne</strong>
            </h5>

            <!--Card content-->
            <div class="card-body px-lg-5">

                <!-- Form -->
                <form method="POST" class="text-center" style="color: #757575;" action="Edit">

                    <!-- Name -->
                    <div class="md-form mt-3">
                        <input type="text" value="${ personne.nom }" id="nom" name="nom" class="form-control">
                        <label for="nom">Nom</label>
                    </div>
                    <div class="md-form mt-3">
                        <input type="text" value="${ personne.prenom }" id="prenom" name="prenom" class="form-control">
                        <label for="nom">Prenom</label>
                    </div>
                    <div class="md-form mt-3">
                        <input type="number" value="${ personne.age }" id="age" name="age" class="form-control">
                        <label for="nom">Age</label>
                    </div>
                    <!-- E-mai -->
                    <div class="md-form">
                        <input type="text" value="${ personne.adresse }" id="adresse" name="adresse" class="form-control">
                        <label for="adresse">Adresse</label>
                    </div>
                        
                        <input type="hidden" value="${ personne.id }" id="id" name="id" >

                    <span><i>
                            <c:choose>
                                <c:when test="${ empty reponse }"> *** Veuillez Remplir tout les champs correctement </c:when>
                                <c:otherwise>${ reponse }</c:otherwise>
                            </c:choose>
                        </i></span>
                    <br>

                    <!-- Sign in button -->
                    <button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit">Modifier</button>

                </form>
                <!-- Form -->

            </div>
            
        </div>
        <!-- Material form subscription -->
    </div>
    
    <%@include  file="/view/partial/_js.jsp" %>
</body>
</html>
