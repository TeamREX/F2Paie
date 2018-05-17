<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 11/04/2018
  Time: 08:22
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
            <i class="fa fa-group"></i> <span><h3 class="box-title">Liste des Employés</h3></span>
            <button type="button" class="btn btn-success pull-right" onclick="location.href='/employee/add';"><i class="fa fa-user-plus"></i></button>

        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="employees" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Prenom</th>
                    <th>Nom</th>
                    <th>Date Naissance</th>
                    <th>Société</th>
                    <th>Poste</th>
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
                    <td>${emp.dateNaiss}</td>
                    <td>${emp.company.nom}</td>
                    <td>${emp.posteName}</td>
                    <td>${emp.cnss}</td>
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default" onclick="location.href='/employee/show/${emp.id}';"><i class="fa fa-eye"></i></button>
                            <button type="button" class="btn btn-danger" onclick="editID(${emp.id},'${emp.prenom} ${emp.nom}')" data-toggle="modal" data-target="#modal-default"><i class="fa fa-remove"></i></button>
                            <button type="button" class="btn btn-warning" onclick="location.href='/leave/list/${emp.id}';"><i class="fa fa-calendar"></i></button>
                            <button type="button" class="btn btn-success" onclick="location.href='/ficheP/add/${emp.id}';"><i class="fa fa-file-text-o"></i></button>
                            <button type="button" class="btn btn-primary" onclick="location.href='/ficheP/list/${emp.id}';"><i class="fa fa-list"></i></button>


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
                    <h4 class="modal-title">Supprimer Employé</h4>
                </div>
                <div class="modal-body">
                    <p id="modal_txt">Êtes-vous sûr de vouloir supprimer l'employé </p>
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
            document.getElementById("modal_txt").innerHTML ="Êtes-vous sûr de vouloir supprimer l'employé   <b>"+name+"</b>";
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