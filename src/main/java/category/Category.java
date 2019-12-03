package category;

public class Category {
	private String name;
	private String description;
	private short id;
	
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
	
	public short getId() {
		return id;
	}
	
	public void setId(short id) {
		this.id = id;
	}
	
	

	public Category() {
	}

	public Category(String name) {
		this.name = name;
	}
	
	

	public Category(String name, String description) {
		this.name = name;
		this.description = description;
	}

	public Category(String name, String description, short id) {
		this.name = name;
		this.description = description;
		this.id = id;
	}

	

	@Override
	public String toString() {
		return "category [name=" + name + ", description=" + description + ", id=" + id + "]";
	}



}
