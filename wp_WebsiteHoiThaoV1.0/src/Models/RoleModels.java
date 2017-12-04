package Models;

public class RoleModels {
	private int RoleId;
	private String RoleName;
	public int getRoleId() {
		return RoleId;
	}
	public void setRoleId(int roleId) {
		RoleId = roleId;
	}
	public String getRoleName() {
		return RoleName;
	}
	public void setRoleName(String roleName) {
		RoleName = roleName;
	}
	
	public RoleModels(){}
	public RoleModels(int RoleId,String RoleName){
		this.RoleId=RoleId;
		this.RoleName=RoleName;
	}
	
}
