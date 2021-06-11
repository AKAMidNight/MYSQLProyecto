<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MYSQLProyecto.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>MENU</h1>
            <p>
                <asp:Button Text="Ir a libro" runat="server" Id="btnLibro" OnClick="btnLibro_Click"/>
                <asp:Button Text="Ir a autor" runat="server" Id="btnAutor" OnClick="btnAutor_Click" />
                <asp:Button Text="Ir a prestamo" runat="server" Id="btnPrestamo" OnClick="btnPrestamo_Click" />
            </p>
        </div>
    </form>
</body>
</html>
