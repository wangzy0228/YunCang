<%--
  Created by IntelliJ IDEA.
  User: lzw
  Date: 2017/4/15
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String rootPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Lumino - Panels</title>
    <%-- 静态包含 --%>
    <%@include file="/WEB-INF/page/common/head.jsp"%>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span>云仓</span>Admin</a>
            <ul class="user-menu">
                <li class="dropdown pull-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 用户 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 个人资料</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-cog"></span> 设置</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.container-fluid -->
</nav>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <form role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="搜索">
        </div>
    </form>
    <ul class="nav menu">
        <li><a href="/yuncang/index"><span class="glyphicon glyphicon-home"></span> 起始页</a></li>
        <li><a href="/yuncang/import"><span class="glyphicon glyphicon-shopping-cart"></span> 采购</a></li>
        <li><a href="/yuncang/sale"><span class="glyphicon glyphicon-tag"></span> 销售</a></li>
        <li><a href="/yuncang/goods"><span class="glyphicon glyphicon-folder-close"></span> 仓库</a></li>
        <li><a href="/yuncang/maney"><span class="glyphicon glyphicon-usd"></span> 资金</a></li>
        <li class="active"><a href="/yuncang/chart"><span class="glyphicon glyphicon-list-alt"></span> 报表</a></li>
        <li class="parent ">
            <a href="#">
                <span class="glyphicon glyphicon-list"></span> Dropdown <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>
            </a>
            <ul class="children collapse" id="sub-item-1">
                <li>
                    <a class="" href="#">
                        <span class="glyphicon glyphicon-share-alt"></span> Sub Item 1
                    </a>
                </li>
                <li>
                    <a class="" href="#">
                        <span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
                    </a>
                </li>
                <li>
                    <a class="" href="#">
                        <span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
                    </a>
                </li>
            </ul>
        </li>
        <li role="presentation" class="divider"></li>
        <li><a href="login/login.jsp"><span class="glyphicon glyphicon-user"></span> 用户</a></li>
    </ul>
    <div class="attribution">Template by <a href="http://www.medialoot.com/item/lumino-admin-bootstrap-template/">Medialoot</a></div>
</div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
            <li class="active">Elements</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Alerts &amp; Panels</h1>
        </div>
    </div><!--/.row-->


    <div class="row">
        <div class="col-lg-12">
            <h2>Alerts</h2>
            <div class="alert bg-primary" role="alert">
                <span class="glyphicon glyphicon-info-sign"></span> Welcome to the admin dashboard panel bootstrap template <a href="#" class="pull-right"><span class="glyphicon glyphicon-remove"></span></a>
            </div>
            <div class="alert bg-success" role="alert">
                <span class="glyphicon glyphicon-check"></span> Welcome to the admin dashboard panel bootstrap template <a href="#" class="pull-right"><span class="glyphicon glyphicon-remove"></span></a>
            </div>
            <div class="alert bg-warning" role="alert">
                <span class="glyphicon glyphicon-warning-sign"></span> Welcome to the admin dashboard panel bootstrap template <a href="#" class="pull-right"><span class="glyphicon glyphicon-remove"></span></a>
            </div>
            <div class="alert bg-danger" role="alert">
                <span class="glyphicon glyphicon-exclamation-sign"></span> Welcome to the admin dashboard panel bootstrap template <a href="#" class="pull-right"><span class="glyphicon glyphicon-remove"></span></a>
            </div>
        </div>
    </div><!--/.row-->


    <div class="row">
        <div class="col-lg-12">
            <h2>Basic Panels</h2>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Default Panel
                </div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Primary Panel
                </div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Success Panel
                </div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div>

    </div><!-- /.row -->

    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    Info Panel
                </div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    Warning Panel
                </div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    Danger Panel
                </div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div>

    </div><!-- /.row -->




    <div class="row">
        <div class="col-lg-12">
            <h2>Widget Panels</h2>
        </div>

        <div class="col-md-6">
            <div class="panel panel-blue">
                <div class="panel-heading dark-overlay">Blue Panel</div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div><!--/.col-->

        <div class="col-md-6">
            <div class="panel panel-teal">
                <div class="panel-heading dark-overlay">Teal Panel</div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div><!--/.col-->

        <div class="col-md-6">
            <div class="panel panel-orange">
                <div class="panel-heading dark-overlay">Orange Panel</div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div><!--/.col-->

        <div class="col-md-6">
            <div class="panel panel-red">
                <div class="panel-heading dark-overlay">Red Panel</div>
                <div class="panel-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ante in sapien blandit luctus sed ut lacus. Phasellus urna est, faucibus nec ultrices placerat, feugiat et ligula. Donec vestibulum magna a dui pharetra molestie. Fusce et dui urna.</p>
                </div>
            </div>
        </div><!--/.col-->
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h2>Tab Panels</h2>
        </div>

        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-body tabs">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab1" data-toggle="tab">Tab 1</a></li>
                        <li><a href="#tab2" data-toggle="tab">Tab 2</a></li>
                        <li><a href="#tab3" data-toggle="tab">Tab 3</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">
                            <h4>Tab 1</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
                        </div>
                        <div class="tab-pane fade" id="tab2">
                            <h4>Tab 2</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
                        </div>
                        <div class="tab-pane fade" id="tab3">
                            <h4>Tab 3</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
                        </div>
                    </div>
                </div>
            </div><!--/.panel-->
        </div><!--/.col-->

        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-body tabs">

                    <ul class="nav nav-pills">
                        <li class="active"><a href="#pilltab1" data-toggle="tab">Tab 1</a></li>
                        <li><a href="#pilltab2" data-toggle="tab">Tab 2</a></li>
                        <li><a href="#pilltab3" data-toggle="tab">Tab 3</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="pilltab1">
                            <h4>Tab 1</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
                        </div>
                        <div class="tab-pane fade" id="pilltab2">
                            <h4>Tab 2</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
                        </div>
                        <div class="tab-pane fade" id="pilltab3">
                            <h4>Tab 3</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget rutrum purus. Donec hendrerit ante ac metus sagittis elementum. Mauris feugiat nisl sit amet neque luctus, a tincidunt odio auctor. </p>
                        </div>
                    </div>
                </div>
            </div><!--/.panel-->
        </div><!-- /.col-->

    </div><!-- /.row -->

</div><!--/.main-->


<script>
    !function ($) {
        $(document).on("click","ul.nav li.parent > a > span.icon", function(){
            $(this).find('em:first').toggleClass("glyphicon-minus");
        });
        $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
    }(window.jQuery);

    $(window).on('resize', function () {
        if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
    })
    $(window).on('resize', function () {
        if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
    })
</script>
</body>
<%@include file="common/foot.jsp"%>
</html>