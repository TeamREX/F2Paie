<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 16/05/2018
  Time: 11:47
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
            <i class="fa fa-user-plus"></i> <span><h3 class="box-title">Creation fiche de paie pour ${employee.prenom} ${employee.nom}</h3></span>
            <button type="button" class="btn btn-success pull-right" onclick="location.href='/employee/list';"><i class="fa fa-arrow-left"></i></button>

        </div>
        <!-- /.box-header -->

        <form:form role="form" method="POST" action="/ficheP/addFiche" modelAttribute="ficheP">
            <div class="box-body">

                <!-- text input -->
                <div class="form-group">
                    <form:label path="month">Mois</form:label>
                    <form:input path="month" type="number" value="1" min="1" max="12" class="form-control" placeholder="Entrer un mois"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="year">Annee</form:label>
                    <form:input path="year" type="number" value="2018" min="1950" max="2999" class="form-control" placeholder="Entrer une annee"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="baseSalary">Salaire de base</form:label>
                    <form:input id="baseSalary" path="baseSalary" type="number" value="${employee.salaire}" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="workedDays">Jours travaill�s</form:label>
                    <form:input id="workedDays" path="workedDays" type="number" value="22" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="extraDays">Jours feri�s travaill�s</form:label>
                    <form:input id="extraDays" path="extraDays" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="extraHours">Heures supplimentaires</form:label>
                    <form:input id="extraHours" path="extraHours" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="priceHoure">Prix/Heure</form:label>
                    <form:input id="priceHoure" path="priceHoure" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="accompte">Accompte</form:label>
                    <form:input id="accompte" path="accompte" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="primeTransport">Prime Transport</form:label>
                    <form:input id="primeTransport" path="primeTransport" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="primeCouffin">Prime Couffin</form:label>
                    <form:input id="primeCouffin" path="primeCouffin" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="primeRondement">Prime Rondement</form:label>
                    <form:input id="primeRondement" path="primeRondement" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="mntCnss">Montant CNSS</form:label>
                    <form:input id="mntCnss" path="mntCnss" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="ir">IR</form:label>
                    <form:input id="ir" path="ir" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- Date -->
                <div class="form-group">
                    <form:label path="datePayement">Date Payement</form:label>
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <form:input path="datePayement" type="text" class="form-control pull-right" id="datepicker"/>
                    </div>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="baseCnss">Base Cnss</form:label>
                    <form:input id="baseCnss" path="baseCnss" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="baseRetenue">Base Retenue</form:label>
                    <form:input id="baseRetenue" path="baseRetenue" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>

                <!-- *******************************   SALAIRE ******************************************* -->
                <!-- text input -->
                <div class="form-group">
                    <form:label path="brutSalary">Salaire Brut</form:label>
                    <form:input id="brutSalary" path="brutSalary" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="netSalary">Salaire Net</form:label>
                    <form:input id="netSalary" path="netSalary" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."/>
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
            $('#datepicker').datepicker({
                autoclose: true ,format: 'dd/mm/yyyy'
            })

        });

        getSalary();

        function getSalary() {
            var baseSalary = document.getElementById("baseSalary"); var primeRondement = document.getElementById("primeRondement");
            var workedDays = document.getElementById("workedDays"); var mntCnss = document.getElementById("mntCnss");
            var extraDays = document.getElementById("extraDays"); var ir = document.getElementById("ir");
            var extraHours = document.getElementById("extraHours"); var baseCnss = document.getElementById("baseCnss");
            var priceHoure = document.getElementById("priceHoure"); var baseRetenue = document.getElementById("baseRetenue");
            var accompte = document.getElementById("accompte"); var brutSalary = document.getElementById("brutSalary");
            var primeTransport = document.getElementById("primeTransport"); var netSalary = document.getElementById("netSalary");
            var primeCouffin = document.getElementById("primeCouffin");

            var prix_jour = baseSalary.value / 22 ;

            var salaire_brut = ( (prix_jour * workedDays.value) + (extraDays.value * prix_jour) + (extraHours.value + priceHoure.value)+
                primeTransport.value + primeCouffin.value + primeRondement.value )  ;
            var salaire_net = salaire_brut - (accompte.value + mntCnss.value + ir.value  ) ;

            brutSalary.value = salaire_brut;
            netSalary.value = salaire_net ;

        }

    </script>

</t:template>
