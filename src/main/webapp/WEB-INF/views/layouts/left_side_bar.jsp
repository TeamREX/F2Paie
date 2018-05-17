<%--
  Created by IntelliJ IDEA.
  User: yassi
  Date: 08/04/2018
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/template/dist/img/avatar5.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Adel Ben Taleb</p>
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
            <li class="header">Menu</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="/index"><i class="fa fa-home"></i> <span>Home</span></a></li>
            <li class="treeview">
                <a href="#"><i class="fa fa-building"></i> <span>Societ�s</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/company/add"><i class="fa fa-plus-circle"></i> <span>Ajout Societ�</span></a></li>
                    <li><a href="/company/list"><i class="fa fa-list"></i> <span>Liste Societ�s</span></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-group"></i> <span>Employ�s</span>
                    <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/employee/add"><i class="fa fa-plus-circle"></i> <span>Ajout Employ�</span></a></li>
                    <li><a href="/employee/list"><i class="fa fa-list"></i> <span>Liste Employ�s</span></a></li>
                </ul>
            </li>

        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>