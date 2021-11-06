<%@ Page Language="C#" AutoEventWireup="true" Codefile="adr1.aspx.cs" Inherits="andrewscanteensystem.adr1" %>

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
 
    .auto-style1 {
        font-size: x-large;
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
            &nbsp;&nbsp;<span class="auto-style1"><strong>&nbsp;View Interview Details</strong></span><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Round 1" CssClass="btn btn-dark" OnClick="Button1_Click"/>
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Round 2" CssClass="btn btn-dark" OnClick="Button2_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Round 3" CssClass="btn btn-dark" OnClick="Button3_Click" />
        &nbsp;&nbsp;
           <asp:Button ID="Button4" runat="server" Text="Selected Students" CssClass="btn btn-dark" OnClick="Button4_Click" />

        </div>
        <div class="text-center">
            <br />
        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="sapId" HeaderText="sapId" SortExpression="sapId" />
                <asp:BoundField DataField="jobid" HeaderText="jobid" SortExpression="jobid" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            </Columns>
        </asp:GridView>
        <div class="text-center">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="sapId" HeaderText="sapId" SortExpression="sapId" />
                    <asp:BoundField DataField="jobid" HeaderText="jobid" SortExpression="jobid" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="sapId" HeaderText="sapId" SortExpression="sapId" />
                    <asp:BoundField DataField="jobid" HeaderText="jobid" SortExpression="jobid" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT [sapId], [jobid], [fname], [lname] FROM [round1]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT [sapId], [jobid], [fname], [lname] FROM [round2]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [round3]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [selectedCandidates]"></asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="sapId" DataSourceID="SqlDataSource4" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="sapId" HeaderText="sapId" ReadOnly="True" SortExpression="sapId" />
                    <asp:BoundField DataField="jobid" HeaderText="jobid" SortExpression="jobid" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
