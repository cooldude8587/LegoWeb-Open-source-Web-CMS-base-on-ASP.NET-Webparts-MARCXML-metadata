﻿<%@ Page Language="C#" MasterPageFile="LegoWebAdmin.master" AutoEventWireup="true" CodeFile="MenuAddUpdate.aspx.cs" Inherits="LegoWebAdmin_MenuAddUpdate" Title="Add or update menu item" %>
<%@ Register src="~/UserControls/AdminMenuBarActive.ascx" tagname="AdminMenuBarActive" tagprefix="uc1" %>
<%@ Register src="~/UserControls/AdminMenuBarDeactive.ascx" tagname="AdminMenuBarDeactive" tagprefix="uc2" %>
<%@ Register src="~/UserControls/MenuAddUpdate.ascx" tagname="MenuAddUpdate" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


	<div id="header-box">
        <%--menu bar go here--%>
		<uc2:AdminMenuBarDeactive ID="AdminMenuBarDeactive1" runat="server" />
		<div class="clr"></div>
	</div>
	

	   		<div class="clr"></div>

<div id="content-box">
	<div class="border">
	  <div class="padding">		
	  
<div id="toolbar-box">
   			<div class="t">
				<div class="t">
					<div class="t"></div>
				</div>
			</div>
			<div class="m">
			
			
			
				<div class="toolbar" id="toolbar">
<table class="toolbar"><tr>
<td class="button" id="toolbar-save">
<asp:LinkButton ID="linkSaveButton" class="toolbar" runat="server" 
        onclick="linkSaveButton_Click" ValidationGroup="MenuInfo" CausesValidation="true">
<span class="icon-32-save" title="Save">
</span>
<%=Resources.strings.Save_Text %>
</asp:LinkButton>
</td>
 

<td class="button" id="toolbar-cancel">
<asp:LinkButton ID="linkCancelButton" class="toolbar" runat="server" 
        onclick="linkCancelButton_Click" ValidationGroup="MenuInfo" CausesValidation="false">
        <span class="icon-32-cancel" title="Cancel">
</span>
<%=Resources.strings.Cancel_Text %>
</asp:LinkButton>
</td>
 
<td class="button" id="toolbar-help">
<a href="#" onclick="popupWindow('http://www.legoweb.org/help', 'Help', 640, 480, 1)" class="toolbar">
<span class="icon-32-help" title="Trợ giúp">
</span>
<%=Resources.strings.Help_Text %>
</a>
</td>
 
</tr></table>

</div>
<div class="header icon-48-menu">
<%=Resources.strings.AddUpdateMenuItem_Text %>
</div>

				<div class="clr"></div>
			</div>
			<div class="b">
				<div class="b">
					<div class="b"></div>
				</div>
			</div>
  		</div>  		
	  
	  <div class="clr"></div>
	  
		<div id="element-box">
			<div class="t">
		 		<div class="t">
					<div class="t"></div>
		 		</div>
			</div>
			<div class="m">
                
                            <uc3:MenuAddUpdate ID="MenuAddUpdate1" runat="server" />
									
			        <div class="clr"></div>
			</div>
			<div class="b">
				<div class="b">
					<div class="b"></div>
				</div>
			</div>
   		</div>
    </div>
    </div>
		<div class="clr"></div>
	</div>
	
	
</asp:Content>

