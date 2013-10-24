<%@ WebHandler Language="C#" Class="City" %>

using System;
using System.Web;

public class City : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        String cities = "";
        String country = context.Request["country"];

        if ("India" == country)
            cities = "{\"cities\" : [\"Chennai\",\"Hyd\",\"Bengaluru\"]}";
        else if ("USA" == country)
            cities = "{\"cities\" : [\"Atlanta\",\"Denver\",\"Houston\"]}";
        else if ("UK" == country)
            cities = "{\"cities\" : [\"London\",\"Bristol\",\"Essex\"]}";
        context.Response.Write(cities);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}