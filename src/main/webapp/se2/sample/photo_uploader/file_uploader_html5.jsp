<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.UUID"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.io.OutputStream"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%
	//실제로 서버에 어디에 저장할건지 지정
	String sFileInfo = "C:\\";
	// 파일명 - 싱글파일업로드와 다르게 멀티파일업로드는 HEADER로 넘어옴 
	String name = URLDecoder.decode(request.getHeader("file-name"),"UTF-8");
	// 확장자 
	String ext = name.substring(name.lastIndexOf(".") + 1); // 파일 기본경로 
	String defaultPath = request.getServletContext().getRealPath("/"); // 파일 기본경로 _ 상세경로 
	
	ServletContext sct = request.getSession().getServletContext();
    System.out.println("FileUpload12");
    String rootPath = sct.getRealPath("/");
    System.out.println("FileUpload13");
    File pt = new File(rootPath+"..");
    System.out.println("FileUpload14");
    String uploadPath = pt.getCanonicalPath()+"\\fastfood\\mcsad";
	
	System.out.println("defaultPath위치 : "+defaultPath); 
	System.out.println("uploadPath위치 : "+uploadPath); 
	String path = uploadPath + File.separator;
	File file = new File(path);
	if (!file.exists()) {
		file.mkdirs();
	}
	String realname = UUID.randomUUID().toString() + "." + ext;
	InputStream is = request.getInputStream();
	OutputStream os = new FileOutputStream(path + realname);
	int numRead; // 파일쓰기 
	byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))]; 
	//read 는 입력스트림에서 하나의 바이트씩 읽어들이는데, 끝을 만나면 -1을 반환함
	while((numRead = is.read(b,0,b.length)) != -1) { 
		os.write(b,0,numRead);
	} 
	if(is != null) { 
		is.close(); 
	} 
	os.flush(); 
	os.close(); 
	System.out.println("path : "+path); 
	System.out.println("realname : "+realname);
	// 파일 삭제 // File f1 = new File(path, realname); // if (!f1.isDirectory()) { // if(!f1.delete()) { // System.out.println("File 삭제 오류!"); // } // }
	sFileInfo += "&bNewLine=true&sFileName="+ name+"&sFileURL="+"/fastfood/mcsad/"+realname; 
	out.println(sFileInfo); 
	// ./로컬경로에 파일 저장하기 ============================================

%>