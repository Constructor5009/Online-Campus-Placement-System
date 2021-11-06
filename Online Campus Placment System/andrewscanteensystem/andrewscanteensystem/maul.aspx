<%@ Page Language="C#" AutoEventWireup="true" Codefile="maul.aspx.cs" Inherits="andrewscanteensystem.maul" %>

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
        .a
{ 
margin-left: auto;
margin-right: auto;
}
        .auto-style2 {
            text-align: center;
            width: 177px;
        }
    </style>

    
    
    </head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">MPSTME NMIMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="adminstud.aspx">View students<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admincom.aspx">View companies</a>
      </li>
        
        <li class="nav-item">
        <a class="nav-link" href="adr1.aspx">Details</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="feedbackadmin.aspx">Feedback</a>
      </li>
         <li class="nav-item dropdown">

        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Send mail
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="maul.aspx">Mass email students</a>
            <a class="dropdown-item" href="stmail.aspx">Mail students</a>
                        <a class="dropdown-item" href="mailst.aspx">Mail company</a>

            </div>
             </li>
        </ul>


   <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto">

       
          <li class="nav-item">
        <a class="nav-link" href="firstpage.aspx">Logout</a>
   
      </li>
            
        
        </ul>
    </form>
  </div>
</nav>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Send Mass Email to All Students<br />
            <br />
            </strong></div><br />
        <table class="table-default table-hover table-bordered" align="center" style="margin: 0px auto;">
            <tr>
                <td class="auto-style2"><strong>Total Students:</strong></td>
                <td class="text-center">
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Subject:</strong></td>
                <td class="text-center">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="462px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Message:</strong></td>
                <td class="text-center">
                    <asp:TextBox ID="TextBox2" runat="server" Height="160px" TextMode="MultiLine" Width="475px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                </td>
                <td class="text-center">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Send Email" CssClass="btn btn-dark" OnClick="Button1_Click" Width="343px" />
                    <br />
                </td>
            </tr>
        </table>
        <p class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p class="text-center">
&nbsp;<asp:Label ID="Label1" runat="server" ></asp:Label>
        </p>
    </form>
</body>
</html>
