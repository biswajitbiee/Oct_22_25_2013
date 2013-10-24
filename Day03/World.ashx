<%@ WebHandler Language="C#" Class="World" %>

using System;
using System.Web;

public class World : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string country = context.Request["country"];
        string output = "Not available in DB";
        if (country == "India")
            output = "New Delhi";
        else if (country == "USA")
            output = "Washington DC";
        else if (country == "UK")
            output = "London";
        context.Response.Write(output);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}