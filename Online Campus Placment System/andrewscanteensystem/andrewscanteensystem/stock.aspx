<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock.aspx.cs" Inherits="andrewscanteensystem.stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    	<link rel="stylesheet" type="text/css" href="Style1.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">St. Andrew's Canteen</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Vieworder.aspx">Orders<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="stock.aspx">Stock</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Report.aspx">Reports</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="feedbackadmin.aspx">Feedback</a>
      </li>
        
        </ul>
                 <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>


    <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto">
       <li class="nav-item dropdown">

        <a class="nav-link dropdown-toggle" href="adminmain.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Coupon.aspx">Coupons</a>
          
          <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="coupons.aspx" id="swer">Logout</a>

           
  
        </div>
      </li>
            
        
        </ul>
    </form>
  </div>
</nav>
    <form id="form1" runat="server">
        <div>
            <div>
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
                 <h2><asp:Label ID="Label5" runat="server" Text="Product Details"></asp:Label></h2>

         
         </div>
           
            &nbsp;&nbsp;&nbsp;&nbsp;
         </body></html>
