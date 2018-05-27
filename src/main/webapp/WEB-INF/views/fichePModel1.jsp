<%--
  Created by IntelliJ IDEA.
  User: yassi
  Date: 19/05/2018
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-15" pageEncoding="ISO-8859-15"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><spring:message code="app.title.home" /></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="/template/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/template/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/template/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/template/dist/css/AdminLTE.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body onload="window.print();">
<div class="wrapper">
    <!-- Main content -->
    <section class="invoice">
        <!-- title row -->
        <div class="row">
            <div class="col-xs-12 ">
                <h2 class="page-header">
                    <i class="fa fa-file"></i> BULLETIN DE PAIE
                    <small class="pull-right well">Periode: ${ficheP.month} / ${ficheP.year}</small>
                </h2>
            </div>
            <!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
            <div class="col-sm-12 invoice-col">

                <address>
                    <strong>${ficheP.employee.company.nom}</strong><br>
                    ${ficheP.employee.company.adresse}<br>
                    N° CNSS: ${ficheP.employee.company.cnss}<br>
                    Phone: ${ficheP.employee.company.phone}<br>
                    Email: ${ficheP.employee.company.email}
                </address>
            </div>
            <!-- /.col -->

        </div>
        <!-- /.row -->

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-bordered"  style="border: 2px solid black">
                    <thead>
                    <tr>
                        <th>Nom Employé</th>
                        <th>Mat. CNSS</th>
                        <th>N° CIN</th>
                        <th>Poste</th>
                        <th>Date de recrutement</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${ficheP.employee.prenom} ${ficheP.employee.nom}</td>
                        <td>${ficheP.employee.cnss} </td>
                        <td>${ficheP.employee.cin} </td>
                        <td>${ficheP.employee.posteName} </td>
                        <td>${ficheP.employee.dateRecrutement} </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-bordered"  style="border: 2px solid black">
                    <thead>
                    <tr>
                        <th class="col-xs-6">Libelle</th>
                        <th class="col-xs-2">Nombre</th>
                        <th class="col-xs-2">Sal/Primes</th>
                        <th class="col-xs-2">Retenues</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Salaire de Base</td>
                        <td></td>
                        <td id="baseSalary">${ficheP.baseSalary}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>J.Normales</td>
                        <td>${ficheP.workedDays}</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>J.Feriers</td>
                        <td>${ficheP.extraDays}</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>H.sup</td>
                        <td>${ficheP.extraHours}</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Prime de Presence</td>
                        <td></td>
                        <td id="primePresence">${ficheP.primePresence}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Prime de Transport</td>
                        <td></td>
                        <td id="primeTransport">${ficheP.primeTransport}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Prime de Couffin</td>
                        <td></td>
                        <td id="primeCouffin">${ficheP.primeCouffin}</td>
                        <td></td>
                    </tr>                    <tr>
                        <td>prime de Rondement</td>
                        <td></td>
                        <td id="primeRondement">${ficheP.primeRondement}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Salaire Brut</td>
                        <td></td>
                        <td>${ficheP.brutSalary}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Retenues CNSS</td>
                        <td></td>
                        <td></td>
                        <td id="mntCnss">${ficheP.mntCnss}</td>
                    </tr>
                    <tr>
                        <td>Salaire Imposable</td>
                        <td></td>
                        <td>${ficheP.imSalary}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Accompte</td>
                        <td></td>
                        <td></td>
                        <td id="accompte">${ficheP.accompte}</td>
                    </tr>
                    <tr>
                        <td>Retenues IR</td>
                        <td></td>
                        <td></td>
                        <td id="ir">${ficheP.ir}</td>
                    </tr>

                    <tr>
                        <td>NET A PAYER</td>
                        <td></td>
                        <td>${ficheP.netSalary}</td>
                        <td></td>
                    </tr>

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
                    <table class="table"  style="border: 2px solid black">
                        <tr>
                            <th style="width:50%">NET A PAYER:</th>
                            <td><b>${ficheP.netSalary} DTN</b></td>
                        </tr>

                    </table>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <br> <br>
        <!-- /.row -->
        <div class="row">
            <div class="col-xs-10 col-xs-push-1">
                <h2 class="page-header">
                    <small class="pull-right">${ficheP.datePayement}</small>
                </h2>
            </div>
            <!-- /.col -->
        </div>
    </section>
    <!-- /.content -->

</div>
<!-- ./wrapper -->
<script>
formater();
    function formater() {
        var baseSalary = document.getElementById("baseSalary"); var primeRondement = document.getElementById("primeRondement");
        var mntCnss = document.getElementById("mntCnss"); var ir = document.getElementById("ir");
        var accompte = document.getElementById("accompte"); var primePresence = document.getElementById("primePresence");
        var primeTransport = document.getElementById("primeTransport"); var primeCouffin = document.getElementById("primeCouffin");

        baseSalary.innerHTML=((baseSalary.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');
        primeRondement.innerHTML=((primeRondement.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');
        mntCnss.innerHTML=((mntCnss.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');
        ir.innerHTML=((ir.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');
        accompte.innerHTML=((accompte.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');
        primePresence.innerHTML=((primePresence.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');
        primeTransport.innerHTML=((primeTransport.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');
        primeCouffin.innerHTML=((primeCouffin.innerHTML * 1).toLocaleString(undefined, {minimumFractionDigits: 3, maximumFractionDigits: 3})).replace(/\./,',');

    }

</script>
</body>
</html>

