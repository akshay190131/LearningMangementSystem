<%    
  String filename = "Pandas_Cheat_Sheet.pdf";   
  String filepath = "C:\\Users\\Akshay\\Downloads\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   

  }   
  fileInputStream.close();   
%>   