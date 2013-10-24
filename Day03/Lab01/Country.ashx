<%@ WebHandler Language="C#" Class="Country" %>

using System;
using System.Web;

public class Country : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        String countries = "{\"countries\":[\"India\",\"USA\",\"UK\"]}";
        context.Response.Write(countries);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}