<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPresupuestos.aspx.cs" Inherits="Vistas.YaMaquetado.AdminPresupuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Presupuestos solicitados<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LocalidadLabel" runat="server" Text='<%# Eval("Localidad") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ConsultaLabel" runat="server" Text='<%# Eval("Consulta") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    </td>
                    <td>
                        <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LocalidadTextBox" runat="server" Text='<%# Bind("Localidad") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ConsultaTextBox" runat="server" Text='<%# Bind("Consulta") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No se han devuelto datos.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    </td>
                    <td>
                        <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LocalidadTextBox" runat="server" Text='<%# Bind("Localidad") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ConsultaTextBox" runat="server" Text='<%# Bind("Consulta") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LocalidadLabel" runat="server" Text='<%# Eval("Localidad") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ConsultaLabel" runat="server" Text='<%# Eval("Consulta") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">Alias</th>
                                    <th runat="server">Telefono</th>
                                    <th runat="server">Localidad</th>
                                    <th runat="server">Consulta</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LocalidadLabel" runat="server" Text='<%# Eval("Localidad") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ConsultaLabel" runat="server" Text='<%# Eval("Consulta") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT [Alias], [Telefono], [Localidad], [Consulta] FROM [Presupuestos]"></asp:SqlDataSource>
            </h1>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
