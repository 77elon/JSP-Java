<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.oreilly.servlet.*, com.oreilly.servlet.multipart.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
<body>
	<table border="1">
 	<%
		MultipartRequest Object1 = new MultipartRequest(request, "c:\\Upload", 
				1024 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
		Enumeration <String> FileNames = Object1.getFileNames();

		String Name = Object1.getParameter("Name");
		String Addr = Object1.getParameter("Addr");
		String Desc = Object1.getParameter("Desc");
		
		out.println("<tr><td>" + "이름" + "</td>" + "<td>" + Name + "</td></tr>\n");
		out.println("<tr><td>" + "주소" + "</td>" + "<td>" + Addr + "</td></tr>\n");
		out.println("<tr><td>" + "설명" + "</td>" + "<td>" + Desc + "</td></tr>\n");

		while(FileNames.hasMoreElements())
		{
			String File_Parameter = FileNames.nextElement();
			String Req_FileName = Object1.getOriginalFileName(File_Parameter);
			String Real_FileName = Object1.getFilesystemName(File_Parameter);
			String FileType = Object1.getContentType(File_Parameter);
			long FileSize = Object1.getFile(File_Parameter).length();
			
			out.println("<tr><td>" + "요청 파라미터 이름" + "</td>" + "<td>" + File_Parameter + "</td></tr>\n");
			out.println("<tr><td>" + "실제 파일 이름" + "</td>" + "<td>" + Req_FileName + "</td></tr>\n");
			out.println("<tr><td>" + "저장 파일 이름" + "</td>" + "<td>" + Real_FileName + "</td></tr>\n");
			out.println("<tr><td>" + "파일 컨텐츠 유형" + "</td>" + "<td>" + FileType + "</td></tr>\n");
			out.println("<tr><td>" + "파일 크기 " + "</td>" + "<td>" + FileSize + "</td></tr>\n");
		}
	%>
	
	</table>
</body>
</html>