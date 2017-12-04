package DAL;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.connector.Request;

import Models.LoginModels;
import Models.RoleModels;

public class AdminDAL extends SQLProvider {
	private static java.sql.PreparedStatement pstm=null;
	private static ArrayList<RoleModels> lstRoles=null;
	public static LoginModels Login(String UserName, String Password){
		if(ConnectDB()){
			try{
				String sqlExecute= "{call dbo.Sp_Admin(?,?,?)}";
				pstm=conn.prepareStatement(sqlExecute);
				
				pstm.setString(1, "Login");
				pstm.setString(2, UserName);
				pstm.setString(3, Password);
				
				ResultSet rs=pstm.executeQuery(); 
				if (rs.next()) {
					String userName=rs.getString("UserName");
					String password=rs.getString("Password");
					String name=rs.getString("Name");
					int roleId=rs.getInt("RoleId");
					int userId=rs.getInt("UserId");
					pstm.close();
					conn.close();
					return new LoginModels(userName,password, name, roleId,userId);
				}
				
			}
			catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
			finally {
				try {
					pstm.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		return null;
	}
	
	public static ArrayList<RoleModels> GetListRoles(){
		if(ConnectDB()){
			try{
				lstRoles=new ArrayList<RoleModels>();
				String sqlExecute= "{call dbo.Sp_Admin_LoadDB(?)}";
				pstm=conn.prepareStatement(sqlExecute);
				
				pstm.setString(1, "GetListRoles");
				
				ResultSet rs=pstm.executeQuery(); 
				while (rs.next()) {
					int roleId=rs.getInt("RoleId");
					String roleName=rs.getString("RoleName");
					lstRoles.add(new RoleModels(roleId,roleName));
				}
				return lstRoles;
			}
			catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
			finally {
				try {
					pstm.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		return null;
	}
	public static Boolean ExecuteInserMember(LoginModels user){
		if(ConnectDB()){
			try{
				String sqlExecute= "{call dbo.Sp_Admin(?,?,?,?,?)}";
				pstm=conn.prepareStatement(sqlExecute);
				
				pstm.setString(1, "AddMember");
				pstm.setString(2, user.getUserName());
				pstm.setString(3, user.getPassword());
				pstm.setInt(4, user.getRoleId());
				pstm.setInt(5, user.getUserId());
				
				int effectedRow=pstm.executeUpdate();
				if(effectedRow>0) return true;
				return false;
			}
			catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
				return false;
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return false;
			}
			finally {
				try {
					pstm.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
		return false;
	}
}
