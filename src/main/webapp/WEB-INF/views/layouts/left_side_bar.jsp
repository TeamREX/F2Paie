<%--
  Created by IntelliJ IDEA.
  User: yassi
  Date: 08/04/2018
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <security:authorize access="isAuthenticated()">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/template/dist/img/avatar5.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><c:out value="${sessionScope.user.name} ${sessionScope.user.lastName}"/></p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form (Optional) -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
            </div>
        </form>
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menu </li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="/index"><i class="fa fa-home"></i> <span>Home</span></a></li>
            <li class="treeview">
                <a href="#"><i class="fa fa-building"></i> <span>Societés</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <security:authorize access="hasAuthority('ADMIN')">
                    <li><a href="/company/add"><i class="fa fa-plus-circle"></i> <span>Ajout Societé</span></a></li>
                    </security:authorize>
                    <li><a href="/company/list"><i class="fa fa-list"></i> <span>Liste Societés</span></a></li>
                </ul>
            </li>
            <c:if test="${not empty sessionScope.company}">
            <li class="treeview">
                <a href="#"><i class="fa fa-group"></i> <span>Employés</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/employee/add"><i class="fa fa-plus-circle"></i> <span>Ajout Employé</span></a></li>
                    <li><a href="/employee/list"><i class="fa fa-list"></i> <span>Liste Employés</span></a></li>
                </ul>
            </li>

            </c:if>

            <security:authorize access="hasAuthority('ADMIN')">
            <li class="treeview">
                <a href="#"><i class="fa fa-key"></i> <span>Utilisateurs</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/user/add"><i class="fa fa-plus-circle"></i> <span>Ajout Utilisateur</span></a></li>
                    <li><a href="/user/list"><i class="fa fa-list"></i> <span>Liste Utilisateurs</span></a></li>
                </ul>
            </li>
            </security:authorize>
        </ul>
        <!-- /.sidebar-menu -->
        </security:authorize>
    </section>
    <!-- /.sidebar -->
</aside>