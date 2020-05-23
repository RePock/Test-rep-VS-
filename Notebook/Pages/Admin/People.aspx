<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="People.aspx.cs" Inherits="Notebook.Pages.Admin.People" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" ItemType="Notebook.Models.Person" SelectMethod="GetPeople"
        DataKeyNames="PeopleID" UpdateMethod="UpdatePerson" DeleteMethod="DeletePerson"
        InsertMethod="InsertPerson" InsertItemPosition="LastItem" EnableViewState="false"
        runat="server">
        <LayoutTemplate>
            <div class="outerContainer">
                <table id="productsTable">
                    <tr>
                        <th>Имя</th>
                        <th>Фамилия</th>
                        <th>Возраст</th>
                        <th>Почта</th>
                        <th>Телефон</th>
                    </tr>
                    <tr runat="server" id="itemPlaceholder"></tr>
                </table>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Item.FirstName %></td>
               <td><%# Item.SecondName %></td>
                <td><%# Item.Age %></td>
                <td><%# Item.Email %></td>
                <td><%# Item.Phone %></td>
                <td>
                    <asp:Button ID="Button1" CommandName="Edit" Text="Изменить" runat="server" />
                    <asp:Button ID="Button2" CommandName="Delete" Text="Удалить" runat="server" />
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr>
                <td>
                    <input name="firstName" value="<%# Item.FirstName %>" />
                    <input type="hidden" name="ProductID" value="<%# Item.PeopleID %>" />
                </td>
                <td>
                    <input name="secondName" value="<%# Item.SecondName %>" /></td>
                <td>
                    <input name="age" value="<%# Item.Age %>" /></td>
                <td>
                    <input name="email" value="<%# Item.Email %>" /></td>
                <td>
                    <input name="phone" value="<%# Item.Phone %>" /></td>
                <td>
                    <asp:Button ID="Button3" CommandName="Update" Text="Обновить" runat="server" />
                    <asp:Button ID="Button4" CommandName="Cancel" Text="Отмена" runat="server" />
                </td>
            </tr>
        </EditItemTemplate>
        <InsertItemTemplate>
            <tr>
                <td>
                    <input name="firstName" />
                    <input type="hidden" name="ProductID" value="0" />
                </td>
                <td>
                    <input name="secondName" /></td>
                <td>
                    <input name="age" /></td>
                <td>
                    <input name="email" /></td>
                <td>
                    <input name="phone" /></td>
                <td>
                    <asp:Button ID="Button5" CommandName="Insert" Text="Вставить" runat="server" />
                </td>
            </tr>
        </InsertItemTemplate>
    </asp:ListView>
</asp:Content>