package inos.ud;

public class LoginRequest {
	private String username;
	private String password;
	
	public LoginRequest() {
		super();
	}
	
	public LoginRequest(String username, String password) {
		super();
		this.username = username;
		this.password = password;
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
	
	@Override
	public String toString() {
		return "username : "+ username + " password : " + password;  
	}
	
	@Override
	public boolean equals(Object arg0) {
		LoginRequest toComp = (LoginRequest)arg0;
		if(this.toString().equals(toComp.toString())){
			return true;
		}
		else{
			return false;
		}
		
	}
}
