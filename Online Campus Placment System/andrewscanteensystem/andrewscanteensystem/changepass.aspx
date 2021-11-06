<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepass.aspx.cs" Inherits="andrewscanteensystem.changepass" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Style1.css" />
    <script src="Scripts/bootstrap.min.js"></script>

    
    
    <style type="text/css">
       
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
            font-size: large;
        }
        .auto-style4 {
            text-align: left;
            font-size: large;
        }
       
        .auto-style5 {
            text-align: right;
            font-size: medium;
            width: 195px;
        }
       
        .auto-style6 {
            text-align: left;
            width: 195px;
        }
        .auto-style7 {
            width: 453px;
        }
        .auto-style8 {
            text-align: left;
            width: 453px;
        }
       
        .auto-style9 {
            text-align: right;
            height: 66px;
        }
        .auto-style10 {
            height: 66px;
        }
       
        </style>

    
    
    </head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="main.aspx">MPSTME NMIMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="stuDetail.aspx">Create Profile <span class="sr-only">(current)</span></a>
      </li>
     
        <li class="nav-item">
        <a class="nav-link" href="orders.aspx">View Profile</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="viewCompany.aspx">View Company</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="feedback.aspx">Feedback</a>
      </li>
        </ul>
    <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto">
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="changepass.aspx">Change Password</a>
          <a class="dropdown-item" href=".aspx">Logout</a>
          <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="feedbackcheck.aspx" id="swer">Feedback Status</a>

        </div>
      </li>
            
        <li class="nav-item">
        <a class="nav-link" href="cart.aspx">My Cart</a>
      </li>
        </ul>
    </form>
  </div>
</nav>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Roll No:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Old Password:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>New Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Confirm New Password:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-dark" Text="Change Password" />
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentLogin.aspx">To Login,Click Here</asp:HyperLink>
        </div>
    </form>
</body>
</html>
