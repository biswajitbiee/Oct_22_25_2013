﻿<%
		String country = request.getParameter("country");
        String output = "{\"capital\":\"Not available in DB\",\"continent\":\"Not available in DB\",\"population\":\"Not available in DB\"}";
        if ("India".equals(country))
            output = "{\"capital\":\"New Delhi\",\"continent\":\"Asia\",\"population\":\"1.2 billion\"}";
        else if ("USA".equals(country))
            output = "{\"capital\":\"Washington DC\",\"continent\":\"NA\",\"population\":\"100 million\"}";
        else if ("UK".equals(country))
            output = "{\"capital\":\"London\",\"continent\":\"Europe\",\"population\":\"6.5 million\"}";
        out.println(output);
%>