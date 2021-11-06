<%@ Page Language="C#" AutoEventWireup="true" Codefile="candidateDetails.aspx.cs" Inherits="andrewscanteensystem.candidateDetails" %>

<!DOCTYPE html>

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
        .auto-style2 {
            text-align: center;
            font-size: large;
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
        <a class="nav-link" href="Vieworder.aspx">View applicants<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="stock.aspx">Post Job</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Report.aspx">Reports</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="feedbackadmin.aspx">Feedback</a>
      </li>
        
        </ul>
       <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto">
       <li class="nav-item dropdown">

        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Coupon.aspx">Coupons</a>
          
          <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="firstpage.aspx" id="swer">Logout</a>

           
  
        </div>
      </li>
            
        
        </ul>
    </form>
  </div>
</nav>

        <form id="form1" runat="server">
            <h1 class="text-center">Candidate Details</h1>
            <table class="table table table-sm table-secondary table-borderless table-hover">

  <tbody>
    <tr><th scope="row">Sap Id:</th><td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">First name:</th><td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Middle name: </th><td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Last name:</th><td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Age: </th><td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Date of Birth: </th><td><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td></tr>

    <tr><th scope="row">Email id:</th><td><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td><td colpan="3"></td></tr>

          <tr><th scope="row" colspan="5" class="auto-style1">X Details </th></tr>

    <tr><th scope="row">School: </th><td><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Board: </th><td><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Year: </th><td><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Percentage: </th><td><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td></tr>

                <tr><th scope="row" colspan="5" class="auto-style1">XII Details </th></tr>

       <tr><th scope="row">College: </th><td><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Board: </th><td><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Year: </th><td><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Percentage: </th><td><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><th scope="row" colspan="5" class="auto-style1">Graduation Details </th></tr>

        <tr><th scope="row">College: </th><td><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Board: </th><td><asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Year: </th><td><asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Percentage: </th><td><asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><th scope="row" colspan="5" class="auto-style1">PostGraduation Details </th></tr>

        <tr><th scope="row">College: </th><td><asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Board: </th><td><asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Year: </th><td><asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Percentage: </th><td><asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><th scope="row" colspan="5" class="auto-style1">Other Details </th></tr>

         <tr><th scope="row">Technical Skills: </th><td colspan="4"><asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><th scope="row" colspan="5" class="auto-style2">Courses </th></tr>

    <tr><th scope="row">Course 1: </th><td><asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Course 2: </th><td><asp:Label ID="Label27" runat="server" Text="Label"></asp:Label></td></tr>
     <tr><th scope="row">Course 3: </th><td><asp:Label ID="Label28" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Course 4: </th><td><asp:Label ID="Label29" runat="server" Text="Label"></asp:Label></td></tr>

                      <tr><th scope="row" colspan="5" class="auto-style2">Internship Details</th></tr>

     <tr><th scope="row">Company: </th><td><asp:Label ID="Label30" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Position: </th><td><asp:Label ID="Label31" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Description: </th><td colspan="4"><asp:Label ID="Label32" runat="server" Text="Label"></asp:Label></td></tr>

     <tr><th scope="row">Company: </th><td><asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Position: </th><td><asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Description: </th><td colspan="4"><asp:Label ID="Label35" runat="server" Text="Label"></asp:Label></td></tr>

     <tr><th scope="row">Company: </th><td><asp:Label ID="Label36" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Position: </th><td><asp:Label ID="Label37" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Description: </th><td colspan="4"><asp:Label ID="Label38" runat="server" Text="Label"></asp:Label></td></tr>

                <tr><th scope="row" colspan="5" class="auto-style2">Project Details </th></tr>

    <tr><th scope="row">Name: </th><td><asp:Label ID="Label39" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Domain: </th><td><asp:Label ID="Label40" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Description: </th><td colspan="4"><asp:Label ID="Label41" runat="server" Text="Label"></asp:Label></td></tr>

    <tr><th scope="row">Name: </th><td><asp:Label ID="Label42" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Domain: </th><td><asp:Label ID="Label43" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Description: </th><td colspan="4"><asp:Label ID="Label44" runat="server" Text="Label"></asp:Label></td></tr>

    <tr><th scope="row">Name: </th><td><asp:Label ID="Label45" runat="server" Text="Label"></asp:Label></td><td></td><th scope="row">Domain: </th><td><asp:Label ID="Label46" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><th scope="row">Description: </th><td colspan="4"><asp:Label ID="Label47" runat="server" Text="Label"></asp:Label></td></tr>







   

  </tbody>
</table>
            </form>
    </body>
        
</html>
