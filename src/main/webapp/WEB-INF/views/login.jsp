<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 28/05/2018
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:template>

    <form action='<spring:url value="/registration"/>' >
        <button class="btn btn-md btn-warning btn-block" type="Submit">Go To Registration Page</button>
    </form>

    <div class="container">


<form action='<spring:url value="/login"/>' method="post"class="form-signin">
    <h3 class="form-signin-heading" >Authentification</h3>
    <br/>
    <input type="text" id="email" name="email"  placeholder="Email"
           class="form-control" /> <br/>
    <input type="password"  placeholder="Password"
           id="password" name="password" class="form-control" /> <br />
    <c:if test="${not empty param.error }">
    <div align="center" >
        <p style="font-size: 20px; color: #FF1C19;">Email or Password invalid, please verify</p>
    </div>
    </c:if>
    <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit" >Login</button>

</form>
    </div>
<br/>

</t:template>