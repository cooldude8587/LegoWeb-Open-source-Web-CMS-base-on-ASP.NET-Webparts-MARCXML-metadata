﻿<%--Design : Nguyen Phuoc Tho--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CONTENTNAVIGATORFLOAT.ascx.cs" Inherits="Webparts_CONTENTNAVIGATORFLOAT" %>
<%@Register TagPrefix="CC" Namespace="LegoWebSite.Controls"%>

<asp:Literal ID="litCatNaviBoxTop" runat="server"></asp:Literal>
<asp:Literal ID="litCatNaviContent" runat="server"></asp:Literal>
<asp:Literal ID="litCatNaviBoxBottom" runat="server"></asp:Literal>

<br style="line-height:3px" />
<asp:Literal ID="litContentNavigatorBoxTop" runat="server"></asp:Literal>
		
          <asp:repeater id="contentNavigatorRepeater" runat="server" OnItemCommand="contentNavigatorDataCommand">
          
                         <ItemTemplate> 
                               <%# DataBinder.Eval(Container.DataItem, "CONTENT_HTML")%>
                         </ItemTemplate>
                                  
            <FooterTemplate>
                        <table align=right  style="width:100%">

                                       <tr >
                                       <td align="right" style="padding-right:20px;">
                                          <CC:Navigator id="NavigatorNavigator" MaxPage="<%#_contentNavigatorData.PageCount%>" PageNumber="<%#_contentNavigatorData.PageNumber%>" runat="server">
                                            &nbsp;&nbsp;&nbsp;<CC:NavigatorItem type="FirstOn" runat="server" ID="Navigatoritem1">
                                                                        &nbsp;&nbsp;&nbsp;<asp:LinkButton id="NavigatorFirst" runat="server">
                                                                            <asp:image ID="Image1" runat="server" skinid="First" ImageUrl="~/images/arr_left.gif"   /></asp:LinkButton>
                                                                    </CC:NavigatorItem>
                                            <CC:NavigatorItem type="FirstOff" runat="server" ID="Navigatoritem2">
                                                                        &nbsp;&nbsp;&nbsp;<asp:image ID="Image2" runat="server" skinid="FirstOff"  ImageUrl="~/images/arr_left.gif"/></CC:NavigatorItem>
                                            <CC:NavigatorItem type="PrevOn" runat="server" ID="Navigatoritem3">
                                                                        &nbsp;&nbsp;&nbsp;<asp:LinkButton id="NavigatorPrev" runat="server">
                                                                            <asp:image ID="Image3" runat="server" skinid="Prev" ImageUrl="~/images/arr_left.gif"  /></asp:LinkButton>
                                                                    </CC:NavigatorItem>
                                            <CC:NavigatorItem type="PrevOff" runat="server" ID="Navigatoritem4">
                                                                        &nbsp;&nbsp;&nbsp;<asp:image ID="Image4" runat="server" skinid="PrevOff"  /></CC:NavigatorItem>&nbsp; 
                                            <CC:Pager id="NavigatorPager" PagerSize="10" runat="server">
                                                                        <PageOnTemplate>
                                            <asp:LinkButton runat="server" ID="Linkbutton1">
                                                                                <%#((PagerItem)Container).PageNumber.ToString()%>
                                             </asp:LinkButton>&nbsp;</PageOnTemplate>
                                                                        <PageOffTemplate><%#((PagerItem)Container).PageNumber.ToString()%>&nbsp;</PageOffTemplate>
                                                                    </CC:Pager>of&nbsp;<%#((Navigator)Container).MaxPage.ToString()%>&nbsp; 
                                            <CC:NavigatorItem type="NextOn" runat="server" ID="Navigatoritem5">
                                                                        &nbsp;&nbsp;&nbsp;<asp:LinkButton id="NavigatorNext" runat="server">
                                                                            <asp:image ID="Image5" runat="server" skinid="Next" /></asp:LinkButton>
                                                                    </CC:NavigatorItem>
                                            <CC:NavigatorItem type="NextOff" runat="server" ID="Navigatoritem6">
                                                                        &nbsp;&nbsp;&nbsp;<asp:image ID="Image6" runat="server" skinid="NextOff" ImageUrl="~/images/arr_right.gif" /></CC:NavigatorItem>
                                            <CC:NavigatorItem type="LastOn" runat="server" ID="Navigatoritem7">
                                                                        &nbsp;&nbsp;&nbsp;<asp:LinkButton id="NavigatorLast" runat="server">
                                                                            <asp:image ID="Image7" runat="server" skinid="Last" ImageUrl="~/images/arr_right.gif"  /></asp:LinkButton>
                                                                    </CC:NavigatorItem>
                                            <CC:NavigatorItem type="LastOff" runat="server" ID="Navigatoritem8">
                                                                        &nbsp;&nbsp;&nbsp;<asp:image ID="Image8" runat="server" skinid="LastOff"  ImageUrl="~/images/arr_right.gif" /></CC:NavigatorItem></CC:Navigator>		
 
                    </td>
                </tr>
            </table>
            </FooterTemplate>     
                     
        </asp:repeater>  

           	
<asp:Literal ID="litContentNavigatorBoxBottom" runat="server"></asp:Literal>