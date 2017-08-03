package abc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import abc.dao.BookDao;
import abc.domain.Book;
import abc.service.BookService;
import abc.util.PageHelper;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDao bookDao;
	
	public Book get(int id) {
		return bookDao.get(id);
	}

	public void save(Book book) {
		bookDao.save(book);
	}

	public void update() {
		bookDao.updateAll();
	}

	public void delete(Book book) {
		bookDao.delete(book);
	}

	public List<Book> getBookList() {
		return bookDao.getAll();
	}

	@Override
	public List<Book> get(PageHelper ph) {
		return bookDao.get(ph);
	}

	@Override
	public Long getTotal(String sql) {
		return bookDao.count(sql);
	}

	@Override
	public List<String> getAllType() {
		return bookDao.getAllType();
	}

	@Override
	public List<Book> getListByType(PageHelper ph) {
		return bookDao.getByType(ph);
	}

}
