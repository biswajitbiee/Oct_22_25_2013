<%
        String cities = "";
        String country = request.getParameter("country");
		//{"cities":["Chennai","Hyd","Bengaluru"]}

        if ("India".equals(country))
            cities = "{\"cities\" : [\"Chennai\",\"Hyd\",\"Bengaluru\"]}";
        else if ("USA".equals(country))
            cities = "{\"cities\" : [\"Atlanta\",\"Denver\",\"Houston\"]}";
        else if ("UK".equals(country))
            cities = "{\"cities\" : [\"London\",\"Bristol\",\"Essex\"]}";
        out.println(cities);
%>