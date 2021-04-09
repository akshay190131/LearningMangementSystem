package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import learningmanagementsystem.*;



public class UserDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java2","root","Aravind*123");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("insert into members(first_name,last_name,email,uname,pass) values(?,?,?,?,?)");  
	        ps.setString(1,u.getFirstName());  
	        ps.setString(2,u.getLastName());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getUname());  
	        ps.setString(5,u.getPass());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("update members set first_name=?,last_name=?,email=?,uname=?,pass=? where id=?");  
	        ps.setString(1,u.getFirstName());  
	        ps.setString(2,u.getLastName());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(5,u.getPass());  
	        ps.setString(4,u.getUname());
	        ps.setInt(6, u.getId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from members where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from members");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setId(rs.getInt("id"));  
	            u.setFirstName(rs.getString("first_name"));  
	            u.setLastName(rs.getString("last_name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setUname(rs.getString("uname"));  
	            u.setPass(rs.getString("pass"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} 
	public static User getRecordById(int id){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from members where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setId(rs.getInt("id"));  
	            u.setFirstName(rs.getString("first_name"));  
	            u.setLastName(rs.getString("last_name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setUname(rs.getString("uname"));  
	            u.setPass(rs.getString("pass"));  
	        }   
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	
}
