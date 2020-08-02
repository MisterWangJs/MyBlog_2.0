package wjs.blog.domain;

public class User {
	private int id;
	private String username;
	private String password;
	private String name;
	private String sex;
	private String email;
	private String tel;
	public User(String username, String password, String name, String sex, String email, String tel) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.email = email;
		this.tel = tel;
	}

	public User() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String getName(){
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSex(){
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getEmail(){
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTel(){
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", sex=" + sex + ", email=" + email + ",tel=" + tel + "]";
	}

}
