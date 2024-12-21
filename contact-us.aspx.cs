using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string[] fields = { "Name", "Email ID", "Phone", "Message" };
        string[] values = { txtname.Text, txtmail.Text, txtphone.Text, txtmessage.Text};
        string serverip = "192.227.85.199";
        string tomailid = "sales@shuter.in";
        string ccmailid = "support@globaltrendz.com";
        string bccmailid = "support@globaltrendz.com";
        Boolean resmail = false;
        string logolink = "http://globaltrendz.online/dclutter/images/logo.png";
        string subject = "";
        string logowidh = "100";
        string toname = "";
        string replayid = "support@globaltrendz.com";
        string enquirytext = "An enquiry";
        Boolean b = sendenqyerymail1(fields, values, serverip, tomailid, ccmailid, bccmailid, resmail, logolink, logowidh, subject, enquirytext, toname, replayid);
        if (b == true)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thanks for Writing to us..! Our Team will Contact You Soon...');;window.location ='contact-us.aspx';", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sorry Something Went Wrong..');window.location ='contact-us.aspx';", true);

        }
    }
    public Boolean sendenqyerymail1(string[] fields, string[] values, string serverip, string tomailid, string ccmailid, string bccmailid, Boolean resmail, string logolink, string logowidh, string subject, string enquirytest1, string toname, string replayid)
    {
        Boolean mails = false;
        try
        {
            string txtbody = "";
            string strBody = "";
            txtbody = "<hr noshade color='#D8D6D6' size='1' style='margin-top: 25px;'><p <font face='Tahoma' style='font-size:11px;padding-left:20px;padding-top:5px;'>Powered by <b><a target='_blank' style='color: #E95146;text-decoration:none' href='http://www.globaltrendz.com'>Global Trendz</a></b> - eMarketing the Trend!</font></p>";
            strBody = strBody + "<table align='center' bgcolor='#ffffff' cellspacing='0' width='100%'  cellpadding='0' align='center'>";
            strBody = strBody + "<tr><td  align='center' style='padding-top:20px;' ><table bgcolor='#ffffff'  width='500' align='center' border='0'  cellspacing='0'  cellpadding='0'  style='border:#D8D6D6 1px solid'>";
            strBody = strBody + "<tr>";
            strBody = strBody + "<td align='center' style='padding-left:0px;pagging-right:2px;padding-top:2px;'>";
            strBody = strBody + "<table  width='500' border='0' cellpadding='0' cellspacing='0' style='border-bottom:#D8D6D6 1px solid' align='center'>";
            strBody = strBody + "<tr><td align='left' style='height:40px;padding-left:10px;' bgcolor='#ffffff'><img src='" + logolink + "'border='0' alt=' ' style='margin:10px; width: 21%; height: 203%;'/>";
            strBody = strBody + "</table></td></tr>";
            strBody = strBody + "<tr><td  valign='top'  width='500' ><table cellspacing='0' width='500' cellpadding='0'>";
            strBody = strBody + "<tr><td><table cellspacing='0'  width='500' cellpadding='0' >";
            strBody = strBody + "<tr><td  style='padding-left:0px;padding-top:10px;' align='left'><font style='padding-left:20px;font-family:Tahoma;font-size:11px;color:#404040;text-decoration:none;font-style:normal' >Dear Admin,</font></td></tr>";
            strBody = strBody + "<tr><td  style='padding-left:0px;padding-top:10px;'><font style='padding-left:20px;font-family:Tahoma;font-size:11px;color:#404040;text-decoration:none;font-style:normal'>" + enquirytest1 + "</font></td></tr>";
            strBody = strBody + "<tr><td  style='padding-left:0px;padding-top:10px;'><font style='padding-left:20px;font-family:Tahoma;font-size:11px;color:#404040;text-decoration:none;font-style:normal'>Visitor Registration details from <b>Shuter</b> are as follows : </font></td></tr>";
            strBody = strBody + "<tr><td colspan='2' align='center' style='padding-top:10px;'><table cellspacing='0' width='500' cellpadding='0' bgcolor='#ffffff' style='padding-left:20px;font-family:Tahoma;font-size:11px;color:#404040;text-decoration:none;font-style:normal;line-height:25px;'>";
            for (int i = 0; i <= fields.Length - 1; i++)
            {
                strBody = strBody + "<tr><td width='253'><b>" + fields[i].ToString() + "</b></td><td>:</td><td align='left' width='500' style='padding-left:10px;'>" + values[i].ToString() + "</td></tr>";
            }
            strBody = strBody + "</table></td></tr>";
            strBody = strBody + "</table></td></tr>";
            strBody = strBody + "</table>" + txtbody;
            MailMessage mail = new MailMessage();
            mail.To.Add(tomailid);
            if (ccmailid.ToString() != "")
            {
                mail.CC.Add(ccmailid);
            }
            if (toname != "")
            {
                Attachment at = new Attachment(toname);
                mail.Attachments.Add(at);
            }
            if (bccmailid.ToString() != "")
            {
                mail.Bcc.Add(bccmailid);
            }
            mail.From = new MailAddress(replayid);
            mail.Subject = subject;
            mail.IsBodyHtml = true;
            mail.Body = strBody;
            //mail.ReplyToList.Add("test@test.com");
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("support@globaltrendz.com", "621support");
            smtp.EnableSsl = true;
            smtp.Send(mail);
            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = serverip;
            //smtp.Send(mail);
            mail.CC.Clear();
            mail.Bcc.Clear();
            mails = true;
        }
        catch (Exception ex)
        {
            mails = false;
        }
        return mails;
    }

}
