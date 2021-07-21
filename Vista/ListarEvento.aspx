<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura_Evento.Master" AutoEventWireup="true" CodeBehind="ListarEvento.aspx.cs" Inherits="Vista.ListarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    Lista de eventos 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField DataField="Id_evento" HeaderText="Id Evento" />
              <asp:BoundField DataField="Nombre_contacto" HeaderText="Nombre" />
              <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
              <asp:BoundField DataField="Direccion" HeaderText="Direccion" />
              <asp:BoundField DataField="Correo_electronico" HeaderText="Email" />
              <asp:BoundField DataField="Fecha_evento" HeaderText="Fecha" />
              <asp:BoundField DataField="Cantidad_personas" HeaderText="Personas" />
        </Columns>
    </asp:GridView>
</asp:Content>
