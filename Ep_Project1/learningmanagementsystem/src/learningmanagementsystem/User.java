package learningmanagementsystem;

public class User {
		private int id;
		private String first_name,last_name,email,uname,pass;
		public User(){
			
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
		public String getFirstName() {
			return first_name;
		}
		public void setFirstName(String name) {
			this.first_name = name;
		}
		public String getLastName() {
			return last_name;
		}
		public void setLastName(String name) {
			this.last_name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public String getPass() {
			return pass;
		}
		public void setPass(String password) {
			this.pass = password;
		}
		
		
	


}
