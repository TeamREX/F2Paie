<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 16/05/2018
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-15" pageEncoding="ISO-8859-15"%>

<!-- bootstrap datepicker  -->
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
            <i class="fa fa-user-plus"></i> <span><h3 class="box-title">Creation fiche de paie pour <b>${employee.prenom} ${employee.nom}</b></h3></span>
            <button type="button" class="btn btn-success pull-right" onclick="location.href='/ficheP/list/${employee.id}';"><i class="fa fa-arrow-left"></i></button>

        </div>
        <!-- /.box-header -->

        <form:form id="fichePform" role="form" method="POST" action="/ficheP/addFiche" modelAttribute="ficheP">
            <div class="box-body">
                <form:hidden path="employee" value="${employee.id}"/>
                <form:hidden path="imSalary" id="imSalary"/>
            <div class="row">
                <!-- text input -->
                <div class="form-group col-md-6">
                    <form:label path="month">Mois</form:label>
                    <form:input id="month" path="month" type="number" value="1" min="1" max="12" class="form-control" placeholder="Entrer un mois"/>
                </div>
                <!-- text input -->
                <div class="form-group col-md-6">
                    <form:label path="year">Annee</form:label>
                    <form:input id="year" path="year" type="number" value="2018" min="1950" max="2999" class="form-control" placeholder="Entrer une annee"/>
                </div>
            </div>
                <br>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="baseSalary">Salaire de base (DTN)</form:label> <small id="refresh" onclick="setBaseSalary()" class="label bg-yellow"><i class="fa fa-refresh"></i> </small>
                    <form:input id="baseSalary" path="baseSalary" type="number" step="0.001" value="${employee.salaire}" min="0" class="form-control" placeholder="Enter ..." onkeyup="isSalChanged()" onchange="isSalChanged()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="workDays">Nombre de jours ouvrés/Mois</form:label>
                    <form:input path="workDays" id="nbr_days" type="number" value="26" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="daySalary" >Salaire/Jour (DTN)</form:label>
                    <form:input path="daySalary" id="salaire_jour"  type="number" step="0.001" min="0" value="0" class="form-control" placeholder="Enter ..." />
                </div>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="workedDays">Jours travaillés</form:label>
                    <form:input id="workedDays" path="workedDays" type="number" value="26" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="extraDays">Jours feriés travaillés</form:label>
                    <form:input id="extraDays" path="extraDays" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="extraHours">Heures supplimentaires</form:label>
                    <form:input id="extraHours" path="extraHours" type="number" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="priceHoure">salaire/Heure (DTN)</form:label>
                    <form:input id="priceHoure" path="priceHoure" type="number" step="0.001" value="${employee.salaireH}" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="primePresence">Prime de Presence (DTN)</form:label>
                    <form:input id="primePresence" path="primePresence" type="number" step="0.001" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="primeTransport">Prime de Transport (DTN)</form:label>
                    <form:input id="primeTransport" path="primeTransport" type="number" step="0.001" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="primeCouffin">Prime de Couffin (DTN)</form:label>
                    <form:input id="primeCouffin" path="primeCouffin" type="number" step="0.001" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="primeRondement">Prime de Rondement (DTN)</form:label>
                    <form:input id="primeRondement" path="primeRondement" type="number" step="0.001" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="accompte">Accompte (DTN)</form:label>
                    <form:input id="accompte" path="accompte" type="number" step="0.001" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="baseCnss">Base Cnss ( % )</form:label>
                    <form:input id="baseCnss" path="baseCnss" type="number" step="0.001" value="9.18" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="mntCnss">Montant CNSS (DTN)</form:label>
                    <form:input id="mntCnss" path="mntCnss" type="number" step="0.001" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="baseRetenue">Base Revenue</form:label>
                    <form:input id="baseRetenue" path="baseRetenue" type="number" step="0.1" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
                </div>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="ir">IR  (DTN)</form:label>
                    <form:input id="ir" path="ir" type="number" step="0.001" value="0" min="0" class="form-control" placeholder="Enter ..."  onkeyup="getSalary()" onchange="getSalary()"/>
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

                <!-- *******************************   SALAIRE ******************************************* -->
                <!-- text input -->
                <div class="form-group">
                    <form:label path="brutSalary">Salaire Brut (DTN)</form:label>
                    <form:input id="brutSalary" path="brutSalary" type="text" value="0" class="form-control input-lg" placeholder="Enter ..." />
                </div>
                <!-- text input -->
                <div class="form-group has-success">
                    <form:label path="netSalary">Salaire Net (DTN)</form:label>
                    <form:input id="netSalary" path="netSalary" type="text" value="0" class="form-control input-lg" placeholder="Enter ..." />
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
            }).datepicker("setDate", new Date());

        });

        // prevent forms from auto submitting on all inputs
     /*   $(document).on("keydown", "input", function(e) {
            if (e.which==13) e.preventDefault();
        });*/
        $(':input').keypress(function() {
            $(this).next(':input').focus();
        });

        setCurrentMY();

        function setBaseSalary(){
            document.getElementById("baseSalary").value = ${employee.salaire} ;
            $('#refresh').hide() ;
            getSalary();

        }
        function isSalChanged(){
            if( document.getElementById("baseSalary").value != ${employee.salaire} ) {
                $('#refresh').show();
            }else{
                $('#refresh').hide() ;
            }

            getSalary();
        }

        function setCurrentMY(){
            var month = document.getElementById("month");
            var year = document.getElementById("year");

            var curr_month = (new Date()).getMonth() + 1 ;
            var curr_year  = (new Date()).getFullYear() ;

            month.value = curr_month ;
            year.value = curr_year ;

            if( document.getElementById("baseSalary").value != ${employee.salaire} ) {
                $('#refresh').show();
            }else{
                $('#refresh').hide() ;
            }

            getSalary();
        }


        function getSalary() {
            var baseSalary = document.getElementById("baseSalary"); var primeRondement = document.getElementById("primeRondement");
            var workedDays = document.getElementById("workedDays"); var mntCnss = document.getElementById("mntCnss");
            var extraDays = document.getElementById("extraDays"); var ir = document.getElementById("ir");
            var extraHours = document.getElementById("extraHours"); var baseCnss = document.getElementById("baseCnss");
            var priceHoure = document.getElementById("priceHoure"); var baseRetenue = document.getElementById("baseRetenue");
            var accompte = document.getElementById("accompte"); var brutSalary = document.getElementById("brutSalary");
            var primeTransport = document.getElementById("primeTransport"); var netSalary = document.getElementById("netSalary");
            var primeCouffin = document.getElementById("primeCouffin"); var primePresence = document.getElementById("primePresence");
            var salaire_jour = document.getElementById("salaire_jour");
            var imSalary = document.getElementById("imSalary");
            var nbr_days = document.getElementById("nbr_days");

            var prix_jour = baseSalary.value / nbr_days.value   ;
            var factor = Math.pow(10, 3);
            prix_jour = Math.round(prix_jour * factor) / factor;

            var unworkedDays = nbr_days.value - workedDays.value ;

            salaire_jour.value = prix_jour ;

            var salaire_brut = (baseSalary.value * 1) + (extraDays.value * prix_jour) + (extraHours.value * priceHoure.value)+
                (primeTransport.value * 1) + (primeCouffin.value * 1) + (primeRondement.value * 1) + (primePresence.value * 1)  ;

            var montant_cnss = (salaire_brut * (baseCnss.value * 1) )/100;
            montant_cnss = Math.round(montant_cnss * factor) / factor;
            mntCnss.value = montant_cnss;

            imSalary.value = ((salaire_brut - montant_cnss).toLocaleString('de-DE', {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,' ');

            var salaire_net = salaire_brut - ( (accompte.value * 1) + (montant_cnss) + (ir.value * 1) + (unworkedDays * prix_jour)  ) ;

            brutSalary.value = (salaire_brut.toLocaleString('de-DE', {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,' ');
            netSalary.value = (salaire_net.toLocaleString('de-DE', {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,' ');

        }

    </script>

</t:template>
