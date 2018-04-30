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
            <h3 class="box-title">Liste des Employés</h3>
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
                            <a href="/employee/show/${emp.id}"><button type="button" class="btn btn-default"><i class="fa fa-eye"></i></button></a>
                            <a href=""><button type="button" class="btn btn-danger"><i class="fa fa-remove"></i></button></a>
                        </div>
                    </td>
                </tr>
        </c:forEach>
    </c:if>
                </tbody>
            </table>
        </div>
    </div>

    <!-- FastClick -->
    <script src="/template/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- DataTables -->
    <script src="/template/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="/template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script>
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