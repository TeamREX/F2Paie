<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 14/05/2018
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-15" pageEncoding="ISO-8859-15"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="/template/plugins/iCheck/all.css">
<!-- Select2 -->
<link rel="stylesheet" href="/template/bower_components/select2/dist/css/select2.min.css">

<link rel="stylesheet" href="/template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<t:template>

    <div class="box box-primary">
        <div class="box-header with-border">
            <i class="fa fa-calendar-plus-o"></i> <span><h3 class="box-title">Details Congé pour <b>${employee.prenom} ${employee.nom}</b></h3></span>
        </div>
        <!-- /.box-header -->

        <form:form role="form" method="POST" action="/leave/addLeave" modelAttribute="leave">
            <form:hidden path="id"/>
            <div class="box-body">
                <form:hidden path="employee" value="${employee.id}"/>
                <!-- text input -->
                <div class="form-group">
                    <form:label path="type">Type du Congé</form:label>
                    <form:select path="type" class="form-control select2" id="type">
                        <form:option value="paid" label="Payé"/>
                        <form:option value="sick" label="Maladie"/>
                        <form:option value="unpaid" label="Non Payé"/>
                    </form:select>
                </div>
                <!-- Date -->
                <div class="form-group">
                    <form:label path="startDate">Du :</form:label>
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <form:input path="startDate" type="text" class="form-control pull-right datepicker" />
                    </div>
                </div>
                <!-- Date -->
                <div class="form-group">
                    <form:label path="endDate">Au :</form:label>
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <form:input path="endDate" type="text" class="form-control pull-right datepicker" />
                    </div>
                </div>
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
            $('.datepicker').datepicker({
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

