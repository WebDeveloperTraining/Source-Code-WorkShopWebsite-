package Models;

public class LoginModels {
	private String UserName;
	private String Password;
	private int RoleId;
	private int UserId;
	private String Name;
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	//
	public LoginModels(){}
	
	public LoginModels(String UserName, String Password,int RoleId,int UserId){
		this.UserName=UserName;
		this.Password=Password;
		this.RoleId=RoleId;
		this.UserId=UserId;
	}
	
	public LoginModels(String UserName, String Password, String Name,int RoleId,int UserId){
		this.UserName=UserName;
		this.Password=Password;
		this.Name=Name;
		this.RoleId=RoleId;
		this.UserId=UserId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getRoleId() {
		return RoleId;
	}
	public void setRoleId(int roleId) {
		RoleId = roleId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
}
