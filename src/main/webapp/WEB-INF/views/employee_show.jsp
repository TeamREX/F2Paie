<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 30/04/2018
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-15" pageEncoding="ISO-8859-15"%>

<!-- Select2 -->
<link rel="stylesheet" href="/template/bower_components/select2/dist/css/select2.min.css">
<!-- datepicker -->
<link rel="stylesheet" href="/template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>

    <div class="box">
    <div class="box-header">
        <i class="fa fa-user"></i> <span><h3 class="box-title"> Détails Employé</h3></span>
        <button type="button" class="btn btn-success pull-right" onclick="location.href='/employee/list';"><i class="fa fa-arrow-left"></i></button>

    </div>
    <!-- /.box-header -->
    <div class="box-body">
        <div class="col-md-12">
            <!-- Widget: user widget style 1 -->
            <div class="box box-widget widget-user">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-aqua-active">
                    <h3 class="widget-user-username">${employee.prenom} ${employee.nom}</h3>
                    <h5 class="widget-user-desc">${employee.posteName}</h5>
                </div>
                <div class="widget-user-image">
                    <img class="img-circle" src="/template/dist/img/avatar5.png" alt="User Avatar">
                </div>
                <div class="box-footer">
                    <div class="row">
                        <div class="col-sm-4 border-right">
                            <div class="description-block">
                                <h5 class="description-header">${employee.company.nom}</h5>
                                <span class="description-text">Société</span>
                            </div>
                            <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4 border-right">
                            <div class="description-block">
                                <h5 class="description-header">${age}</h5>
                                <span class="description-text">Age</span>
                            </div>
                            <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4">
                            <div class="description-block">
                                <h5 class="description-header" id="salaireEmp"></h5>
                                <span class="description-text">Salaire</span>
                            </div>
                            <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>

                <div class="box-body">
                    <div class="row">

                        <form:form role="form" method="POST" action="/employee/editEmployee" modelAttribute="employee">
                            <form:hidden path="id"/>
                            <form:hidden id="salaireH" path="salaireH"/>
                            <div class="box-body">

                                <!-- select input -->
                                <div class="form-group">
                                    <form:label path="poste">Société</form:label><br>
                                    <form:select path="company" class="form-control select2" id="company" onchange="getSalary();">
                                        <c:forEach var="cmp" items="${companies}">
                                            <form:option value="${cmp}" label="${cmp.nom}" selected="${employee.company.nom == cmp.nom ? 'selected' : ''}" />
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
                                        <form:option value="marie" label="Marié" selected="${employee.situation == 'marie' ? 'selected' : ''}"/>
                                        <form:option value="celibataire" label="Celibataire" selected="${employee.situation == 'celibataire' ? 'selected' : ''}"/>
                                    </form:select>
                                </div>
                                <!-- text input -->
                                <div class="form-group">
                                    <form:label path="nEnfants">Nbr Enfants</form:label>
                                    <form:input path="nEnfants" type="number" min="0" max="99" class="form-control" placeholder="Enter ..."/>
                                </div>
                                <!-- select input -->
                                <div class="form-group boulangerie has-success" >
                                    <form:label path="poste">Poste</form:label>
                                    <form:select path="poste" class="form-control select2" onchange="getSalary();" id="poste" >
                                        <form:option value="1" label="Administration" selected="${employee.poste == 1 ? 'selected' : ''}"/>
                                        <form:option value="2" label="Passeur de planche" selected="${employee.poste == 2 ? 'selected' : ''}"/>
                                        <form:option value="3" label="Peseur" selected="${employee.poste == 3 ? 'selected' : ''}"/>
                                        <form:option value="4" label="Paitresseur" selected="${employee.poste == 4 ? 'selected' : ''}"/>
                                        <form:option value="5" label="Maitre de pelle" selected="${employee.poste == 5 ? 'selected' : ''}"/>
                                    </form:select>
                                </div>
                                <!-- text input -->
                                <div class="form-group boulangerie has-success">
                                    <form:label path="grade">Grade</form:label>
                                    <form:input path="grade" type="number" min="1" max="13" class="form-control" placeholder="Enter un nombre entre 1 et 13" id="grade" onkeyup="getSalary();" onchange="getSalary();"/>
                                </div>
                                <!-- text input -->
                                <div class="form-group boulangerie r_admin has-success" >
                                    <form:label path="r_admin">Categorie admin</form:label>
                                    <form:input path="r_admin" type="number" min="1" max="8" class="form-control" placeholder="Enter un nombre entre 1 et 8" id="r_admin" onkeyup="getSalary();" onchange="getSalary();"/>
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
                                <button class="btn btn-lg btn-success pull-right">Appliquer</button>
                            </div>
                        </form:form>

                    </div>
                </div>
            </div>
        </div>
    </div>
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

                        setSeparator();

                        function setSeparator() {
                            var salaire = document.getElementById("salaireEmp") ;
                            var s = "-";
                           s = ${employee.salaire} ;

                            salaire.innerHTML = s.toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3}) + ' DTN';
                            var comp = document.getElementById("company");
                            var company = comp.options[comp.selectedIndex].innerHTML.toLowerCase() ;

                            if (company.includes("boulangerie")){
                                $('.boulangerie').show() ;
                                var poste = document.getElementById("poste").value ;
                                if(poste == 1){
                                    $('.r_admin').show() ;
                                }
                                else{
                                    $('.r_admin').hide() ;
                                }

                            }else{
                                $('.boulangerie').hide() ;
                            }
                        }

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