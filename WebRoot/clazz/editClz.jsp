<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/menu.css"/>
</head>

<body>
	<form action="clazz/clazzAction_edit?pageNum=${pageNum }" method="post" id="myform">
		<input hidden name="clzID" value="${clzID}" />
		<table class="insert-tab" width="70%">	
			<tbody>
				<tr>
					<th>所属专业(必选)：</th>
					<td>
						<select name="major.majID" form="myform">
							<option value="${Major.majID }" selected="selected" >${major.majName }</option>
							<c:forEach var="Major" items="${allMajor}">
								<option value="${Major.majID }">${Major.majName }</option>
							</c:forEach>			
						</select>						
					</td>			
				</tr> 				
				<tr>
					<th><i class="require-red"></i>班级名称：</th>
					<td><input name="clzName" class="common-text required" value="${clzName }"
						id="clzName" size="20" type="text">
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
						<input class="btn btn-primary btn6 mr10" value="提交"
						type="submit">
						<input class="btn btn-primary btn6 mr10" value="返回"
						type="button" onclick="location='clazz/clazzAction_findAllPage?pageNum=${pageNum}'">
					</td>
				</tr>			
			</tbody>
		</table>
	</form>
</body>
</html>
