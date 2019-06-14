<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="CrudUsuario.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Gestion de Usuarios</h2>
    <table class="nav-justified">
        <tr>
            <td style="width: 117px">ID Usuario</td>
            <td class="modal-sm" style="width: 323px">
                <asp:TextBox ID="txtIDUsuario" runat="server" Width="251px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px">Nombres</td>
            <td class="modal-sm" style="width: 323px">
                <asp:TextBox ID="txtNombre" runat="server" Width="251px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px; height: 20px;">Apellidos</td>
            <td class="modal-sm" style="width: 323px; height: 20px">
                <asp:TextBox ID="txtApellido" runat="server" Width="251px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 117px">Correo</td>
            <td class="modal-sm" style="width: 323px">
                <asp:TextBox ID="txtCorreo" runat="server" Width="251px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px">Contraseña</td>
            <td class="modal-sm" style="width: 323px">
                <asp:TextBox ID="txtContraseña" runat="server" Width="251px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label><br />
    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click"/>
    <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" OnClientClick="return confirm ('¿Esta seguro de borrar el registro?')"/>
    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" /><br /><br />
  
    <p>
        <asp:GridView ID="GVUsuario" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UsuarioID" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UsuarioID" HeaderText="Usuario ID" ReadOnly="True" SortExpression="UsuarioID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:TemplateField HeaderText="Contraseña" SortExpression="Contrasena">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Contrasena") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Contrasena") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginCrudConnectionString %>" SelectCommand="SELECT [UsuarioID], [Nombre], [Apellido], [Correo], [Contrasena] FROM [Usuario]"></asp:SqlDataSource>
    </p>
    </asp:Content>
