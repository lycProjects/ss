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
	 * �ļ��ϴ�
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
		PrintWriter out=response.getWriter();//��ǰ̨ҳ�����ajax��
		
        // CKEditor�ύ�ĺ���Ҫ��һ������  
        String callback = request.getParameter("CKEditorFuncNum");  
		
        FileItemFactory factory=new DiskFileItemFactory();//common-FileUploadʹ��
		//FileItemFactory��DiskFileItemFactory������
		ServletFileUpload upload=new ServletFileUpload(factory);
		try {
			List<FileItem> list=upload.parseRequest(request);//���ܶ���
			for(FileItem fileItem:list){
				//�Լ����
				String fileName = fileItem.getName().toLowerCase();//��ȡ�ϴ��ļ���
				String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();//��ȡ�ļ�����׺
				
				String newfileName=DateUtil.getCurrentDateStr();//��ȡ��ǰyyyyMMddhhmmss
				
				//�Լ����
				File file=new File(getServletContext().getRealPath("/").replace("\\","/")+"uploadFile/"+newfileName+"."+fileExt);//�����ļ��ĵ�ַ�Լ���Ϣ
				String newPath=request.getContextPath()+"/uploadFile/"+newfileName+"."+fileExt;//ǰ̨��ȡԤ��ͼƬ��ַ
				/*File file=new File(PropertiesUtil.getValue("imagePath")+imageName+"."+fileItem.getName().split("\\.")[1]);
				String newPath=PropertiesUtil.getValue("imageFile")+"/"+imageName+"."+fileItem.getName().split("\\.")[1];*/
				fileItem.write(file);//���ļ�д������
				
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
