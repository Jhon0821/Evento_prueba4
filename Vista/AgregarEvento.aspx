<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura_Evento.Master" AutoEventWireup="true" CodeBehind="AgregarEvento.aspx.cs" Inherits="Vista.AgregarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    Agregar Evento
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ingreso de eventos</h1>
        <div>
            
            <asp:Table ID="tblFormulario" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lbmensaje" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="250px">
                        <asp:Label ID="Label1" runat="server" Text="Nombre de Evento" />
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtNombre" runat="server"
                            Height="30px" Width="200px"
                            placeholder="Ingrese Nombre de evento"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvNombre" 
                            runat="server" ErrorMessage="* Debe ingresar un nombre"
                            ControlToValidate="txtNombre"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell Width="250px">
                        <asp:Label ID="lblFecha" runat="server" Text="Fecha" />
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtFecha" runat="server"
                            Height="30px" Width="200px" TextMode="Date"
                            placeholder="Ingrese Una fecha"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvTxtFecha" 
                            runat="server" ErrorMessage="* Debe ingresar una fecha"
                            ControlToValidate="txtFecha"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell Width="250px">
                        <asp:Label ID="lbldireccion" runat="server" Text="Direccion" />
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtdireccion" runat="server"
                            Height="30px" Width="200px" 
                            placeholder="Ingrese Una direccion"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvdireccion" 
                            runat="server" ErrorMessage="* Debe Ingresar una direccion valida"
                            ControlToValidate="txtdireccion"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell Width="250px">
                        <asp:Label ID="lbltelefono" runat="server" Text="Telefono" />
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txttelefono" runat="server" TextMode="Number"
                            Height="30px" Width="200px" 
                            placeholder="Ingrese un Telefono"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvtelefono" 
                            runat="server" ErrorMessage="* Debe Ingresar Un telefono"
                            ControlToValidate="txttelefono"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Cantidad de personas" />
                    </asp:TableCell><asp:TableCell>
                         <asp:TextBox ID="txtcantidad" runat="server" TextMode="Number"
                            Height="30px" Width="200px" 
                            placeholder="Ingrese Personas"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            runat="server" ErrorMessage="* Debe Ingresar Una persona"
                            ControlToValidate="txtcantidad"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell><asp:TableCell>
                             <asp:Label ID="Label3" runat="server" Text="Correo Electronico" />
                    </asp:TableCell><asp:TableCell>
                         <asp:TextBox ID="txtemail" runat="server" TextMode="Email"
                            Height="30px" Width="200px"  
                            placeholder="Ingrese Una Correo"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            runat="server" ErrorMessage="* Debe Ingresar un email valido"
                            ControlToValidate="txtemail"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell ColumnSpan="3">
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar Evento"
                            Font-Bold="true" Font-Size="X-Large"
                            OnClick="btnIngresar_Click"/>
                    </asp:TableCell></asp:TableRow></asp:Table></div>

</asp:Content>