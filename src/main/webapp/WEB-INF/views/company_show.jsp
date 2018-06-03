<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 04/05/2018
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-15" pageEncoding="ISO-8859-15"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="/template/plugins/iCheck/all.css">
<!-- Select2 -->
<link rel="stylesheet" href="/template/bower_components/select2/dist/css/select2.min.css">

<link rel="stylesheet" href="/template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>

    <div class="box">
    <div class="box-header">
    <i class="fa fa-user"></i> <span><h3 class="box-title"> Détails Société</h3></span>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
    <div class="col-md-12">
    <!-- Widget: user widget style 1 -->
    <div class="box box-widget widget-user">
    <!-- Add the bg color to the header using any of the bg-* classes -->
    <div class="widget-user-header bg-aqua-active">
    <h3 class="widget-user-username">${company.nom} </h3>
    <h5 class="widget-user-desc"></h5>
    </div>
    <div class="widget-user-image">
    <img class="img-circle" src="/img/company.png" alt="company">
    </div>
    <div class="box-footer">
    <div class="row">
    <div class="col-sm-4 border-right">
    <div class="description-block">
    <h5 class="description-header">${company.chiffre_affaire}</h5>
    <span class="description-text">Chiffre d'affaire</span>
    </div>
    <!-- /.description-block -->
    </div>
    <!-- /.col -->
    <div class="col-sm-4 border-right">
    <div class="description-block">
    <h5 class="description-header">${company.type}</h5>
    <span class="description-text">Type</span>
    </div>
    <!-- /.description-block -->
    </div>
    <!-- /.col -->
    <div class="col-sm-4">
    <div class="description-block">
    <h5 class="description-header">${company.mf}</h5>
    <span class="description-text">Matricule Fiscal</span>
    </div>
    <!-- /.description-block -->
    </div>
    <!-- /.col -->
    </div>
    <!-- /.row -->
    </div>

    <div class="box-body">
    <div class="row">
        <form:form role="form" method="POST" action="/company/editCompany" modelAttribute="company">
            <div class="box-body">
                <form:hidden path="id"/>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="nom">Nom de la Societé</form:label>
                    <form:input path="nom" type="text" class="form-control" placeholder="Enter ..." required="required"/>
                </div>
                <!-- Date -->
                <div class="form-group">
                    <form:label path="date">Date de creation</form:label>
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <form:input path="date" type="text" class="form-control pull-right" id="datepicker"/>
                    </div>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="adresse">adresse</form:label>
                    <form:input path="adresse" type="text" class="form-control" placeholder="Enter ..."/>
                </div>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="cnss">N° CNSS</form:label>
                    <form:input path="cnss" type="text" class="form-control" placeholder="Enter ..." required="required"/>
                </div>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="phone">N° Téléphone</form:label>
                    <form:input path="phone" type="text" class="form-control" placeholder="+216 ..."/>
                </div>

                <!-- text input -->
                <div class="form-group">
                    <form:label path="email">Email</form:label>
                    <form:input path="email" type="email" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="chiffre_affaire">chiffre d'affaire</form:label>
                    <form:input path="chiffre_affaire" type="text" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="type">Type</form:label>
                    <form:input path="type" type="text" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="mf">Matricule Fiscal</form:label>
                    <form:input path="mf" type="text" class="form-control" placeholder="Enter ..."/>
                </div>
                <!-- password input -->
                <security:authorize access="hasAuthority('ADMIN')">
                <div class="form-group has-warning">
                    <form:label path="password">Mot de passe</form:label>
                    <form:input path="password" type="password" class="form-control" placeholder="Enter Password"/>
                </div>
                </security:authorize>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="description">Description</form:label>
                    <form:textarea path="description" rows="5"  class="form-control" placeholder="Enter ..."/>
                </div>


            </div>
            <div class="box-footer">
                <button class="btn btn-lg btn-success pull-right">Appliquer</button>
            </div>
        </form:form>
    </div>
    </div>
        <!-- /.widget-user -->
    </div>

    </div>
    </div>

    <!-- FastClick -->
    <script src="/template/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- bootstrap datepicker -->
    <script src="/template/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="/template/plugins/iCheck/icheck.min.js"></script>
    <!-- Select2 -->
    <script src="/template/bower_components/select2/dist/js/select2.full.min.js"></script>

    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2();
            //Date picker
            $('#datepicker').datepicker({
                autoclose: true ,format: 'dd/mm/yyyy'
            });
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass   : 'iradio_flat-green'
            })
        });
    </script>

</t:template>

