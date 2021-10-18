package cn.itcast.bookStore.web.servlet.client;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.xml.registry.RegistryException;


import javax.swing.JOptionPane;

import org.apache.commons.beanutils.BeanUtils;

import cn.itcast.bookStore.domain.User;
import cn.itcast.bookStore.exception.RegisterException;
import cn.itcast.bookStore.service.UserService;
import cn.itcast.bookStore.utils.ActiveCodeUtils;

public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 将表单提交的数据封装到javaBean
		User user = new User();
		
			try {
				BeanUtils.populate(user, request.getParameterMap());
			} catch (IllegalAccessException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (InvocationTargetException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		// 调用service完成注册操作。
		UserService service = new UserService();
		int index;
		try {
			 index=service.register(user);
			
		} catch (RegisterException e) {
			e.printStackTrace();
//			response.getWriter().write(e.getMessage());
			return;
		}
		// 注册成功，跳转到registersuccess.jsp
		if(index>0){
			JOptionPane.showConfirmDialog(null, "注册成功");
		response.sendRedirect(request.getContextPath() + "/client/login.jsp");
		}
		return;
	}
}
