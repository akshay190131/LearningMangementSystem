<%@page import="java.sql.*"%>
<%
String id[]= new String[6];
String Email=request.getParameter("email");
for(int i=0;i<5;i++){
id[i]=request.getParameter("qid"+i);
//System.out.println(id[i]);
}
String option[]= new String[5];
for(int i=0;i<5;i++){
option[i]=request.getParameter("radio"+i);
//System.out.println(option[i]);
}
String ques[]= new String[5];
for(int i=0;i<5;i++){
ques[i]=request.getParameter("question"+i);
//System.out.println(ques[i]);
}
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/java2","root","Aravind*123");
Statement st=conn.createStatement();
for(int j=0;j<5;j++){
String optionValue=option[j];
String qid=id[j];
String question=ques[j];
//st.executeUpdate("insert into question(question,options,Email) values('"+question+"','"+optionValue+","+Email+"')");
st.executeUpdate("INSERT INTO question(Email,question,options) VALUES ('"+Email+"','"+question+"','"+optionValue+"')");
}

//out.println("Thanks for your valuable FeedBack :)");
}
catch(Exception e){
out.println(e);
}
%>