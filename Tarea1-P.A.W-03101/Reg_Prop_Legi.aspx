<%@ Page Title="Registro de propuestas legislativas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reg_Prop_Legi.aspx.cs" Inherits="Tarea1_P.A.W_03101.Reg_Prop_Legi" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="p-2 col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">Registro de propuestas legislativas</h1>

    <div class="d-flex flex-wrap">

        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 d-flex flex-column p-2">

            <asp:Label ID="lbl_identificacion" runat="server" CssClass="badge bg-secondary">Elija el tipo de identificación</asp:Label>
            <asp:DropDownList class="ddl_tipoIdentificacion mb-3 mw-100" runat="server" Style="height: 37px">
                <asp:ListItem Value="Cédula">Cédula</asp:ListItem>
                <asp:ListItem Value="Cédula residencia">Cédula residencia</asp:ListItem>
            </asp:DropDownList>
            <%--<select id="slc_tipoIdentificacion" class="mb-3 mw-100" style="height: 37px">

                <option>Cédula</option>
                <option>Cédula residencia</option>

            </select>--%>

            <asp:Label ID="lbl_numIdentif" runat="server" CssClass="badge bg-secondary">Numero de indentificación</asp:Label>
            <asp:TextBox runat="server" CssClass="txt_numIdentif form-control mb-3 mw-100" placeholder="8 numeros" type="text" pattern="[0-9]+" MinLengt="8" MaxLength="8" required=""></asp:TextBox>

            <asp:Label ID="lbl_nombre" runat="server" CssClass="badge bg-secondary" Text="Nombre"></asp:Label>
            <asp:TextBox runat="server" CssClass="txt_nombre form-control mb-3 mw-100" placeholder="Nombre" required=""></asp:TextBox>

            <asp:Label ID="lbl_apellido1" runat="server" CssClass="badge bg-secondary" Text="Primer Apellido"></asp:Label>
            <asp:TextBox runat="server" CssClass="txt_apellido1 form-control mb-3 mw-100" placeholder="Primer Apellido" required=""></asp:TextBox>

            <asp:Label ID="lbl_apellido2" runat="server" CssClass="badge bg-secondary" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox runat="server" CssClass="txt_apellido2 form-control mb-3 mw-100" placeholder="Segundo Apellido" required=""></asp:TextBox>

        </div>

        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 d-flex flex-column p-2">

            <asp:Label ID="lbl_telefono" runat="server" CssClass="badge bg-secondary" Text="Telefono"></asp:Label>
            <asp:TextBox runat="server" CssClass="txt_telefono form-control mb-3 mw-100" placeholder="88888888" type="text" pattern="[0-9]+" MinLength="8" MaxLength="8" required=""></asp:TextBox>

            <asp:Label ID="lbl_email" runat="server" CssClass="badge bg-secondary" Text="Email"></asp:Label>
            <asp:TextBox runat="server" CssClass="txt_Email form-control mb-3 mw-100" pattern="^[^@]+@[^@]+\.[a-zA-Z]{2,}$" placeholder="email@example.com" TextMode="Email" required=""></asp:TextBox>

            <asp:Label ID="lbl_provincia" runat="server" CssClass="badge bg-secondary" Text="Provincia"></asp:Label>
            <asp:DropDownList class="ddl_provincia mb-3 mw-100" runat="server" Style="height: 37px">
                <asp:ListItem Value="San José">San José</asp:ListItem>
                <asp:ListItem Value="Alajuela">Alajuela</asp:ListItem>
                <asp:ListItem Value="Cartago">Cartago</asp:ListItem>
                <asp:ListItem Value="Heredia">Heredia</asp:ListItem>
                <asp:ListItem Value="Puntarenas">Puntarenas</asp:ListItem>
                <asp:ListItem Value="Guanacaste">Guanacaste</asp:ListItem>
                <asp:ListItem Value="Limón">Limón</asp:ListItem>
            </asp:DropDownList>
            <%--<select id="slc_provincia" class="mb-3 mw-100" style="height: 37px">

                <option>San José</option>
                <option>Alajuela</option>
                <option>Cartago</option>
                <option>Heredia</option>
                <option>Puntarenas</option>
                <option>Guanacaste</option>
                <option>Limón</option>

            </select>--%>

            <asp:Label ID="lbl_canton" runat="server" CssClass="badge bg-secondary" Text="Cantón"></asp:Label>
            <asp:DropDownList class="ddl_canton mb-3 mw-100" runat="server" Style="height: 37px">                
                <asp:ListItem Value="Guanacaste">Guanacaste</asp:ListItem>
                <asp:ListItem Value="Limón">Limón</asp:ListItem>
            </asp:DropDownList>
            <%--<select id="slc_canton" class="mb-3 mw-100" style="height: 37px">

                <option>Alajuela</option>
                <option>San jose</option>

            </select>--%>

            <asp:Label ID="lbl_propuesta" runat="server" CssClass="badge bg-secondary" Text="Propuetsa"></asp:Label>
            <asp:TextBox runat="server" CssClass="txt_Propuesta form-control mw-100" placeholder="Propuesta" TextMode="MultiLine" MaxLength="50" required=""></asp:TextBox>

        </div>

        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 d-flex p-2">

            <asp:Button runat="server" Text="Guardar" CssClass="btn_guardar btn btn-outline-secondary btn-sm mw-100 me-2" OnClientClick="guardarDatosFormularioEnjson(event)" />
            <asp:Button runat="server" Text="Limpiar" CssClass="btn_limpiar btn btn-outline-secondary btn-sm mw-100" OnClientClick="limpiarformulario(event)" />

        </div>

    </div>

</asp:Content>
