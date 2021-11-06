<%@ Page Language="C#" AutoEventWireup="true" Codefile="admincom.aspx.cs" Inherits="andrewscanteensystem.admincom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
    .nav
    {
        width:100%;
        padding-left:20px;
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
        <div class="text-center">
            &nbsp;&nbsp;&nbsp;<br /><br />
            <asp:Button ID="Button1" runat="server" Text="View Companies on Campus" CssClass="btn btn-dark" OnClick="Button1_Click"/>
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Company Details" CssClass="btn btn-dark" OnClick="Button2_Click" />
        </div>
        <div class="text-center">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" SortExpression="name" />
                    <asp:BoundField DataField="hrname" HeaderText="HR Name" SortExpression="hrname" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT [name], [hrname], [phone], [email] FROM [companyLogin]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT [comName], [Id], [designation], [fromdate], [todate], [round1], [round2], [round3], [round4], [compensation], [location] FROM [job]"></asp:SqlDataSource>
        <div class="text-center">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="comName" HeaderText="Company Name" SortExpression="comName" />
                    <asp:BoundField DataField="Id" HeaderText="Job Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" />
                    <asp:BoundField DataField="fromdate" HeaderText="From" SortExpression="fromdate" />
                    <asp:BoundField DataField="todate" HeaderText="To" SortExpression="todate" />
                    <asp:BoundField DataField="round1" HeaderText="Round 1" SortExpression="round1" />
                    <asp:BoundField DataField="round2" HeaderText="Round 2" SortExpression="round2" />
                    <asp:BoundField DataField="round3" HeaderText="Round 3" SortExpression="round3" />
                    <asp:BoundField DataField="round4" HeaderText="Round 4" SortExpression="round4" />
                    <asp:BoundField DataField="compensation" HeaderText="CTC" SortExpression="compensation" />
                    <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
