using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;

/// <summary>
/// Summary description for clsEmail
/// </summary>
public class clsEmail
{
    public void sendEMail(string toEmail, string body)
    {
        string fromEmail = "foodies.hub.2019@gmail.com"; string frompwd = "Foodiesforever**2019";
        try
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress(fromEmail,"All In One Tours And Travels");
            mail.To.Add(toEmail);
            mail.Subject = "Your Password !!!";
            mail.Body = body;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential(fromEmail, frompwd);
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
        }
        catch
        {
          
        }
    }
}

