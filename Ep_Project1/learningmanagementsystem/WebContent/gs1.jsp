<%    
  String filename = "1.csv";   
  String filepath = "C:\\Users\\Akshay\\Desktop\\4th Semester\\EP\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   

  }   
  fileInputStream.close();   
%>   