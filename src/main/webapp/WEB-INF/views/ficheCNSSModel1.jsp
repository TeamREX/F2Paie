<%--
  Created by IntelliJ IDEA.
  User: yassi
  Date: 26/05/2018
  Time: 13:50
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
            <div class="col-xs-12">
                <h2 class="page-header">
                    <i class="fa fa-file"></i> Declaration trimestrielle des Salaries et des Salaires
                    <span class="pull-right well">Periode: ${ficheCnss.periode} </span>
                </h2>
            </div>
            <!-- /.col -->
        </div>
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
            <div class="col-xs-12 table-responsive">
                <table class="table table-bordered" style="border: 2px solid black">
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
                    <table class="table"  style="border: 2px solid black">
                        <tr>
                            <th style="width:50%">TOTAL A Reporter:</th>
                            <td><b>${ficheCnss.total} DTN</b></td>
                        </tr>

                    </table>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <br> <br>
        <!-- /.row -->
        <div class="row">
            <div class="col-xs-10">
                <h2 class="page-header">
                    <small class="pull-right"></small>
                </h2>
            </div>
            <!-- /.col -->
        </div>
    </section>
    <!-- /.content -->

</div>
<!-- ./wrapper -->
<script>

</script>
</body>
</html>


