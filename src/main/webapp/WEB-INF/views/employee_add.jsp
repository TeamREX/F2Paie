<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 10/04/2018
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<!-- bootstrap datepicker -->
<link rel="stylesheet" href="/template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Ajout d'un employeur</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
        <form role="form">
            <!-- text input -->
            <div class="form-group">
                <label>Text</label>
                <input type="text" class="form-control" placeholder="Enter ...">
            </div>
            <!-- Date -->
            <div class="form-group">
                <label>Date:</label>

                <div class="input-group date">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" class="form-control pull-right" id="datepicker">
                </div>
                <!-- /.input group -->
            </div>
        </form>
    </div>
</div>




<!-- bootstrap datepicker -->
<script src="/template/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<script>
  $(function () {
    //Date picker
    $('#datepicker').datepicker({
       autoclose: true ,format: 'DD/MM/YYYY'
         })
     });
</script>