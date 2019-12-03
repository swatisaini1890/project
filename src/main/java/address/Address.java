package address;

public class Address {
	
	private int id;
	private String name , phone;
	private int pincode;
	private String locality,address,city,state,landmark,alternate_phone,address_type;
	private int userid;
	
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getAlternate_phone() {
		return alternate_phone;
	}
	public void setAlternate_phone(String alternate_phone) {
		this.alternate_phone = alternate_phone;
	}
	public String getAddress_type() {
		return address_type;
	}
	public void setAddress_type(String address_type) {
		this.address_type = address_type;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	
	//constructor
	public Address(int id, String name, String phone, int pincode, String locality, String address, String city,
			String state, String landmark, String alternate_phone, String address_type, int userid) {
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.pincode = pincode;
		this.locality = locality;
		this.address = address;
		this.city = city;
		this.state = state;
		this.landmark = landmark;
		this.alternate_phone = alternate_phone;
		this.address_type = address_type;
		this.userid = userid;
	}
	public Address(String name, String phone, int pincode, String locality, String address, String city, String state,
			String landmark, String alternate_phone, String address_type, int userid) {
		this.name = name;
		this.phone = phone;
		this.pincode = pincode;
		this.locality = locality;
		this.address = address;
		this.city = city;
		this.state = state;
		this.landmark = landmark;
		this.alternate_phone = alternate_phone;
		this.address_type = address_type;
		this.userid = userid;
	}
	
	
	@Override
	public String toString() {
		return "Address [id=" + id + ", name=" + name + ", phone=" + phone + ", pincode=" + pincode + ", locality="
				+ locality + ", address=" + address + ", city=" + city + ", state=" + state + ", landmark=" + landmark
				+ ", alternate_phone=" + alternate_phone + ", address_type=" + address_type + ", userid=" + userid
				+ "]";
	}
	
	
	

}
