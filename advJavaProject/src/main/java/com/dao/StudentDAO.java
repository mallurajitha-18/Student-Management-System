package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Loginmodel;
import com.model.Studentmodel;
import com.utility.DBConnection;

   
public class StudentDAO {
	String status="fail";
	DBConnection db=new DBConnection();
	Connection con=db.getconnection();
	public String insertstudent(Studentmodel sm) {
		
		try {
			
			PreparedStatement ps=con.prepareStatement("insert into Register(firstname,lastname,username,password,email,phonenumber) values (?,?,?,?,?,?)");
			ps.setString(1, sm.getFirstname());
			ps.setString(2, sm.getLastname());
			ps.setString(3,sm.getUsername());
			ps.setString(4,sm.getPassword());
			
			ps.setString(5,sm.getEmail());
			ps.setDouble(6,sm.getPhonenumber());

			
			
			
			
			
			System.out.println(sm);
		int n=	ps.executeUpdate();
			if(n>0) {
				System.out.println("row inserted");
				status="sucess";
			}
			else {
				System.out.println("not inserted");
			}
		} 
	catch(Exception e) {
		System.out.println(e);


		
	}
return status;
   
    	
    }

public String loginstudent(Loginmodel m) {
String status="fail";

	
	try {
		DBConnection db=new DBConnection();
		Connection con=db.getconnection();
		PreparedStatement ps=con.prepareStatement("select* from Register where username=(?) and password=(?)");
		ps.setString(1, m.getUsername());
		ps.setString(2, m.getPassword());
		
		ResultSet rs=ps.executeQuery();
		 if (rs.next()) {
	            status = "success"; 
	        }
	}
	catch(Exception e) {
		System.out.println(e);
		 
	
	}
	return status;
}


public List<Studentmodel> getallStudents() {
	
	List<Studentmodel> students=new ArrayList<Studentmodel>();
	try {
		DBConnection db=new DBConnection();
		Connection con=db.getconnection();
		Studentmodel sm=new Studentmodel ();
		String query="select * from Register";
		PreparedStatement ps=con.prepareStatement(query);
;		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Studentmodel s=new Studentmodel(rs.getString("firstname"), rs.getString("lastname"), rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getLong("phonenumber"));
			students.add(s);
			
		}
		System.out.println(students+" -----------------------------------");
	}
		
		
		catch(Exception e) {
			System.out.println(e);
			 
		
		}
	return students;
	
	}
			
		public Studentmodel getById(String username) {
			Studentmodel sm = null;
			DBConnection db=new DBConnection();
			Connection con=db.getconnection();
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select * from Register where username=?");
				ps.setString(1, username);
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					sm=new Studentmodel(rs.getString(2),rs.getString(3),rs.getString(1),rs.getString(4),rs.getString(6),rs.getLong(5));
				}
               } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
               }
			System.out.println(sm);
			return sm;
			
		}

		
	
		
		public boolean updateStudent(Studentmodel stm) {
		    boolean success = false;
		    DBConnection db = new DBConnection();
		    Connection con = db.getconnection();

		    try {
		        String sql = "UPDATE register SET firstname=?, lastname=?, password=?, phonenumber=?, email=? WHERE username=?";
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.setString(1, stm.getFirstname().trim());
		        ps.setString(2, stm.getLastname().trim());
		        ps.setString(3, stm.getPassword().trim());
		        ps.setLong(4, stm.getPhonenumber());
		        ps.setString(5, stm.getEmail().trim());
		        ps.setString(6, stm.getUsername().trim());

		        int rows = ps.executeUpdate();
		        System.out.println("Updated rows: " + rows);
		        if (rows > 0) {
		            success = true;
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            if (con != null) con.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
		    return success;
		}

		
	
		public boolean Delete(String username) {
		    boolean success = false;
		    DBConnection db = new DBConnection();
		    Connection con = db.getconnection();
		    PreparedStatement ps;
		    try {
		        String sql = "delete from Register where username=?";
		        ps = con.prepareStatement(sql);
				ps.setString(1, username);
				int n=ps.executeUpdate();

		        if (n > 0) {
		            success = true;
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		   
		    }
		    return success;
		}

		
		
	
	
	

	
	
	

	
}

	
	

		        
		    
			
	
		



	  
	


