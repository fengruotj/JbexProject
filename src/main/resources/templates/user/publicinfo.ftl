<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>chinaz</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="libs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    <style type="text/css">
        #search {
            margin-top: 6;
        }
        #fm{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            color:#666;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
    </style>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/send_user_index">智慧校园</a>
        </div>

        <div class="header-right">

            <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
            <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
            <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

        </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <img src="userimages/${user.picture}" class="img-thumbnail" />

                        <div class="inner-text">
                        ${user.userNickname}
                            <br />
                            <small>Last Login : 1 Days Ago </small>
                        </div>
                    </div>

                </li>


                <li>
                    <a class="active-menu" href="/send_user_index"><i class="fa fa-dashboard "></i>控制面板</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>结伴而行<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/send_user_jbexinfo"><i class="fa fa-toggle-on"></i>查看我的结伴而行信息</a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>社团信息<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/send_user_publicinfo"><i class="fa fa-coffee"></i>查看我的校园社团信息</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/send_user_collectinfo"><i class="fa fa-flash "></i>我关注的好友</a>

                </li>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">控制面板</h1>
                    <h1 class="page-subhead-line">
                        <label class="label label-primary">欢迎您！${user.userNickname}</label>
                    <#if user.securityControl==0>
                        <label class="label label-primary">您的权限为普通用户</label>
                    <#elseif user.securityControl==1>
                        <label class="label label-primary">您的权限为社团用户</label>
                    <#else >
                        <label class="label label-primary">您的权限为学校用户</label>
                    </#if>
                    </h1>

                </div>
            </div>
            <!-- /. ROW  -->
            <div class="row">
                <table id="dg" title="公众信息" class="easyui-datagrid"
                       url="/queryPublicInfoPageByUser"
                       toolbar="#toolbar"
                       pagination= true
                       striped=true
                       nowrap=true
                       idField="id"
                       rownumbers="true" fitColumns="true">

                    <thead frozen="true">
                    <tr>
                        <th field="ck" checkbox="true"></th>
                        <th field="id" width="30">id</th>
                    </tr>
                    </thead>

                    <thead>
                    <tr>
                        <th field="user_nickname" width="50">用户名</th>
                        <th field="email" width="50">邮箱</th>
                        <th field="title" width="50">标题</th>
                        <th field="detail" width="50">细节</th>
                        <th field="time" width="50">时间</th>
                        <th field="label" width="50">标签</th>
                    </tr>
                    </thead>
                </table>

                <div id="toolbar">
                    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑公众信息</a>
                    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除公众信息</a>
                    <input id="search">
                </div>

                <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
                     closed="true" buttons="#dlg-buttons">
                    <div class="ftitle">校园社团信息</div>
                    <form id="fm" method="post">
                        <div class="fitem">
                            <label>标题</label>
                            <input name="title" class="easyui-validatebox" required="true">
                        </div>
                        <div class="fitem">
                            <label>细节</label>
                            <input name="detail" class="easyui-validatebox" required="true">
                        </div>
                        <div class="fitem">
                            <label>时间</label>
                            <input name="time" class="easyui-validatebox" required="true" >
                        </div>
                        <div class="fitem">
                            <label>标签</label>
                            <input name="label" class="easyui-validatebox" required="true" >
                        </div>
                    </form>
                </div>
                <div id="dlg-buttons">
                    <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">保存</a>
                    <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
                </div>
            </div>

        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->

<div id="footer-sec">
    Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
</div>
<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="libs/jquery/jquery-2.0.0.min.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="libs/bootstrap/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="js/usercustom.js"></script>


<link rel="stylesheet" href="/libs/jquery-easyui-1.3.5/themes/metro/easyui.css">
<link rel="stylesheet" href="/libs/jquery-easyui-1.3.5/themes/icon.css">

<script type="text/javascript" src="/libs/jquery-easyui-1.3.5/jquery.min.js"></script>
<script type="text/javascript" src="/libs/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/libs/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
    $(function(){
        $('#dg').datagrid('load', {
            title : '',
            userId:${user.userId}
        });

        $('#search').searchbox({
            searcher : function(value, name) {
                $('#dg').datagrid('load', {
                    title : value,
                    userId:${user.userId}
                });
            },
            prompt : 'Please Input Value'
        });
    });


    var url;
    function newUser(){
        $('#dlg').dialog('open').dialog('setTitle','新建用户');
        $('#fm').form('clear');
        url = "/tuser/save";
    }

    function editUser(){
        var rows = $('#dg').datagrid('getSelections');
        if(rows.length!=1) {
            showInfoMessage("只能编辑一个用户");
        }else{
            var row=rows[0];
            $('#dlg').dialog('open').dialog('setTitle','编辑用户');
            $('#fm').form('load',row);
            url = '/tuser/update?id='+row.id;
        }
    }

    function saveUser() {
        $('#fm').form('submit', {
            url: url,
            onSubmit: function () {
                return $(this).form('validate');
            },
            success: function (result) {
                var result = eval('(' + result + ')');
                if (result.errorMsg) {
                    $.messager.show({
                        title: 'Error',
                        msg: result.errorMsg
                    });
                } else {
                    $('#dlg').dialog('close');		// close the dialog
                    $('#dg').datagrid('reload');	// reload the user data
                }
            }
        });
    }

    /**
     * 删除用户
     */
    function destroyUser() {
        var rows = $('#dg').datagrid('getSelections');
        if (rows.length != 1) {
            showInfoMessage("只能删除一个记录");
        } else {
            var row = rows[0];
            $.messager.confirm('提示信息', '你确定删除该记录吗？', function (r) {
                if (r) {
                    $.post('/tuser/delete', {id: row.id}, function (result) {
                        if (result.success) {
                            //让所有选择的选项不选中
                            $('#dg').datagrid('uncheckAll');
                            $('#dg').datagrid('reload');    // 重新载入当前页面数据
                        } else {
                            $.messager.show({	// show error message
                                title: 'Error',
                                msg: result.errorMsg
                            });
                        }
                    }, 'json');
                }
            });
        }
    }

</script>


</body>
</html>
