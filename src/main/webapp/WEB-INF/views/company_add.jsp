<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 03/05/2018
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<t:template>

    <div class="box box-primary">
    <div class="box-header with-border">
    <i class="fa fa-user-plus"></i> <span><h3 class="box-title">Ajout d'un employeur</h3></span>
    </div>
    <!-- /.box-header -->

    <form:form role="form" method="POST" action="/employee/addEmployee" modelAttribute="company">
        <div class="box-body">
        <!-- text input -->
        <div class="form-group">
        <form:label path="prenom">Nom de la Societé</form:label>
        <form:input path="prenom" type="text" class="form-control" placeholder="Enter ..."/>
        </div>
        </div>
        <div class="box-footer">
            <button type="submit" class="btn btn-lg btn-success pull-right">Ajouter</button>
        </div>
    </form:form>

    </div>


</t:template>
