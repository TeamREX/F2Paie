<%--
  Created by IntelliJ IDEA.
  User: yassi
  Date: 03/06/2018
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-15" pageEncoding="ISO-8859-15"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- DataTables -->
<link rel="stylesheet" href="/template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<t:template>

    <div class="box">
        <div class="box-header">
            <i class="fa fa-group"></i> <span><h3 class="box-title">Liste des Utilisateurs</h3></span>

        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="employees" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Prenom</th>
                    <th>Nom</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty users}">
                    <c:forEach var="usr" items="${users}">
                        <tr>
                            <td>${usr.lastName}</td>
                            <td>${usr.name}</td>
                            <td>${usr.email}</td>
                            <td>${usr.roles.role}</td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" onclick="location.href='/user/show/${usr.id}';"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-danger" onclick="editID(${usr.id},'${usr.lastName} ${usr.name}')" data-toggle="modal" data-target="#modal-default"><i class="fa fa-remove"></i></button>
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
                    <h4 class="modal-title">Supprimer Utilisateur</h4>
                </div>
                <div class="modal-body">
                    <p id="modal_txt">Êtes-vous sûr de vouloir supprimer l'utilisateur </p>
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
            document.getElementById("delete_btn").href="/user/remove/"+id;
            document.getElementById("modal_txt").innerHTML ="Êtes-vous sûr de vouloir supprimer l'Utilisateur   <b>"+name+"</b>";
        }

        $(function () {
            $('#employees').DataTable();
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