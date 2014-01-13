<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%-- 使用<fis:html>标签替代传统<html>标签，并设置map.json文件部署路径，缺省是“/” --%>
<fis:html mapDir="/map"> 
    <head>
        <meta charset="utf-8"/>
        <title>my jsp page</title>
        
        <%-- 使用<fis:require>替代传统<link href>、<script src>标签来加载静态资源 --%>
        <fis:require id="lib/jquery/jquery-1.10.2.js"/>
        <fis:require id="lib/bootstrap/js/bootstrap.js"/>
        <fis:require id="lib/mod/mod.js"/>
        
        <fis:require id="lib/bootstrap/css/bootstrap.css"/>
        <fis:require id="lib/bootstrap/css/bootstrap-responsive.css"/>
        
        <%-- 使用<fis:styles/>标签显示<fis:require>标签收集到的所有css资源 --%>
        <fis:styles/>
        
    </head>
    <body>
        
        <div class="main">
            <div class="main-header">
                <jsp:include page="widget/header/header.jsp" flush="true"/>
            </div>
            <div class="main-body">
                <jsp:include page="widget/body/body.jsp" flush="true"/>
            </div>
            <div class="main-footer">
                <jsp:include page="widget/footer/footer.jsp" flush="true"/>
            </div>
        </div>
        
        <%-- 在其他widget加载完毕后再加载页面的js、css，效果更好 --%>
        <fis:require id="index.css"/>
        <fis:require id="index.js"/>
        
        <%-- 使用<fis:script>标签代替传统<script>标签，它可以帮你收集页面上的js统一放到尾部 --%>
        <fis:script>
            console.log('1111');
        </fis:script>
        
        <%-- 使用<fis:scripts/>标签显示<fis:require>标签收集到的所有js资源 --%>
        <fis:scripts/>
    </body>
</fis:html>
