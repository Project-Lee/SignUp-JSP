package com.jy.user;

public class PeopleVO {
	private int i_num;
	private String i_id;
	private String i_ps;
	private String i_name;
	private String i_email;
	private String i_gender;
	
	public void setI_num(int i_num) {
		this.i_num = i_num;
	}
	
	public int getI_num() {
		return i_num;
	}

	public String getI_id() {
		return i_id;
	}

	public void setI_id(String i_id) {
		this.i_id = i_id;
	}

	public String getI_ps() {
		return i_ps;
	}

	public void setI_ps(String i_ps) {
		this.i_ps = i_ps;
	}

	public String getI_name() {
		return i_name;
	}

	public void setI_name(String i_name) {
		this.i_name = i_name;
	}

	public String getI_email() {
		return i_email;
	}

	public void setI_email(String i_email) {
		this.i_email = i_email;
	}

	public String getI_gender() {
		return i_gender;
	}

	public void setI_gender(String i_gender) {
		this.i_gender = i_gender;
	}
	
	@Override
	public String toString() {
		return String.format("%d %s %s %s %s %s",i_num, i_id, i_ps, i_name, i_email, i_gender);
	}
	
}
