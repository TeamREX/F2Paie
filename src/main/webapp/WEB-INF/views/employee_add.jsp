<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 10/04/2018
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<!-- bootstrap datepicker -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="/template/plugins/iCheck/all.css">
<!-- Select2 -->
<link rel="stylesheet" href="/template/bower_components/select2/dist/css/select2.min.css">
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>
<link rel="stylesheet" href="/template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Ajout d'un employeur</h3>
    </div>
    <!-- /.box-header -->

<form:form role="form" method="POST" action="/employee/addEmployee" modelAttribute="employee">
    <div class="box-body">
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
                <!-- text select -->
                <div class="form-group">
                    <form:label path="poste">Poste</form:label><br>
                    <form:select path="poste" class="form-control select2">
                        <form:option value="poste1" label="Poste 1"/>
                        <form:option value="poste2" label="Poste 2"/>
                    </form:select>
                </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="r_admin">r_admin</form:label>
                <form:checkbox class="flat-red" path="r_admin" value="1" />
            </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="grade">Grade</form:label>
                <form:input path="grade" type="number" class="form-control" placeholder="Enter ..."/>
            </div>
            <!-- text input -->
            <div class="form-group">
                <form:label path="cnss">CNSS</form:label>
                <form:input path="cnss" type="text" class="form-control" placeholder="Enter ..."/>
            </div>

                <!-- /.input group -->
            </div>
    </div>
    <div class="box-footer">
        <button type="submit" class="btn btn-primary">Submit</button>
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