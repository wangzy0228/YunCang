<%--
  Created by IntelliJ IDEA.
  User: lzw
  Date: 2017/4/15
  Time: 10:44
  To change this template use File | Settings | File Templates.
  销售界面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String rootPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
    <title>销售</title>
    <%@include file="/WEB-INF/page/common/tag.jsp" %>
    <<%-- 静态包含 --%>
    <%@include file="/WEB-INF/page/common/head.jsp" %>
    <%-- 表格 --%>
    <link href="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.css" rel="stylesheet">
    <%-- 下拉菜单 --%>
    <link href="https://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/css/bootstrap-select.css" rel="stylesheet">
    <%-- 日期选择器插件样式 --%>
    <link href="https://cdn.bootcss.com/flatpickr/2.6.1/flatpickr.css" rel="stylesheet">
    <%--<link href="https://cdn.bootcss.com/flatpickr/2.6.1/rtl/themes/dark.rtl.css" rel="stylesheet">--%>
    <style>
        .checkbox, .radio {
            padding: 0;
            margin: 0;
        }

        .fixed-table-container .bs-checkbox .th-inner {
            padding: 8px;
        }

        .fixed-table-pagination .pagination a {
            padding: 12px 10px;
            line-height: 16px;
        }

        .pagination li {
            margin-right: 0;
        }

        .pagination li.disabled.active > a,
        .pagination li.disabled.active > span {
            color: #fff;
            background-color: #1abc9c;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span>云仓</span>Admin</a>
            <ul class="user-menu">
                <li class="dropdown pull-right">
                    <a id="user" href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                            class="glyphicon glyphicon-user"></span>${user}<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="javascript:;" id="personInfo"><span class="glyphicon glyphicon-user"></span>
                            个人资料</a></li>
                        <li><a href="javascript:;" id="setting"><span class="glyphicon glyphicon-cog"></span> 设置</a>
                        </li>
                        <li><a href="javascript:;" id="logout"><span class="glyphicon glyphicon-log-out"></span> 注销</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.container-fluid -->
</nav>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <form role="search">
        <div class="form-group">
            <img src="<%=rootPath%>/resources/img/logo-dark.png">
        </div>
    </form>
    <ul class="nav menu">
        <li><a href="/yuncang/index"><span class="glyphicon glyphicon-home"></span> 起始页</a></li>
        <li><a href="/yuncang/import"><span class="glyphicon glyphicon-shopping-cart"></span> 采购</a></li>
        <li class="active"><a href="/yuncang/sale"><span class="glyphicon glyphicon-tag"></span> 销售</a></li>
        <li class="parent"><a href="#sub-item-1" data-toggle="collapse"><span
                class="glyphicon glyphicon-folder-close"></span>
            仓库<span
                    data-toggle="collapse"
                    href="#sub-item-1"
                    class="icon pull-right"><em
                    class="glyphicon glyphicon-s glyphicon-plus"></em></span></a>
            <ul class="children collapse" id="sub-item-1">
                <li>
                    <a class="" href="/yuncang/goods">
                        <span class="glyphicon glyphicon-tags"></span> 商品管理
                    </a>
                </li>
                <li>
                    <a class="" href="/yuncang/proffer">
                        <span class="glyphicon glyphicon-cloud-download"></span> 供货商管理
                    </a>
                </li>
            </ul>
        </li>
        <li><a href="/yuncang/maney"><span class="glyphicon glyphicon-usd"></span> 资金</a></li>

        <li role="presentation" class="divider"></li>

    </ul>
    <div class="attribution">Template by <a href="http://www.medialoot.com/item/lumino-admin-bootstrap-template/">Medialoot</a>
    </div>
</div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
            <li class="active">销售</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">销售</h1>

        </div>
    </div><!--/.row-->

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body tabs">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab1" data-toggle="tab">销售记录</a></li>
                        <li><a href="#tab2" data-toggle="tab">销售单</a></li>
                        <li><a href="#tab3" data-toggle="tab">销售分析</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">
                            <form id="toolbar" class="form-inline">
                                <div class="form-group has-success">
                                    <div class="col-sm-6">
                                        <input type="text" placeholder="开始日期" class="form-control flat" data-input
                                               id="date_from"> <!-- input is mandatory -->
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" placeholder="结束日期" class="form-control flat" data-input
                                               id="date_to"> <!-- input is mandatory -->
                                    </div>
                                </div>
                                <button type="button" style="margin-left:10px" id="btn_query"
                                        class="btn btn-primary">查询
                                </button>
                            </form>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <table id="table" data-row-style="rowStyle">

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div><!--/.row-->
                        </div>
                        <div class="tab-pane fade" id="tab2">
                            <div class="col-md-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        NO.${saleId}
                                    </div>
                                    <div class="panel-body">
                                        <form class="form-horizontal" id="add_form">
                                            <div class="form-group">
                                                <label for="goodsName" class="col-sm-2 control-label">商品:</label>
                                                <div class="col-sm-6">
                                                    <select class="selectpicker" id="goodsName" data-live-search="true">
                                                        <c:forEach var="goods" items="${goodsBills}">
                                                            <option value="${goods.goodsId}">${goods.goodsName}(￥<p
                                                                    id="goodsPrice">${goods.goodsPrice}</p>)
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="saleCount" class="col-sm-2 control-label">出货量:</label>
                                                <div class="col-sm-6">
                                                    <input name="saleCount" type="number" class="form-control"
                                                           id="saleCount"
                                                           placeholder="数量">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="remark" class="col-sm-2 control-label">备注</label>
                                                <div class="col-sm-6">
                                                <textarea name="remarks" class="form-control" id="remark"
                                                          placeholder="请输入备注"></textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="panel-footer">
                                        <button type="button" class="btn btn-primary" id="btn_submit">提交</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab3">
                            <h4>今日数据</h4>
                            <div class="row">
                                <div class="col-xs-12 col-md-6 col-lg-3">
                                    <div class="panel panel-teal panel-widget">
                                        <div class="row no-padding">
                                            <div class="col-sm-3 col-lg-5 widget-left">
                                                <em class="glyphicon glyphicon-tasks glyphicon-l"></em>
                                            </div>
                                            <div class="col-sm-9 col-lg-7 widget-right">
                                                <div class="large">
                                                    <a href="/yuncang/goods">${goodsBills.size()}</a>
                                                </div>
                                                <div class="text-muted">今日在架商品</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6 col-lg-3">
                                    <div class="panel panel-blue panel-widget ">
                                        <div class="row no-padding">
                                            <div class="col-sm-3 col-lg-5 widget-left">
                                                <em class="glyphicon glyphicon-tag glyphicon-l"></em>
                                            </div>
                                            <div class="col-sm-9 col-lg-7 widget-right">
                                                <div class="large">${todaySaleTotalCount}</div>
                                                <div class="text-muted">今日销量</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6 col-lg-3">
                                    <div class="panel panel-red panel-widget">
                                        <div class="row no-padding">
                                            <div class="col-sm-3 col-lg-5 widget-left">
                                                <em class="glyphicon glyphicon-usd glyphicon-l"></em>
                                            </div>
                                            <div class="col-sm-9 col-lg-7 widget-right">
                                                <div class="large">￥${todaySaleTotalPrice}</div>
                                                <div class="text-muted">今日营业额</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!--/.row-->
                            <h4>总数据</h4>

                            <div class="row">

                                <div class="col-xs-12 col-md-6 col-lg-3">
                                    <div class="panel panel-blue panel-widget ">
                                        <div class="row no-padding">
                                            <div class="col-sm-3 col-lg-5 widget-left">
                                                <em class="glyphicon glyphicon-tag glyphicon-l"></em>
                                            </div>
                                            <div class="col-sm-9 col-lg-7 widget-right">
                                                <div class="large">${SaleTotalCount}</div>
                                                <div class="text-muted">销售总量</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6 col-lg-3">
                                    <div class="panel panel-red panel-widget">
                                        <div class="row no-padding">
                                            <div class="col-sm-3 col-lg-5 widget-left">
                                                <em class="glyphicon glyphicon-usd glyphicon-l"></em>
                                            </div>
                                            <div class="col-sm-9 col-lg-7 widget-right">
                                                <div class="large">￥${SaleTotalPrice}</div>
                                                <div class="text-muted">总营业额</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!--/.row-->
                        </div>
                    </div>
                </div>
            </div><!--/.panel-->
        </div><!--/.col-->
    </div>

</div>    <!--/.main-->


</body>
<%@include file="common/foot.jsp" %>
<%-- 日期选择器插件 --%>
<script src="https://cdn.bootcss.com/flatpickr/2.6.1/flatpickr.js"></script>
<%-- 日期选择器插件中文组件 --%>
<script src="https://cdn.bootcss.com/flatpickr/2.6.1/l10n/zh.js"></script>
<%-- bootstrapTable插件--%>
<script src="<%=rootPath%>/resources/js/common/bootstrap-table.js"></script>
<%-- bootstrapTable插件中文组件 --%>
<script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.js"></script>
<%-- 时间格式化插件 --%>
<script src="https://cdn.bootcss.com/moment.js/2.18.1/moment.js"></script>
<%-- 时间格式化插件中文组件 --%>
<script src="https://cdn.bootcss.com/moment.js/2.18.1/locale/zh-cn.js"></script>
<%-- 表单验证插件 --%>
<script src="http://cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
<%-- 表单验证插件中文组件 --%>
<script src="http://cdn.bootcss.com/bootstrap-validator/0.5.3/js/language/zh_CN.min.js"></script>
<%-- 下拉菜单插件 --%>
<script src="https://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/js/bootstrap-select.js"></script>
<%-- 下拉菜单插件中文组件 --%>
<script src="https://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/js/i18n/defaults-zh_CN.js"></script>
<script src="<%=rootPath%>/resources/js/sale/sale.js"></script>
<script src="<%=rootPath%>/resources/js/common/user.js"></script>
<script>
    !function ($) {
        $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
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
</html>
