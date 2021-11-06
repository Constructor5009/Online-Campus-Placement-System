<%@ Page Language="C#" AutoEventWireup="true" Codefile="viewCompany.aspx.cs" Inherits="andrewscanteensystem.viewCompany" %>

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
        }
        .auto-style7 {
            width: 1468px;
            text-align: center;
        }
       
        .auto-style10 {
            text-align: right;
            width: 206px;
        }
        .auto-style11 {
            width: 842px;
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
        <h1 class="auto-style6"><strong>Companies on Campus</strong></h1><br />
        <div class="auto-style1">
            
           <table class="center ">
               <tr><td class="auto-style7">Enter your Sap Id to find the companies you are eligible for: 
            
&nbsp;&nbsp;&nbsp; 
            
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-dark" Text="Submit" Width="179px" Height="34px" style="margin-bottom: 0" /></td></tr></table>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="1211px">
                <ItemTemplate>
                    <table class="w-100">
                        <tr>
                            <td class="auto-style10"><strong>Company Name:</td>
                                <td class="auto-style11"><asp:Label ID="Label1" runat="server" Text='<%# Eval("comName") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td  colspan="2">
                               
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("logo") %>' Height="100px" Width="100px"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Designation:</td>
                                <td class="auto-style11"><asp:Label ID="Label2" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Compensation:</td>
                               <td class="auto-style11"> <asp:Label ID="Label3" runat="server" Text='<%# Eval("compensation") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>From:</td>
                                <td class="auto-style11"><asp:Label ID="Label4" runat="server" Text='<%# Eval("fromdate") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>To:</td>
                                <td class="auto-style11"><asp:Label ID="Label5" runat="server" Text='<%# Eval("todate") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Branches:</td>
                               <td class="auto-style11"> <asp:Label ID="Label6" runat="server" Text='<%# Eval("branches") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Location:</td>
                               <td class="auto-style11"> <asp:Label ID="Label7" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>PPT Time:</td>
                                <td class="auto-style11"><asp:Label ID="Label8" runat="server" Text='<%# Eval("ppttime") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Round 1:</td>
                                <td class="auto-style11"><asp:Label ID="Label9" runat="server" Text='<%# Eval("round1") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Round 2:</td>
                                <td class="auto-style11"><asp:Label ID="Label10" runat="server" Text='<%# Eval("round2") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Round 3:</td>
                               <td class="auto-style11"> <asp:Label ID="Label11" runat="server" Text='<%# Eval("round3") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Round 4:</td>
                               <td class="auto-style11"> <asp:Label ID="Label12" runat="server" Text='<%# Eval("round4") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Round 5:</td>
                               <td class="auto-style11"> <asp:Label ID="Label13" runat="server" Text='<%# Eval("round5") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Round 6:</td>
                               <td class="auto-style11"> <asp:Label ID="Label14" runat="server" Text='<%# Eval("round6") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT [comName], [logo], [Id], [designation], [fromdate], [todate], [compensation], [branches], [location], [ppttime], [round1], [round2], [round3], [round4], [round5], [round6] FROM [job] WHERE ([selectedCandidates] LIKE '%' + @selectedCandidates + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="selectedCandidates" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
