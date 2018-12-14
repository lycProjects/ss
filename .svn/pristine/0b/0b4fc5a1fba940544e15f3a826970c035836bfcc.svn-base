package com.Sansu.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.Sansu.util.DateUtil;

public class FileUploadServlet extends HttpServlet{

	/**
	 * 文件上传
	 */
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();//向前台页面输出ajax流
		
        // CKEditor提交的很重要的一个参数  
        String callback = request.getParameter("CKEditorFuncNum");  
		
        FileItemFactory factory=new DiskFileItemFactory();//common-FileUpload使用
		//FileItemFactory是DiskFileItemFactory的子类
		ServletFileUpload upload=new ServletFileUpload(factory);
		try {
			List<FileItem> list=upload.parseRequest(request);//可能多条
			for(FileItem fileItem:list){
				//自己添加
				String fileName = fileItem.getName().toLowerCase();//获取上传文件名
				String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();//获取文件名后缀
				
				String newfileName=DateUtil.getCurrentDateStr();//获取当前yyyyMMddhhmmss
				
				//自己添加
				File file=new File(getServletContext().getRealPath("/").replace("\\","/")+"uploadFile/"+newfileName+"."+fileExt);//保存文件的地址以及信息
				String newPath=request.getContextPath()+"/uploadFile/"+newfileName+"."+fileExt;//前台获取预览图片地址
				/*File file=new File(PropertiesUtil.getValue("imagePath")+imageName+"."+fileItem.getName().split("\\.")[1]);
				String newPath=PropertiesUtil.getValue("imageFile")+"/"+imageName+"."+fileItem.getName().split("\\.")[1];*/
				fileItem.write(file);//向文件写，保存
				
		        out.println("<script type=\"text/javascript\">");  
		        out.println("window.parent.CKEDITOR.tools.callFunction(" + callback  
		                + ",'" + newPath + "',''" + ")");
		        out.println("</script>"); 
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
