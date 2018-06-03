<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 31/05/2018
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:template>

    <form action='<spring:url value="/"/>' method="get">
        <button class="btn btn-md btn-warning btn-block" type="Submit">Login Page</button>
    </form>

    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <form:form action='/registration/ADMIN' modelAttribute="user" method="post" class="form-horizontal" role="form">
                    <h2>Registration Form</h2>
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


</t:template>

