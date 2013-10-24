<%
       String name = request.getParameter("name");
	  String country = request.getParameter("country");
       String city = request.getParameter("city");
	  String message = "Your information, Name: " + name + " , Country: " + country + " , City: " + city + " has been submitted for processing. <br/>Thank you";		
        out.println(message);
%>
