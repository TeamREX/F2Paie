<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 11/04/2018
  Time: 08:22
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- DataTables -->
<link rel="stylesheet" href="/template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<t:template>

    <div class="box">
        <div class="box-header">
            <i class="fa fa-group"></i> <span><h3 class="box-title">Liste des Employ�s</h3></span>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="employees" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Prenom</th>
                    <th>Nom</th>
                    <th>Poste</th>
                    <th>Grade</th>
                    <th>CNSS</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
    <c:if test="${not empty employees}">
        <c:forEach var="emp" items="${employees}">
                <tr>
                    <td>${emp.prenom}</td>
                    <td>${emp.nom}</td>
                    <td>${emp.poste}</td>
                    <td>${emp.grade}</td>
                    <td>${emp.cnss}</td>
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default" onclick="location.href='/employee/show/${emp.id}';"><i class="fa fa-eye"></i></button>
                            <button type="button" class="btn btn-danger" onclick="editID(${emp.id},'${emp.prenom} ${emp.nom}')" data-toggle="modal" data-target="#modal-default"><i class="fa fa-remove"></i></button>
                        </div>
                    </td>
                </tr>
        </c:forEach>
    </c:if>
                </tbody>
            </table>
        </div>
    </div>

    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Supprimer Employ�</h4>
                </div>
                <div class="modal-body">
                    <p id="modal_txt">�tes-vous s�r de vouloir supprimer l'employ� </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Annuler</button>
                    <a id="delete_btn" href="#"><button type="button" class="btn btn-danger">Supprimer</button></a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <!-- FastClick -->
    <script src="/template/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- DataTables -->
    <script src="/template/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="/template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script>
        function editID(id,name)
        {
            document.getElementById("delete_btn").href="/employee/removeEmployee/"+id;
            document.getElementById("modal_txt").innerHTML ="�tes-vous s�r de vouloir supprimer l'employ�   <b>"+name+"</b>";
        }

        $(function () {
            $('#employees').DataTable()
            $('#example2').DataTable({
                'paging'      : true,
                'lengthChange': false,
                'searching'   : false,
                'ordering'    : true,
                'info'        : true,
                'autoWidth'   : false
            })
        })
    </script>
</t:template>