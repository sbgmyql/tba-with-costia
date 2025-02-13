<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" 
        action = "SignIn.aspx" 
        method ="post"
        runat="server">
        <div>
            <input type ="text" name="uLogin" id ="uLogin" placeholder ="email" />
            <br />
            <input type ="password" name ="uPass" placeholder ="PassWord" id="uPass"
            <br />
            <input type="submit" id="submit" value ="SEND" />
            <br />
            <label style ="color:red" for ="uPass ">HI</label>
        </div>
    </form>
</body>
</html>
