<%--
  Created by IntelliJ IDEA.
  User: jinxin
  Date: 2020/12/15
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <t:base type="default,laydate,icheck,summernote"></t:base>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">

    <%@include file="/WEB-INF/jsp/flow/include/info.jsp" %>

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>用章审批流程</h5>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="commonForm" action="flow/biz/sealapproval/save" method="post">
                        <input type="hidden" name="workflowId" id="workflowId" value="${workflowId }">
                        <input type="hidden" name="optType" id="optType">
                        <input type="hidden" name="id" id="id" value="${base.id }">
                        <%@include file="/WEB-INF/jsp/flow/sealapproval/form.jsp" %>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/WEB-INF/jsp/flow/include/apphis.jsp" %>

    <c:if test="${show == '1' }">
        <%@include file="/WEB-INF/jsp/flow/include/inputapp.jsp" %>
    </c:if>

    <div class="form-group" style="margin-top: 30px;">
        <div class="col-sm-4 col-sm-offset-3">
            <button type="button"  class="btn btn-primary" onclick="printIt()">打印</button>
        </div>
    </div>

</div>
</body>

<script type="text/javascript">

    var printIt = function(){
        if (confirm('确定打印吗？')) {
            //wb.execwb(6,6)   ;
            window.print();//update by liuguocheng

        }
    }
    //时间控件初始化
    $(function() {
        laydate({
            elem : "#startDay",
            event : "focus",
            istime : true,
            format : 'YYYY-MM-DD hh:mm'
        });
        laydate({
            elem : "#endDay",
            event : "focus",
            istime : true,
            format : 'YYYY-MM-DD hh:mm'
        });

        //让页面管理表单的字段不可编辑
        $("#commonForm input").attr("disabled", "disabled");
        $("#commonForm textarea").attr("disabled", "disabled");

    });

</script>
</html>