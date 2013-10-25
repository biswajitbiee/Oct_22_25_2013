<%@ WebHandler Language="C#" Class="ProcessPage" %>

using System;
using System.Web;

public class ProcessPage : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
      string name = context.Request["name"];
	  string country = context.Request["country"];
      string city = context.Request["city"];
	  string message = "Your information, Name: " + name + " , Country: " + country + " , City: " + city + " has been submitted for processing. <br/>Thank you";		
        context.Response.Write(message);

    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}