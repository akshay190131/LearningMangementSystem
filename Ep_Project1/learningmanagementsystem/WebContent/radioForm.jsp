<%@page import="java.util.*"%>
<html>
<form method="post" action="feedback.jsp">
<a href="success.jsp">Go Back to Home page</a><br>
<table>

<h1>Please Enter Your Email:</h1><td><input type="email" name="email" required></td></tr>
<%
int i=0;
ArrayList list=new ArrayList();
list.add("How would you rate this Website?");
list.add("How much help was textbook? ");
list.add("Interesting?");
list.add("Course material sufficient?");
list.add("Challenging?");
Iterator itr;

for(itr=list.iterator(); itr.hasNext();){
String ans=itr.next().toString();

%>
<tr><td><%=ans%></td><td><input type= "hidden" name="question<%=i%>" value="<%=ans%>" ></td>

<td><input required type="hidden" name="quid<%=i%>" value="<%=i%>"></td><td><input required type="radio" value="Poor" name="radio<%=i%>"/>Poor</td><td><input required type="radio" value="Average" name="radio<%=i%>"/>Average</td><td><input required type="radio" value="Good" name="radio<%=i%>"/>Good</td></tr>
<% i++;
}
%>
<tr><td><input type="Submit" value="Submit"></td></tr>
</table>
</form>
</html>