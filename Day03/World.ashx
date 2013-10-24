<%@ WebHandler Language="C#" Class="World" %>

using System;
using System.Web;

public class World : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string country = context.Request["country"];
        string output = "{\"capital\":\"Not available in DB\",\"continent\":\"Not available in DB\",\"population\":\"Not available in DB\"}";
        if (country == "India")
            output = "{\"capital\":\"New Delhi\",\"continent\":\"Asia\",\"population\":\"1.2 billion\"}";
        else if (country == "USA")
            output = "{\"capital\":\"Washington DC\",\"continent\":\"NA\",\"population\":\"100 million\"}";
        else if (country == "UK")
            output = "{\"capital\":\"London\",\"continent\":\"Europe\",\"population\":\"6.5 million\"}"; ;
        context.Response.Write(output);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}