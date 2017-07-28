package abc.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import abc.util.BsTable;
import abc.util.PageHelper;
import abc.domain.Book;
import abc.service.BookService;
import abc.service.DefaultService;

@Controller
public class DefaultController {

	@Autowired
	private DefaultService defaultService;

	@Resource
	private BookService bookService;

	@Resource
	private SessionFactory sessionFactory;

	/*
	 * <<跳转开始>>
	 */

	@RequestMapping("/")
	public String goIndex(HttpServletRequest request) {
		request.setAttribute("type_list", bookService.getAllType());
		return "index";
	}

	@RequestMapping("/index")
	public String goIndex2(HttpServletRequest request) {
		request.setAttribute("type_list", bookService.getAllType());
		return "index";
	}

	@RequestMapping("/add")
	public String goAdd(HttpServletRequest request) {
		return "add";
	}

	@RequestMapping("/save")
	public String save(HttpServletRequest request) {

		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String type = request.getParameter("type");
		String description = request.getParameter("description");
		
		double price = 9.99;
		byte stat = 1;

		Book book = new Book(name, author, type, price, description, stat);
		bookService.save(book);

		return "index";
	}
	
	@RequestMapping("/set")
	public String goSetup() {

		return "setup";
	}

	@RequestMapping("/test")
	public String goSearch() {
		return "window";
	}

	/*
	 * <<前台请求>>
	 */

	/**
	 * 前台请求方法：根据书籍编号删除指定书籍
	 * 
	 * @param id
	 *            书籍编号（主键）
	 * @return Map 对象（操作状态标识）
	 */
	@ResponseBody
	@RequestMapping(value = "/deleteBook", method = { RequestMethod.POST })
	public Object deleteBook(String id) {

		bookService.delete(bookService.get(Integer.parseInt(id)));

		Map<String, Object> map = new HashMap<>();
		map.put("status", "success");

		return map;
	}

	@ResponseBody
	@RequestMapping("/isWeekend")
	public String isWeekend() {
		Date date = null;
		String s = "1979-01-01";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		try {
			date = sdf.parse(s);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return sdf.format(defaultService.getXDay(date));
	}

	/**
	 * 前台请求方法：获取所有书籍列表（可用书名检索)
	 * 
	 * @param ph
	 *            Bootstrap 分页对象
	 * @return Bootstrap table 数据表格对象
	 */
	@ResponseBody
	@RequestMapping("/getList")
	public BsTable getList(PageHelper ph) {

		String hql = "from Book";
		BsTable bsTable = new BsTable();
		List<Book> list = new ArrayList<Book>();

		list = bookService.get(ph);

		bsTable.setRows(list);
		bsTable.setTotal(bookService.getTotal("select count(0) " + hql));

		return bsTable;
	}

	/**
	 * 前台请求方法：按书籍类别获取列表
	 * 
	 * @param ph
	 *            Bootstrap 分页对象
	 * @return Bootstrap table 数据表格对象
	 */
	@ResponseBody
	@RequestMapping("/getType")
	public BsTable getType(PageHelper ph) {
		String hql = "from Book";
		BsTable bsTable = new BsTable();
		List<Book> list = new ArrayList<Book>();

		list = bookService.getListByType(ph);

		bsTable.setRows(list);
		if (null != ph.getType()) {
			bsTable.setTotal(bookService.getTotal("select count(0) " + hql + " where type='" + ph.getType() + "'"));
		} else {
			bsTable.setTotal(bookService.getTotal("select count(0)" + hql));
		}
		return bsTable;
	}

}
