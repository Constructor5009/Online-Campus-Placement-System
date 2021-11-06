<%@ Page Language="C#" AutoEventWireup="true" Codefile="checkprogress.aspx.cs" Inherits="andrewscanteensystem.checkprogress" %>

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
               
        .auto-style6 {
            text-align: center;
            width: 1474px;
            font-size: xx-large;
            font-weight: 600;
        }
        .auto-style7 {
            width: 1468px;
            text-align: center;
        }
       
        .auto-style8 {
            font-size: large;
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
        <a class="nav-link" href="viewProfile.aspx">View Profile</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="viewCompany.aspx">View Company</a>
      </li>
          <li class="nav-item">
        <a class="nav-link" href="availableoffers.aspx">Offers</a>
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
          <a class="dropdown-item" href="checkprogress.aspx">Progress</a>
          

          <a class="dropdown-item" href="firstpage.aspx">Logout</a>
          <div class="dropdown-divider"></div>

        </div>
      </li>
            
        <li class="nav-item">
        <a class="nav-link" href="feedbackcheck.aspx">Feedback Status</a>
      </li>
        </ul>
    </form>
  </div>
</nav>
    <form id="form1" runat="server">
        <h1 class="auto-style6">Check your Progress</h1><br />
        <div class="auto-style1">
            
           <table class="center ">
               <tr><td class="auto-style7">Enter your Sap Id to find your progress: 
            
&nbsp;&nbsp;&nbsp; 
            
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>                          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-dark" Text="Round1" Width="179px" Height="34px" style="margin-bottom: 0" />
</td></tr></table>
        </div>


        <div class="text-center">
            <strong>


        <br class="auto-style8" />
        <br class="auto-style8" />
            <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Round 1</span><br class="auto-style8" />
            </strong>
        </div>
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="sapId" HeaderText="Sap Id" SortExpression="sapId" />
                <asp:BoundField DataField="jobid" HeaderText="Job Id" SortExpression="jobid" />
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            </Columns>
        </asp:GridView>
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT [sapId], [jobid], [fname], [lname] FROM [round1] WHERE ([sapId] = @sapId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="sapId" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
     
        <div class="text-center">
            <strong><span class="auto-style8">&nbsp;Round 2<br />
            </span></strong><br />
        </div>
        <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="sapId" HeaderText="Sap Id" SortExpression="sapId" />
                <asp:BoundField DataField="jobid" HeaderText="Job Id" SortExpression="jobid" />
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [round2] WHERE ([sapId] = @sapId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="sapId" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="text-center">
        &nbsp;<strong><span class="auto-style8">Round 3</span></strong><br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [round3] WHERE ([sapId] = @sapId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="sapId" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="sapId" HeaderText="Sap Id" SortExpression="sapId" />
                <asp:BoundField DataField="jobid" HeaderText="Job Id" SortExpression="jobid" />
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    </form>
</body>
</html>
