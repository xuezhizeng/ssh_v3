<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'data_retrieve.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div style="padding: 15px">
		<div style="margin:20px 0;">
			<!-- 先手动输入，后期考虑使用select，并从后台获取 -->
			<span>表名：</span><!-- <input class="easyui-validatebox" type="text"
				id="data_retrieve_tableName" data-options="required:true"
				style="width:300px" value="t1" />  -->
				<input id="cc_data_retrieve_tableName" > 
				
				<br>
			<p>请输入检索条件，进行检索:</p>
			<div >
				列簇名：<input class="easyui-validatebox" type="text"
					id="data_retrieve_column_family" style="width:60px;" value="" /> 
				列名：<input class="easyui-validatebox" type="text"
					id="data_retrieve_column_qualifier" style="width:60px;" value="" />
				
				Start RowKey：<input class="easyui-validatebox" type="text"
					id="data_retrieve_start_rowkey" style="width:60px;" value="-1" /> 
				End RowKey：<input class="easyui-validatebox" type="text"
					id="data_retrieve_end_rowkey" style="width:60px;" value="-1" />
				
				记录数： <select
					id="data_retrieve_limit_records" class="easyui-combobox"
					style="width:85px;">
					<option value="10">10</option>
					<option value="50">50</option>
					<option value="100">100</option>
					<option value="300">300</option>
				</select>
				
				
				<a  class="easyui-linkbutton" iconCls="icon-filter" onclick="retrieve_data()">确定</a>
				
			</div>
		</div>

		<table id="dg_data_retrieve" class="easyui-datagrid"></table>
	</div>
	<script type="text/javascript" src="js/hbaseCommand/hbaseCommand.js"></script>
  </body>
</html>
