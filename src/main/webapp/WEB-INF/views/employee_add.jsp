<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 10/04/2018
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-15" pageEncoding="ISO-8859-15"%>

<!-- bootstrap datepicker -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="/template/plugins/iCheck/all.css">
<!-- Select2 -->
<link rel="stylesheet" href="/template/bower_components/select2/dist/css/select2.min.css">
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>
<link rel="stylesheet" href="/template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

<div class="box box-primary">
    <div class="box-header with-border">
        <i class="fa fa-user-plus"></i> <span><h3 class="box-title">Ajout d'un employeur</h3></span>
    </div>
    <!-- /.box-header -->

<form:form role="form" method="POST" action="/employee/addEmployee" modelAttribute="employee">
    <div class="box-body">
        <!-- select input -->
        <div class="form-group">
            <form:label path="poste">Soci�t�</form:label><br>
            <form:select path="company" class="form-control select2" id="company">
                <c:forEach var="cmp" items="${companies}">
                <form:option value="${cmp}" label="${cmp.nom}"/>
                </c:forEach>
            </form:select>
        </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="prenom">Prenom</form:label>
                <form:input path="prenom" type="text" class="form-control" placeholder="Enter ..."/>
            </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="nom">Nom</form:label>
                <form:input path="nom" type="text" class="form-control" placeholder="Enter ..."/>
            </div>
            <!-- Date -->
            <div class="form-group">
                <form:label path="dateNaiss">Date Naissance</form:label>
                <div class="input-group date">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <form:input path="dateNaiss" type="text" class="form-control pull-right" id="datepicker"/>
                </div>
            </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="cin">CIN</form:label>
                <form:input path="cin" type="text" class="form-control" placeholder="Enter ..."/>
            </div>
            <!-- text select -->
            <div class="form-group">
                <form:label path="situation">Situation</form:label><br>
                <form:select path="situation" class="form-control select2" >
                    <form:option value="marie" label="Mari�"/>
                    <form:option value="celibataire" label="Celibataire"/>
                </form:select>
            </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="nEnfants">Nbr Enfants</form:label>
                <form:input path="nEnfants" type="number" value="0" min="0" max="20" class="form-control" placeholder="Enter ..."/>
            </div>
                <!-- select input -->
                <div class="form-group">
                    <form:label path="poste">Poste</form:label><br>
                    <form:input path="poste" type="text" class="form-control" value="1" placeholder="Enter ..." id="poste" onchange="getSalary()"/>

                </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="grade">Grade</form:label>
                <form:input path="grade" type="number" value="0" min="0" max="13" class="form-control" placeholder="Enter ..." id="grade" onchange="getSalary()"/>
            </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="salaire">Salaire</form:label>
                <form:input id="salary" path="salaire" type="number" class="form-control" placeholder="Enter ..."/>
            </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="r_admin">r_admin</form:label>
                <form:checkbox class="flat-red" path="r_admin" value="0" id="admin" onchange="getSalary()"/>
            </div>

            <!-- text input -->
            <div class="form-group">
                <form:label path="cnss">CNSS</form:label>
                <form:input path="cnss" type="text" class="form-control" placeholder="Enter ..."/>
            </div>


    </div>
    <div class="box-footer">
        <button type="submit" class="btn btn-lg btn-success pull-right">Ajouter</button>
    </div>
</form:form>

</div>




<!-- bootstrap datepicker -->
<script src="/template/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- iCheck 1.0.1 -->
<script src="/template/plugins/iCheck/icheck.min.js"></script>
    <!-- Select2 -->
<script src="/template/bower_components/select2/dist/js/select2.full.min.js"></script>

<script>

    function getSalary() {
        var comp = document.getElementById("company");
        var company = comp.options[comp.selectedIndex].innerHTML.toLowerCase() ;
        var poste = document.getElementById("poste").value ;
        var grade = document.getElementById("grade").value ;
        var admin = document.getElementById("admin").value ;

        if (admin==""){
            admin=0;
        }


        if (company.includes("boulangerie")){
            console.log("c "+company+" p "+poste+" g "+grade+" a "+admin)
            $.ajax({url: "/api/getSalary/"+poste+"/"+grade+"/"+admin , success: function(result){
                document.getElementById("salary").value = result['salaire'];
            }});
        }


    }

  $(function () {
      //Initialize Select2 Elements
      $('.select2').select2()
    //Date picker
    $('#datepicker').datepicker({
       autoclose: true ,format: 'dd/mm/yyyy'
         })
      //Flat red color scheme for iCheck
      $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass   : 'iradio_flat-green'
      })
     });
</script>

</t:template>