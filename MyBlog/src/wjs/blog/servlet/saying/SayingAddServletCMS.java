package wjs.blog.servlet.saying;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;

import wjs.blog.domain.*;
import wjs.blog.dao.impl.*;
import wjs.blog.dao.*;
/**
 * Servlet implementation class GuestBookAddServlet
 */
@WebServlet("/say_add")
public class SayingAddServletCMS extends HttpServlet {
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			org.apache.commons.fileupload.servlet.ServletFileUpload servletFileUpload = new org.apache.commons.fileupload.servlet.ServletFileUpload(fileItemFactory);
			List<FileItem> list = servletFileUpload.parseRequest(request);
			for(FileItem fileItem:list){
			
					
					//String name = fileItem.getFieldName();
					//文本值
					String value = fileItem.getString("UTF-8");
					String fileName = fileItem.getName();				
					InputStream inputStream = fileItem.getInputStream();
					String path = request.getServletContext().getRealPath("image/"+fileName);
					OutputStream outputStream = new FileOutputStream(path);
					//1.设置请求参数的编码
					request.setCharacterEncoding("utf8");
					//2.得到请求参数
					Date date=new Date();
					DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
					String saytime=format.format(date);
					
					//3.创建实体对象
					Saying say = new Saying();
					say.setImg(path);
					say.setSaycontent(value);
					say.setSaytime(saytime);
					//4.借助IGuestBookDao将信息添加到DB中
					ISayDao sayDao = new SayDaoJDBCImpl();
					
					int i = sayDao.add(say);
						
					if(i == 1){
						
						response.sendRedirect("say_list");
						
					}		
					int temp = 0;
					while((temp = inputStream.read())!=-1){
						outputStream.write(temp);
					}
					outputStream.close();
					inputStream.close();
					System.out.println("上传成功！");
			
					
					
				
				
			}
			
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
    

}
