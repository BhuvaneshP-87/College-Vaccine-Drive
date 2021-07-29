package net.javaguides.usermanagement.model;

public class User {

	protected int id;
	protected String name;
	protected String email;
	protected String usn;
	protected String phno;

	public User(String name, String email, String usn, String phno) {
		super();
		this.name = name;
		this.email = email;
		this.usn = usn;
		this.phno = phno;
	}

	public User(int id, String name, String email, String usn, String phno) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.usn = usn;
		this.phno = phno;
	}

	public String getUsn() {
		return usn;
	}

	public void setUsn(String usn) {
		this.usn = usn;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
