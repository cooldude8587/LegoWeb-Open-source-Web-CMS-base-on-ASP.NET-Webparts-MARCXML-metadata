﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;



public partial class Administrator_CommonParameterAddUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!Roles.IsUserInRole("ADMINISTRATORS"))
            {
                Response.Redirect("ErrorMessage.aspx?ErrorMessage='Bạn không có quyền truy cập vào tính năng này!'");
            }
        }
    }

    protected void linkSaveButton_Click(object sender, EventArgs e)
    {
        this.CommonParameterAddUpdate1.Save_CommonParameterRecord();
        Response.Redirect("CommonParameterManager.aspx");
    }
    protected void linkCancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("CommonParameterManager.aspx");
    }
    protected override void OnInit(EventArgs e)
    {
        CultureUtility.SetThreadCulture();
        base.OnInit(e);
    }
}