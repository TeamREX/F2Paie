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
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<!-- DataTables -->
<link rel="stylesheet" href="/template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<t:template>

    <div class="box">
        <div class="box-header">
            <i class="fa fa-group"></i> <span><h3 class="box-title">Liste des Societés</h3></span>
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
                                    <security:authorize access="hasAuthority('ADMIN')">
                                    <button type="button" class="btn btn-danger" onclick="editID(${cmp.id},'${cmp.nom}')" data-toggle="modal" data-target="#modal-default"><i class="fa fa-remove"></i></button>
                                    </security:authorize>
                                    <button type="button" class="btn btn-success" onclick="location.href='/ficheP/createCnssFile/${cmp.id}/1/0';"><i class="fa fa-file"></i></button>
                                    <c:if test="${sessionScope.company.id == cmp.id}">
                                    <button type="button" class="btn btn-warning" onclick="disconnect()" ><i class="fa fa-unlock"></i></button>
                                    </c:if>
                                    <c:if test="${empty sessionScope.company.id || sessionScope.company.id != cmp.id}">
                                        <button type="button" class="btn btn-warning" onclick="updateCmp(${cmp.id},'${cmp.nom}')" data-toggle="modal" data-target="#modal-connect"><i class="fa fa-lock"></i></button>
                                    </c:if>

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
                    <h4 class="modal-title">Supprimer Societé</h4>
                </div>
                <div class="modal-body">
                    <p id="modal_txt">Êtes-vous sûr de vouloir supprimer la Societé </p>
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

    <div class="modal fade" id="modal-connect">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><p id="title_pwd">Veiller saisir le Mot de passe de la Societé</p></h4>
                </div>
                <div class="modal-body">
                    <label >Mot de passe</label>
                    <input type="password" class="form-control" id="pwd" placeholder="Tapez Mot de passe"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Annuler</button>
                    <button id="submit_btn" type="button" class="btn btn-primary" onclick="connect()">Valider</button>
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

        var cmp_id = 0;
        function updateCmp(id,name)
        {
            document.getElementById("title_pwd").innerHTML ="Veiller saisir le Mot de passe de la Societé  <b> "+name+"</b>";
            cmp_id = id;
        }

        function disconnect()
        {
            $.ajax({url: "/api/disconnect", success: function(result){
                if(result.status === "success"){
                    window.location.replace("/company/list");
                }else{
                    alert("error");
                }
            },
                error: function(xhr, ajaxOptions, thrownError){
                    alert(xhr.status);
                }
            });
        }

        function connect()
        {

            var pwd = document.getElementById("pwd").value;
            $.ajax({url: "/api/verifyPWDcompany/"+cmp_id+"/"+pwd , success: function(result){
                if(result.status === "success"){
                    window.location.replace("/");
                }else{
                    alert("Mot de passe Invalide");
                    document.getElementById("pwd").value = "";
                }
            },
                error: function(xhr, ajaxOptions, thrownError){
                    alert(xhr.status);
                    document.getElementById("pwd").value = "";

                }
            });

        }

        function editID(id,name)
        {
            document.getElementById("delete_btn").href="/company/removeCompany/"+id;
            document.getElementById("modal_txt").innerHTML ="Êtes-vous sûr de vouloir supprimer la Societé   <b>"+name+"</b>";
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
