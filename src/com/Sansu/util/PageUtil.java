package com.Sansu.util;
/**
 * �ϡ��·�ҳ
 *
 */
public class PageUtil {

	public static String getUpAndDownPagation(String targetUrl,int totalNum,int currentPage,int pageSize,String typeId){//�ϡ���ҳ  �ܼ�¼�� ��ǰҳ ҳ����  �������	List
		int totalPage=totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+1;//��ҳ��
		StringBuffer pageCode=new StringBuffer();
		pageCode.append("<ul class='pager'>");
		
		if(currentPage==1){//��һҳ
			pageCode.append("<li class='disabled'><a href='#'>��һҳ</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+typeId+"/"+(currentPage-1)+"'>��һҳ</a></li>");			
		}
		
		pageCode.append("&nbsp;&nbsp;");
		
		if(currentPage==totalPage){//��һҳ
			pageCode.append("<li class='disabled'><a href='#'>��һҳ</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+typeId+"/"+(currentPage+1)+"'>��һҳ</a></li>");			
		}
		
		pageCode.append("</ul>");
		return pageCode.toString();
	}
	
	public static String getPagation(String targetUrl,int totalNum,int currentPage,int pageSize){ 	//���������ϡ���ҳ����ʼҳ
		int totalPage=totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+1;	//����ȡ�õ���ҳ��
		StringBuffer pageCode=new StringBuffer();
		pageCode.append("<li><a href='"+targetUrl+"/1'>��ҳ</a></li>");//����
		if(currentPage==1){	//�ϡ���ҳ�ǻ��
			pageCode.append("<li class='disabled'><a href='#'>��һҳ</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+(currentPage-1)+"'>��һҳ</a></li>");
		}
		
		for(int i=currentPage-2;i<=currentPage+2;i++){
			if(i<1 || i>totalPage){
				continue;//������������������ѭ��������ִ����һ��ѭ��
			}
			if(i==currentPage){
				pageCode.append("<li class='active'><a href='#'>"+i+"</a></li>");
			}else{
				pageCode.append("<li><a href='"+targetUrl+"/"+i+"'>"+i+"</a></li>");
			}
			
		}
		
		if(currentPage==totalPage){
			pageCode.append("<li class='disabled'><a href='#'>��һҳ</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+(currentPage+1)+"'>��һҳ</a></li>");
		}
		
		pageCode.append("<li><a href='"+targetUrl+"/"+totalPage+"'>βҳ</a></li>");
		return pageCode.toString();
	}
	public static String getPagationBackground(String targetUrl,int totalNum,int currentPage,int pageSize){ 	//���������ϡ���ҳ����ʼҳ
		int totalPage=totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+1;	//����ȡ�õ���ҳ��
		StringBuffer pageCode=new StringBuffer();
		pageCode.append("<li><a href='"+targetUrl+"&page=1'>��ҳ</a></li>");//����
		if(currentPage==1){	//�ϡ���ҳ�ǻ��
			pageCode.append("<li class='disabled'><a href='#'>��һҳ</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"&page="+(currentPage-1)+"'>��һҳ</a></li>");
		}
		System.err.println("0-0***");
		for(int i=currentPage-2;i<=currentPage+2;i++){
			if(i<1 || i>totalPage){
				continue;//������������������ѭ��������ִ����һ��ѭ��
			}
			if(i==currentPage){
				pageCode.append("<li class='active'><a href='#'>"+i+"</a></li>");
			}else{
				pageCode.append("<li><a href='"+targetUrl+"&page="+i+"'>"+i+"</a></li>");
			}
			
		}
		
		if(currentPage==totalPage){
			pageCode.append("<li class='disabled'><a href='#'>��һҳ</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"&page="+(currentPage+1)+"'>��һҳ</a></li>");
		}
		
		pageCode.append("<li><a href='"+targetUrl+"&page="+totalPage+"'>βҳ</a></li>");
		return pageCode.toString();
	}
}
