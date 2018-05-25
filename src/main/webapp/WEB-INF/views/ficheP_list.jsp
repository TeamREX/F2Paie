<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 17/05/2018
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- DataTables -->
<link rel="stylesheet" href="/template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<t:template>

    <div class="box">
        <div class="box-header">
            <i class="fa fa-group"></i> <span><h3 class="box-title">Liste des Fiche de paies de <b>${employee.prenom} ${employee.nom}</b></h3></span>
            <div class="btn-group pull-right">
            <button type="button" class="btn btn-success " onclick="location.href='/ficheP/add/${employee.id}';"><i class="fa fa-file"></i></button>
            <button type="button" class="btn btn-primary " onclick="location.href='/employee/list';"><i class="fa fa-group"></i></button>
            </div>

        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="companies" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Numero</th>
                    <th>Employé</th>
                    <th>Date</th>
                    <th>Montant Net</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty fiches}">
                    <c:forEach var="f" items="${fiches}">
                        <tr>
                            <td>${f.id}</td>
                            <td>${f.employee.prenom} ${f.employee.nom}</td>
                            <td>${f.month}/${f.year}</td>
                            <td>${f.netSalary}</td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" onclick="location.href='/ficheP/show/${f.id}';"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-danger" onclick="editID(${f.id},'${f.month}/${f.year}')" data-toggle="modal" data-target="#modal-default"><i class="fa fa-remove"></i></button>
                                    <a href="/ficheP/showModel/${f.id}" target="_blank" class="btn btn-primary"><i class="fa fa-print"></i> </a>

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
                    <h4 class="modal-title">Supprimer Fiche de paie</h4>
                </div>
                <div class="modal-body">
                    <p id="modal_txt">Êtes-vous sûr de vouloir supprimer la Fiche de paie </p>
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
            document.getElementById("delete_btn").href="/ficheP/remove/"+id;
            document.getElementById("modal_txt").innerHTML ="Êtes-vous sûr de vouloir supprimer la Fiche de paie du mois de  <b>"+name+"</b>";
        }

        $(function () {
            $('#companies').DataTable()
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
