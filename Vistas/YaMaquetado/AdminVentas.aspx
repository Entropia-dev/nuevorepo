﻿<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminVentas.aspx.cs" Inherits="Vistas.YaMaquetado.AdminVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Historial de ventas
            <asp:GridView ID="grdventas2" runat="server">
            </asp:GridView>
            </h1>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
