<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 03/05/2018
  Time: 18:05
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
            <i class="fa fa-group"></i> <span><h3 class="box-title">Liste des Societ�s</h3></span>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="companies" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Nom</th>
                    <th>Matricule Fiscal</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty companies}">
                    <c:forEach var="cmp" items="${companies}">
                        <tr>
                            <td>${cmp.nom}</td>
                            <td>${cmp.mf}</td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" onclick="location.href='/company/show/${cmp.id}';"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-danger" onclick="editID(${cmp.id},'${cmp.nom}')" data-toggle="modal" data-target="#modal-default"><i class="fa fa-remove"></i></button>
                                    <button type="button" class="btn btn-success" onclick="location.href='/ficheP/createCnssFile/${cmp.id}/1/0';"><i class="fa fa-file"></i></button>
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
                    <h4 class="modal-title">Supprimer Societ�</h4>
                </div>
                <div class="modal-body">
                    <p id="modal_txt">�tes-vous s�r de vouloir supprimer la Societ� </p>
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
            document.getElementById("delete_btn").href="/company/removeCompany/"+id;
            document.getElementById("modal_txt").innerHTML ="�tes-vous s�r de vouloir supprimer la Societ�   <b>"+name+"</b>";
        }

        $(function () {
            $('#companies').DataTable();
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
