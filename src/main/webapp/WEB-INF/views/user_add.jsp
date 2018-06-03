<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 30/05/2018
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Select2 -->
<link rel="stylesheet" href="/template/bower_components/select2/dist/css/select2.min.css">

<t:template>

    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <form:form action='/user/addUser' modelAttribute="user" method="post">
                    <h2>Ajout d'un utilisateur</h2>

                    <!-- select input -->
                    <div class="form-group">
                        <form:label path="roles">Role</form:label>
                        <form:select path="roles" class="form-control select2" >
                            <form:option value="1" label="Administrateur"/>
                            <form:option value="2" label="Utilisateur"/>
                        </form:select>

                    </div>

                    <div class="form-group">
                        <div class="col-sm-9">
                            <label >Prenom</label>
                            <form:input path="name" type="text" class="form-control" placeholder="Enter ..." required="required"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-9">
                            <label>Nom</label>
                            <form:input path="lastName" type="text" class="form-control" placeholder="Enter ..." required="required"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-9">
                            <label>Email</label>
                            <form:input path="email" type="text" class="form-control" placeholder="Enter ..." required="required"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-9">
                            <label>Mot de passe</label>
                            <form:input path="password" type="password" class="form-control" placeholder="Enter ..." required="required"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-9">
                            <button type="submit" class="btn btn-primary btn-block">Enregistrer Utilisateur</button>
                        </div>
                    </div>

                    <span ><c:out value="${successMessage}"/></span>


                </form:form>
            </div>
        </div>
    </div>

    <!-- Select2 -->
    <script src="/template/bower_components/select2/dist/js/select2.full.min.js"></script>
</t:template>
