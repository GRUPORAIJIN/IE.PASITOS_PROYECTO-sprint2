<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SIdeGesMatriPasitos.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="recursos/css/estilos.css" rel="stylesheet" />

    <title></title>
</head>
<body class="bg-light">
    <div class="Wrapper">
        <div class="formconten">
            <form id="Formulario_Login" runat="server">
                <div class="from-control">
                    <div class="row">
                        <asp:Label class="h3" ID="lblBienvenido" runat="server" Text="BIENVENIDO I.E.P PASITOS"></asp:Label>
                    </div>
                    <div>
                        <img src="recursos/imagenes/logo_pasitos.png" />"
                    </div> 
                        <asp:Login ID="Login2" runat="server" OnAuthenticate="Login2_Authenticate" CssClass="form-control">
                        </asp:Login>
                </div>
            </form>
        </div>
    </div>
</body>
</html>

