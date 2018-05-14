<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 11/05/2018
  Time: 15:27
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
            <i class="fa fa-calendar"></i> <span><h3 class="box-title"> Liste des Congés pour <b>${employee.prenom} ${employee.nom} </b></h3></span>
            <button type="button" class="btn btn-success pull-right" onclick="location.href='/leave/add/${employee.id}';"><i class="fa fa-calendar-plus-o"></i> Ajouter Congé</button>

        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="leaves" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Type</th>
                    <th>Date debut</th>
                    <th>Date fin</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty leaves}">
                    <c:forEach var="leave" items="${leaves}">
                        <tr>
                            <c:choose>
                                <c:when test = "${leave.type == 'paid'}">
                                    <td><span class="label label-success">Payé</span></td>
                                </c:when>
                                <c:when test = "${leave.type == 'unpaid'}">
                                    <td><span class="label label-danger">Non Payé</span></td>
                                </c:when>
                                <c:when test = "${leave.type == 'sick'}">
                                    <td><span class="label label-warning">Maladie</span></td>
                                </c:when>
                            </c:choose>
                            <td>${leave.startDate}</td>
                            <td>${leave.endDate}</td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" onclick="location.href='/leave/show/${leave.id}';"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-danger" onclick="editID(${leave.id},'${leave.startDate}','${leave.endDate}')" data-toggle="modal" data-target="#modal-default"><i class="fa fa-remove"></i></button>
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
                    <h4 class="modal-title">Supprimer Congé</h4>
                </div>
                <div class="modal-body">
                    <p id="modal_txt">Êtes-vous sûr de vouloir supprimer le congé de la periode du - au - </p>
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
        function editID(id,start,end)
        {
            document.getElementById("delete_btn").href="/leave/delete/"+id+"/"+${employee.id};
            document.getElementById("modal_txt").innerHTML ="Êtes-vous sûr de vouloir supprimer le Congé de la période du  <b>"+start+" au "+end+"</b>";
        }

        $(function () {
            $('#leaves').DataTable()
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

