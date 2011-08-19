<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Demo List</h1>
	<table border="2" align="center">
		<tr>
			<td width="150" align="center">Title</td>
			<td width="150" align="center">Number of Videos</td>
			<td width="150" align="center">Information</td>
			<td width="150" align="center">Go to...</td>
		</tr>
		
		<s:iterator value="demos">
			<tr>
				<td width="150" align="center"><s:property value="title"/></td>
				<td width="150" align="center"><s:property value="numberOfVideos"/></td>
				<td width="150" align="center"><s:property value="info"/></td>
				<td width="150" align="center">
					<s:url var="goto" action="display" namespace="/struts">
						<s:param name="fileLoc"><s:property value="fileLoc"/></s:param>
					</s:url>
					<a href="goto">Go to</a>
				</td>
			</tr>
		</s:iterator>
		
	</table>
	
</body>
</html>