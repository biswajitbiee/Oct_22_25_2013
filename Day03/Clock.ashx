<%@ WebHandler Language="C#" Class="Clock" %>

using System;
using System.Web;

public class Clock : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write(DateTime.Now.ToLongTimeString());
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}