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
<!-- Select2 -->
<link rel="stylesheet" href="/template/bower_components/select2/dist/css/select2.min.css">
<!-- datepicker -->
<link rel="stylesheet" href="/template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">


<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>

<div class="box box-primary">
    <div class="box-header with-border">
        <i class="fa fa-user-plus"></i> <span><h3 class="box-title">Ajout d'un employé</h3></span>
        <button type="button" class="btn btn-success pull-right" onclick="location.href='/employee/list';"><i class="fa fa-arrow-left"></i></button>

    </div>
    <!-- /.box-header -->

<form:form role="form" method="POST" action="/employee/addEmployee" modelAttribute="employee">
    <div class="box-body">
        <form:hidden id="salaireH" path="salaireH"/>
        <!-- select input -->
        <div class="form-group">
            <form:label path="poste">Société</form:label><br>
            <form:select path="company" class="form-control select2" id="company" onchange="getSalary();">
                <c:forEach var="cmp" items="${companies}">
                <form:option value="${cmp}" label="${cmp.nom}"/>
                </c:forEach>
            </form:select>
        </div>
        <!-- text input -->
        <div class="form-group">
            <form:label path="prenom">Prenom</form:label>
            <form:input path="prenom" type="text" class="form-control" placeholder="Enter ..." required="required"/>
        </div>
        <!-- text input -->
        <div class="form-group">
            <form:label path="nom">Nom</form:label>
            <form:input path="nom" type="text" class="form-control" placeholder="Enter ..." required="required"/>
        </div>
        <!-- Date -->
        <div class="form-group">
            <form:label path="dateNaiss">Date Naissance</form:label>
            <div class="input-group date">
                <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                </div>
                <form:input path="dateNaiss" type="text" class="form-control pull-right datepicker"/>
            </div>
        </div>
        <!-- Date -->
        <div class="form-group">
            <form:label path="dateRecrutement">Date de recrutement</form:label>
            <div class="input-group date">
                <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                </div>
                <form:input path="dateRecrutement" type="text" class="form-control pull-right datepicker" />
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
                <form:option value="marie" label="Marié"/>
                <form:option value="celibataire" label="Celibataire"/>
            </form:select>
        </div>
        <!-- text input -->
        <div class="form-group">
            <form:label path="nEnfants">Nbr Enfants</form:label>
            <form:input path="nEnfants" type="number" value="0" min="0" max="20" class="form-control" placeholder="Enter ..."/>
        </div>
        <!-- select input -->
        <div class="form-group boulangerie has-success" >
            <form:label path="poste">Poste</form:label>
            <form:select path="poste" class="form-control select2" onchange="getSalary();" id="poste" >
                <form:option value="1" label="Administration" selected="selected"/>
                <form:option value="2" label="Passeur de planche"/>
                <form:option value="3" label="Peseur"/>
                <form:option value="4" label="Paitresseur"/>
                <form:option value="5" label="Maitre de pelle"/>
            </form:select>
        </div>
        <!-- text input -->
        <div class="form-group boulangerie has-success">
            <form:label path="grade">Grade</form:label>
            <form:input path="grade" type="number" value="1" min="0" max="13" class="form-control" placeholder="Enter ..." id="grade" onkeyup="getSalary();" onchange="getSalary();"/>
        </div>
        <!-- text input -->
        <div class="form-group boulangerie r_admin has-success" >
            <form:label path="r_admin">Categorie admin</form:label>
            <form:input path="r_admin" type="number" value="1" min="1" max="8" class="form-control" placeholder="Enter ..." id="r_admin" onkeyup="getSalary();" onchange="getSalary();"/>
        </div>

        <!-- text input -->
        <div class="form-group">
            <form:label path="posteName">Nom de la Poste</form:label>
            <form:input path="posteName" type="text" class="form-control" placeholder="poste" id="poste_name" />
        </div>
        <!-- text input -->
        <div class="form-group">
            <form:label path="salaire">Salaire</form:label>
            <form:input id="salary" path="salaire" type="number" step="0.001" class="form-control" placeholder="Enter ..." required="required"/>
        </div>
        <!-- text input -->
        <div class="form-group">
            <form:label path="cnss">CNSS</form:label>
            <form:input path="cnss" type="text" class="form-control" placeholder="Enter ..." required="required"/>
        </div>


    </div>
    <div class="box-footer">
        <button class="btn btn-lg btn-success pull-right">Ajouter</button>
    </div>
</form:form>

</div>


    <!-- bootstrap datepicker -->
    <script src="/template/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

    <script>

        $(function () {
            //Date picker
            $('.datepicker').datepicker({
                autoclose: true ,format: 'dd/mm/yyyy'
            })

        });

        getSalary();

        function setPostName() {
            var poste = document.getElementById("poste") ;
            var poste_name = document.getElementById("poste_name") ;
            poste_name.value =  poste.options[poste.selectedIndex].innerHTML;
        }

        function getSalary() {
            var comp = document.getElementById("company");
            var company = comp.options[comp.selectedIndex].innerHTML.toLowerCase() ;

            if (company.includes("boulangerie")){

                $('.boulangerie').show() ;

                var poste = document.getElementById("poste").value ;
                var grade = document.getElementById("grade").value ;
                var admin = document.getElementById("r_admin").value ;

                if(poste == 1){
                    $('.r_admin').show() ;
                    admin = document.getElementById("r_admin").value ;
                }
                else{
                    $('.r_admin').hide() ;
                    admin = 0 ;
                }


                setPostName();
                console.log("c "+company+" p "+poste+" g "+grade+" a "+admin);
                $.ajax({url: "/api/getSalary/"+poste+"/"+grade+"/"+admin , success: function(result){
                    document.getElementById("salary").value = result['salaire'];
                    document.getElementById("salaireH").value = result['heure'];
                }});
            }else{
                $('.boulangerie').hide() ;
            }


        }

    </script>

</t:template>