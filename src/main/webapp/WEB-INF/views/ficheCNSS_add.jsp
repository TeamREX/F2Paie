<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 24/05/2018
  Time: 14:32
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
            <i class="fa fa-user-plus"></i> <span><h3 class="box-title">Creation fiche de declaration trimestrielle pour <b>${ficheCnss.company.nom}</b></h3></span>
            <button type="button" class="btn btn-success pull-right" onclick="location.href='/company/list';"><i class="fa fa-arrow-left"></i></button>

        </div>
        <!-- /.box-header -->

            <div class="box-body">

                <div class="row">
                    <!-- text input -->
                    <div class="form-group col-md-6">
                        <label >Trimestre</label>
                        <input id="trimestre" type="number" value="${trimestre}" min="1" max="4" class="form-control" placeholder="Entrer une trimestre" onchange="getCNSS()"/>
                    </div>
                    <!-- text input -->
                    <div class="form-group col-md-6">
                        <label >Annee</label>
                        <input id="year" type="number" value="${year}" min="1950" max="2999" class="form-control" placeholder="Entrer une annee" onchange="getCNSS()"/>
                    </div>
                </div>
                <br>

                <!-- info row -->
                <div class="row invoice-info">
                    <div class="col-sm-4 invoice-col">

                        <address>
                            <strong>${ficheCnss.company.nom}</strong><br>
                                ${ficheCnss.company.adresse}<br>
                            N° CNSS: ${ficheCnss.company.cnss}<br>
                            Phone: ${ficheCnss.company.phone}<br>
                            Email: ${ficheCnss.company.email}
                        </address>
                    </div>
                    <!-- /.col -->

                </div>
                <!-- /.row -->

                <!-- Table row -->
                <div class="row">
                    <div class="col-xs-10 table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Mat. CNSS</th>
                                <th>Nom Salarié</th>
                                <th>Poste</th>
                                <th>1er Mois</th>
                                <th>2eme Mois</th>
                                <th>3eme Mois</th>
                                <th>Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${not empty ficheCnss.rowFicheCnss}">
                                <c:forEach var="f" items="${ficheCnss.rowFicheCnss}">
                                    <tr>
                                        <td>${f.employee.cnss}</td>
                                        <td>${f.employee.prenom} ${f.employee.nom}</td>
                                        <td>${f.employee.posteName}</td>
                                        <td>${f.salImp1}</td>
                                        <td>${f.salImp2}</td>
                                        <td>${f.salImp3}</td>
                                        <td>${f.total}</td>

                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->

                <div class="row">

                    <!-- /.col -->
                    <div class="col-sm-6 col-sm-push-6">
                        <p class="lead"></p>

                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th style="width:50%">TOTAL A Reporter:</th>
                                    <td><b>${ficheCnss.total} DTN</b></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>



            </div>
            <div class="box-footer">
                <a href="/ficheP/getCnssFile/${ficheCnss.company.id}/${trimestre}/${year}" target="_blank" class="btn btn-primary  pull-right"><i class="fa fa-print"></i> Imprimer</a>
            </div>

    </div>


    <!-- bootstrap datepicker -->
    <script src="/template/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

    <script>


        function getCNSS() {

            var trimestre = document.getElementById("trimestre").value;
            var year = document.getElementById("year").value;

            window.location.replace("/ficheP/createCnssFile/${ficheCnss.company.id}/"+trimestre+"/"+year);

        }

    </script>

</t:template>
