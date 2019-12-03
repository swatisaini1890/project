package product;

import category.Category;

public class Product {

	private int id;
	private String name;
	private String description;
	private short categoryid;
	private float price;
	private  short stockqty;
	
	
	private int imageId;
	private String imageUrl;
	
	
	
	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	private Category category= new Category();
	
	
	public Category getCategory() {
		return category;
	}
	
	public void setCategory(Category category) {
		this.category = category;
	}
	//getter and setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public short getCategoryId() {
		return categoryid;
	}
	
	public void setCategoryId(short categoryId) {
		this.categoryid = categoryId;
	}
	
	public float getPrice() {
		return price;
	}
	
	public void setPrice(float price) {
		this.price = price;
	}
	
	public short getStockqty() {
		return stockqty;
	}
	
	
	public void setStockqty(short stockqty) {
		this.stockqty = stockqty;
	}

	
	
	public Product(int id, String name, String description, short categoryid, float price, short stockqty, Category c) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.categoryid = categoryid;
		this.price = price;
		this.stockqty = stockqty;
		this.category=c;
	}
	
	public Product(String name, String description, short categoryid, float price, short stockqty, Category c,int imageId) {
		this.name = name;
		this.description = description;
		this.categoryid = categoryid;
		this.price = price;
		this.stockqty = stockqty;
		this.category=c;
		this.imageId=imageId;
	}
	
	public Product(String name, String description, short categoryid, float price, short stockqty,int imageId) {
		this.name = name;
		this.description = description;
		this.categoryid = categoryid;
		this.price = price;
		this.stockqty = stockqty;
		this.imageId=imageId;
	}
	public Product(int id, String name, String description, short categoryid, float price, short stockqty, Category c,String imageUrl) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.categoryid = categoryid;
		this.price = price;
		this.stockqty = stockqty;
		this.category=c;
		this.imageUrl=imageUrl;
	}
	public Product(int id, String name, String description, short categoryid, float price, short stockqty) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.categoryid = categoryid;
		this.price = price;
		this.stockqty = stockqty;
	}
	
	public Product(String name, String description, short categoryid, float price, short stockqty) {
		
		this.name = name;
		this.description = description;
		this.categoryid = categoryid;
		this.price = price;
		this.stockqty = stockqty;
	}
	public Product(int id) {
		this.id = id;
	}
	
	
	public Product() {
	}

	

	

	public Product(int id, String name, String description, short categoryid, float price, short stockqty,
			int imageId) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.categoryid = categoryid;
		this.price = price;
		this.stockqty = stockqty;
		this.imageId = imageId;
	}

	@Override
	public String toString() {
		return "product[ id= " +id+ ", name="+name+" ,description=" + description + ",price="+price+",stockqty="+stockqty+",categoryid="+categoryid+"]";
	}
	

	
	
}
