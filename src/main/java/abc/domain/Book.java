package abc.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "T_BOOK")
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer BookId;

	private String BookName;
	
	private String BookAuthor;
	
	private String BookType;
	
	private Double BookPrice;

	private String Description;
	
	private Byte Stat;
	
	@Transient
	private String statName;
	
	public String getStatName() {
		
		//0 未发布,1在库,2借出,3超期
		
		switch(Stat){
		case 0:
			return "未发布";
		case 1:
			return "在库";
		case 2:
			return "借出";
		case 3:
			return "超期"; //超期状态，前台数据整行着色提示
		default:
			return "<font style='color:#00F;'>状态错误</font>";
		}
	}

	public Book() {
	}

	public Book(String name, String author, String type, double price, String desc, byte stat) {
		this.BookName = name;
		this.BookAuthor = author;
		this.BookType = type;
		this.BookPrice = price;
		this.Description = desc;
		this.Stat = stat;
	}

	public Byte getStat() {
		return Stat;
	}

	public void setStat(Byte stat) {
		this.Stat = stat;
	}

	public Double getPrice() {
		return BookPrice;
	}

	public void setPrice(Double price) {
		this.BookPrice = price;
	}
	
	public String getAuthor() {
		return BookAuthor;
	}
	
	public void setAuthor(String author) {
		this.BookAuthor = author;
	}

	public String getType() {
		return BookType;
	}

	public void setType(String type) {
		this.BookType = type;
	}

	public Integer getId() {
		return BookId;
	}

	public String getName() {
		return BookName;
	}

	public void setName(String name) {
		this.BookName = name;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		this.Description = description;
	}

}
