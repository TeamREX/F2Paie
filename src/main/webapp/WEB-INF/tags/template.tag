<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 30/03/2018
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="Simple Wrapper Tag" pageEncoding="ISO-8859-15"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    <html>
    <head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><spring:message code="app.title.home" /></title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="<c:url value='/template/bower_components/bootstrap/dist/css/bootstrap.min.css' />">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<c:url value='/template/bower_components/font-awesome/css/font-awesome.min.css' />">
        <!-- Ionicons -->
        <link rel="stylesheet" href="<c:url value='/template/bower_components/Ionicons/css/ionicons.min.css' />">
        <!-- Theme style -->
        <link rel="stylesheet" href="<c:url value='/template/dist/css/AdminLTE.min.css' />">
        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
              page. However, you can choose any other skin. Make sure you
              apply the skin class to the body tag so the changes take effect. -->
        <link rel="stylesheet" href="<c:url value='/template/dist/css/skins/skin-blue.min.css' />">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

        <!-- REQUIRED JS SCRIPTS -->

        <!-- jQuery 3 -->
        <script src="<c:url value='/template/bower_components/jquery/dist/jquery.min.js' />"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="<c:url value='/template/bower_components/bootstrap/dist/js/bootstrap.min.js' />"></script>
        <!-- Slimscroll -->
        <script src="<c:url value='/template/bower_components/jquery-slimscroll/jquery.slimscroll.min.js' />"></script>
        <!-- FastClick -->
        <script src="<c:url value='/template/bower_components/fastclick/lib/fastclick.js' />"></script>
        <!-- AdminLTE App -->
        <script src="<c:url value='/template/dist/js/adminlte.min.js' />"></script>

    </head>
    <!--
    BODY TAG OPTIONS:
    =================
    Apply one or more of the following classes to get the
    desired effect
    |---------------------------------------------------------|
    | SKINS         | skin-blue                               |
    |               | skin-black                              |
    |               | skin-purple                             |
    |               | skin-yellow                             |
    |               | skin-red                                |
    |               | skin-green                              |
    |---------------------------------------------------------|
    |LAYOUT OPTIONS | fixed                                   |
    |               | layout-boxed                            |
    |               | layout-top-nav                          |
    |               | sidebar-collapse                        |
    |               | sidebar-mini                            |
    |---------------------------------------------------------|
    -->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">


    <!-- Main Header -->
    <jsp:include page="../views/layouts/header.jsp" />

    <!-- Left side column. contains the logo and sidebar -->
    <jsp:include page="../views/layouts/left_side_bar.jsp" />

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                F2Paie
                <small>Fiche de paie</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">

            <!--------------------------
              | Your Page Content Here |
              -------------------------->

            <jsp:doBody/>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <jsp:include page="../views/layouts/footer.jsp" />

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">

            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
    immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->



<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>

