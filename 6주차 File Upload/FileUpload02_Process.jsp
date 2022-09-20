<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*, org.apache.commons.fileupload.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<table border="1">

	<%
		request.setCharacterEncoding("UTF-8");
		String FileUploadPath = "c:\\Upload";
		DiskFileUpload Upload = new DiskFileUpload();
		List Para = Upload.parseRequest(request);
		Iterator iter = Para.iterator();
		int i = 0;
		while(iter.hasNext())
		{
			FileItem temp = (FileItem)iter.next();
			String [] List1 = {"이름", "주소", "설명"};
			String Value = temp.getString("utf-8");
			if(i < 3)
			{
				out.println("<tr><td>" + List1[i] + "</td>" + "<td>" + Value + "</td></tr>\n");
			}

			if(!temp.isFormField())
			{
				String FileName = temp.getName();
				FileName = FileName.substring(FileName.lastIndexOf("\\") + 1);
				File Dest = new File(FileUploadPath + "/" + FileName);
				temp.write(Dest);
				out.println("<tr><td>" + "요청 파라미터 이름" + "</td>" + "<td>" + temp.getFieldName() + "</td></tr>\n");
				out.println("<tr><td>" + "실제 파일 이름" + "</td>" + "<td>" + temp.getName() + "</td></tr>\n");
				out.println("<tr><td>" + "파일 컨텐츠 타입" + "</td>" + "<td>" + temp.getContentType() + "</td></tr>\n");
				out.println("<tr><td>" + "파일 크기 " + "</td>" + "<td>" + temp.getSize() + "</td></tr>\n");
			}
			i++;
		}
	%>
	</table>
</body>
</html>