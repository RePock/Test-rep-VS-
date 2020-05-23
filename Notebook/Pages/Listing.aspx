<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="Notebook.Pages.Listing" 
    MasterPageFile="~/Pages/Store.Master"%>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">
        <%
                foreach (Notebook.Models.Person person in GetPerson())
                {
                    Response.Write(String.Format(@"
                        <div class='item'>
                            <h3>{0}</h3>
                            <h4>{1}</h4>
                            <h5>{2}</h5>
                            <h6>{3}</h6>
                            <h7>{4}</h7>
                        </div>", 
                        person.FirstName, person.SecondName, person.Age,person.Email,person.Phone));
                }
            %>
        </div>
    
</asp:Content>
