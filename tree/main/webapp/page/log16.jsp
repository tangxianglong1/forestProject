<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>日志信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../layuiadmin/style/admin.css" media="all">
</head>
<body>
<div style="border: solid black;background-color: lightgrey;width: 800px;height: 700px;position: absolute;left: 10%">
    <b style="position: relative;left: 40%">森林病虫害防治系统</b>
    <hr>
<h2 class="css_h2" style="color: red; text-align:center">日志信息</h2>
<%--<table border="1" cellspacing="0">--%>
    <%--<tr>--%>
        <%--<th>日志类容</th>--%>
        <%--<th>日期</th>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${list}" var="list">--%>
        <%--<tr><td>${list.LogContents}</td><td>${list.LogDate}</td></tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>

<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb">
        <a lay-href="">主页</a>
        <a><cite>组件</cite></a>
        <a><cite>数据表格</cite></a>
        <a><cite>简单用法</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">赋值已知数据</div>
                <div class="layui-card-body">
                    <table class="layui-hide" id="test-table-data"></table>
                </div>
            </div>
        </div>
    </div>
</div>
    <div class="layui-card-body">
        <ul id="test-laypage-biuuu_city_list" style=" list-style:none">
            <li><a href="javaScript:void(0)" id="firstId" class="a-page-class">首页</a>
                <a href="javaScript:void(0)" id="prevId" class="a-page-class">上一页</a>
                <span class="page">${page}</span>
                <span class="maxPage">/${maxPage}</span>

                <a href="javaScript:void(0)" id="nextId" class="a-page-class">下一页</a>
                <a href="javaScript:void(0)" id="lastId" class="a-page-class">尾页</a>
            </li>
        </ul>
    </div>

  <div style="margin-left: 70%">
        <table border="1" cellspacing="0"><tr><th>
            <span>查询日志信息</span><br>
        起始日期:<input type="date"><br>
        结束日期:<input type="date"><br>
        <input type="button" value="查询">
        </th></tr></div>
    </table>
</div>
<script src="../layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '../layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'table'], function(){
        var table = layui.table;

        //展示已知数据
        table.render({
            elem: '#test-table-data'
            ,cols: [[ //标题栏
             {field: 'email', title: '邮箱', minWidth: 150}
                ,{field: 'sign', title: '签名', minWidth: 160}
                ,{field: 'sex', title: '性别', width: 80}
                ,{field: 'city', title: '城市', width: 100}

            ]]
            ,data: [{
               "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "108"
                ,"joinTime": "2016-10-14"
            }, {
                "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "106"
                ,"joinTime": "2016-10-14"
                ,"LAY_CHECKED": true
            }, {
              "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "106"
                ,"joinTime": "2016-10-14"
            }, {
                "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "106"
                ,"joinTime": "2016-10-14"
            }, {
               "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "106"
                ,"joinTime": "2016-10-14"
            }, {
                "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "106"
                ,"joinTime": "2016-10-14"
            }, {
                "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "106"
                ,"joinTime": "2016-10-14"
            }, {
               "email": "xianxin@layui.com"
                ,"sex": "男"
                ,"city": "浙江杭州"
                ,"sign": "人生恰似一场修行"

                ,"ip": "192.168.0.8"
                ,"logins": "106"
                ,"joinTime": "2016-10-14"
            }]
            //,skin: 'line' //表格风格
            ,even: true
            //,page: true //是否显示分页
            //,limits: [5, 7, 10]
            //,limit: 5 //每页默认显示的数量
        });

    });
</script>

</body>
</html>
