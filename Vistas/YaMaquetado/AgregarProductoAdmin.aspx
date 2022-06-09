<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AgregarProductoAdmin.aspx.cs" Inherits="Vistas.YaMaquetado.AgregarProductoAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Registre su cuenta aqui</h1>
        <div class="form">
            <br />
            <br />
            <br />
        <div class="form"><asp:TextBox ID="txtCodart" runat="server" class="form-control" placeholder="Codigo de articulo" type="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCodart" ErrorMessage="Complete el nombre del producto"></asp:RequiredFieldValidator></div>
       
        <div class="form"><asp:TextBox ID="txtPreciounit" runat="server" class="form-control" placeholder="Precio unitario" type="number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPreciounit" ErrorMessage="Complete un precio unitario"></asp:RequiredFieldValidator></div>
        
        <div class="form"><asp:TextBox ID="txtStock" runat="server" class="form-control" placeholder="Stock del producto" type="email"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtStock" ErrorMessage="Complete su correo"></asp:RequiredFieldValidator></div>
        
        <div class="form"><asp:TextBox ID="txtCategoria" runat="server" class="form-control" placeholder="Categoria del producto" type="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCategoria" ErrorMessage="Complete su direccion"></asp:RequiredFieldValidator></div>
       
        <div class="form"><asp:TextBox ID="txtDescripcion" runat="server" class="form-control" placeholder="Descripcion del producto" type="password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Complete su contraseña"></asp:RequiredFieldValidator></div>
        
        <div class="form"><asp:TextBox ID="txtImagen" runat="server" class="form-control" placeholder="URL de imagen" type="password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtImagen" ErrorMessage="Repita su contraseña"></asp:RequiredFieldValidator></div>
       
        
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
