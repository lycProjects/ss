package com.Sansu.util;
/**
 * 上、下分页
 *
 */
public class PageUtil {

	public static String getUpAndDownPagation(String targetUrl,int totalNum,int currentPage,int pageSize,String typeId){//上、下页  总记录数 当前页 页容量  新闻类别	List
		int totalPage=totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+1;//总页数
		StringBuffer pageCode=new StringBuffer();
		pageCode.append("<ul class='pager'>");
		
		if(currentPage==1){//上一页
			pageCode.append("<li class='disabled'><a href='#'>上一页</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+typeId+"/"+(currentPage-1)+"'>上一页</a></li>");			
		}
		
		pageCode.append("&nbsp;&nbsp;");
		
		if(currentPage==totalPage){//下一页
			pageCode.append("<li class='disabled'><a href='#'>下一页</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+typeId+"/"+(currentPage+1)+"'>下一页</a></li>");			
		}
		
		pageCode.append("</ul>");
		return pageCode.toString();
	}
	
	public static String getPagation(String targetUrl,int totalNum,int currentPage,int pageSize){ 	//新闻评论上、下页、起始页
		int totalPage=totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+1;	//计算取得的总页数
		StringBuffer pageCode=new StringBuffer();
		pageCode.append("<li><a href='"+targetUrl+"/1'>首页</a></li>");//定的
		if(currentPage==1){	//上、下页是活的
			pageCode.append("<li class='disabled'><a href='#'>上一页</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+(currentPage-1)+"'>上一页</a></li>");
		}
		
		for(int i=currentPage-2;i<=currentPage+2;i++){
			if(i<1 || i>totalPage){
				continue;//符合条件的跳出本次循环，继续执行下一次循环
			}
			if(i==currentPage){
				pageCode.append("<li class='active'><a href='#'>"+i+"</a></li>");
			}else{
				pageCode.append("<li><a href='"+targetUrl+"/"+i+"'>"+i+"</a></li>");
			}
			
		}
		
		if(currentPage==totalPage){
			pageCode.append("<li class='disabled'><a href='#'>下一页</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"/"+(currentPage+1)+"'>下一页</a></li>");
		}
		
		pageCode.append("<li><a href='"+targetUrl+"/"+totalPage+"'>尾页</a></li>");
		return pageCode.toString();
	}
	public static String getPagationBackground(String targetUrl,int totalNum,int currentPage,int pageSize){ 	//新闻评论上、下页、起始页
		int totalPage=totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+1;	//计算取得的总页数
		StringBuffer pageCode=new StringBuffer();
		pageCode.append("<li><a href='"+targetUrl+"&page=1'>首页</a></li>");//定的
		if(currentPage==1){	//上、下页是活的
			pageCode.append("<li class='disabled'><a href='#'>上一页</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"&page="+(currentPage-1)+"'>上一页</a></li>");
		}
		System.err.println("0-0***");
		for(int i=currentPage-2;i<=currentPage+2;i++){
			if(i<1 || i>totalPage){
				continue;//符合条件的跳出本次循环，继续执行下一次循环
			}
			if(i==currentPage){
				pageCode.append("<li class='active'><a href='#'>"+i+"</a></li>");
			}else{
				pageCode.append("<li><a href='"+targetUrl+"&page="+i+"'>"+i+"</a></li>");
			}
			
		}
		
		if(currentPage==totalPage){
			pageCode.append("<li class='disabled'><a href='#'>下一页</a></li>");
		}else{
			pageCode.append("<li><a href='"+targetUrl+"&page="+(currentPage+1)+"'>下一页</a></li>");
		}
		
		pageCode.append("<li><a href='"+targetUrl+"&page="+totalPage+"'>尾页</a></li>");
		return pageCode.toString();
	}
}
