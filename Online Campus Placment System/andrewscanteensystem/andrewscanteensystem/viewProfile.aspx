<%@ Page Language="C#" AutoEventWireup="true" Codefile="viewProfile.aspx.cs" Inherits="andrewscanteensystem.viewProfile" %>

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
            font-size: x-large;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            font-size: medium;
            text-align: center;
        }
    </style>

    
    
    </head>
<body>
       <form id="form1" runat="server">
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
  

     <table class="table table table-sm table-secondary table-borderless table-hover">

          <thead class="thead-light">

                <tr><th scope="row" colspan="5" class="text-center"><strong><span class="auto-style1">View And Edit Profile </span> </strong><span class="auto-style1">&nbsp;
                    
                    </span>
                    
                    </th></tr></thead>
                                                      <thead class="thead-light">

                <tr><th scope="row" colspan="5" class="auto-style2"><strong><span class="auto-style3">Enter Your Sap Id: </span> </strong><span class="auto-style3">&nbsp;
                    </span>
                    <asp:TextBox ID="TextBox48" runat="server" CssClass="auto-style3"></asp:TextBox>
                    <span class="auto-style3">&nbsp;&nbsp;
                    </span>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"  Text="Submit" CssClass="btn btn-dark" Height="46px"  />
                    <span class="auto-style3">&nbsp;
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                    </span>
                    </th></tr></thead>
                <tr>
                    <td class="text-right">First name:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                    <td class="auto-style5">Middle name:&nbsp;</td>
                    <td class="auto-style7"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">Last name:</td>
                    <td class="auto-style4"><asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>

                    </td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Email id:&nbsp;</td>
                    <td class="auto-style7"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>&nbsp;

                    </td>
                </tr>
                
                <tr>
                    <td class="text-right">Date of birth:</td>
                    <td class="auto-style4">
                                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                    </td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Age:&nbsp;</td>
                    <td class="auto-style7">&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                    </td>
                </tr>
              
               
                                      <thead class="thead-light">

                <tr>
<th scope="row" colspan="5" class="auto-style4"><strong>Xth Details</strong></th>
                    
                </tr></thead>
                <tr>
                    <td class="text-right">School:</td>
                    <td class="auto-style4"><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

                    </td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Year of passing:</td>
                                        <td class="auto-style7">&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                                        </td>

                </tr>
                <tr>
                    <td class="text-right">Board:</td>
                    <td class="auto-style4">   <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Percentage:</td>
                    <td class="auto-style7">
                                                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;</td>
                </tr>
                                      <thead class="thead-light">
                <tr>
                    <th scope="row" colspan="5" class="auto-style4"><strong> XII Details</strong></th>
                   
                </tr>
                                          </thead>
                 <tr>
                    <td class="text-right">College:</td>
                    <td class="auto-style4">
                                                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>

                        &nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Year of passing:</td>
                         <td class="auto-style7">&nbsp;<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>

                         </td>

                </tr>

                 <tr>
                    <td class="text-right">Board:</td>
                    <td class="auto-style4">
                                                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Percentage:</td>
                                         <td class="auto-style7">
                                             
                                                                      <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                                                      <thead class="thead-light">

                 <tr>
                    <th scope="row" colspan="5" class="auto-style4"><strong>Degree Details</strong></th>
                    
                </tr>
                </thead>
                 <tr>
                    <td class="text-right">College:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Year of passing</td>
                                         <td class="auto-style7">                                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                 <tr>
                    <td class="text-right">Board:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Percentage:</td>
                                         <td class="auto-style7">                                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                                      <thead class="thead-light">
                 <tr>
                    <th scope="row" colspan="5" class="auto-style4"><strong>Postgraduation Details</strong></th>
                    
                </tr></thead>

                 <tr>
                    <td class="text-right">College:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Year of passing:</td>
                                         <td class="auto-style7">                                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                <tr>
                    <td class="text-right">Board:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Percentage:</td>
                                        <td class="auto-style7">                                                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                                                      <thead class="thead-light">

                <tr>
                    <th scope="row" colspan="5" class="auto-style4"><strong>Other Details</strong></th>
                    
                </tr>
</thead>
                  <tr>
                    <td class="auto-style9">List technical skills:</td>
                    <td colspan="4" class="auto-style10">
                        <asp:TextBox ID="TextBox41" runat="server" TextMode="MultiLine" Width="915px"></asp:TextBox>
                      </td>
                   

                </tr>


                                                      <thead class="thead-light">

                <tr>
                    <th scope="row" colspan="5" class="auto-style4"><strong>Courses</strong></th>
                    
                </tr></thead>
                  <tr>
                    <td class="text-right">Course 1:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Course 2:&nbsp;</td>
                       <td class="auto-style7">                                                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td class="text-right">Course 3:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Course 4:&nbsp;</td>
                       <td class="auto-style7">                                                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                                                      <thead class="thead-light">

                 <tr>
                    <th scope="row" colspan="5" class="auto-style4"><strong>Internship Details</strong></th>
                    
                </tr></thead>

                  <tr>
                    <td class="text-right">Company 1 name:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Position:&nbsp;</td>
                       <td class="auto-style7">                                                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td class="text-right">Internship responsibilities:</td>
                    <td colspan="4">
                       <asp:TextBox ID="TextBox42" runat="server" TextMode="MultiLine" Width="921px"></asp:TextBox>
                     </td>
                    

                </tr>

                <tr>
                    <td class="text-right">Company 2 name:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Position:&nbsp;</td>
                       <td class="auto-style7">                                             <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td class="text-right">Internship responsibilities:</td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox43" runat="server" TextMode="MultiLine" Width="918px"></asp:TextBox>
                      </td>
                    

                </tr>

                <tr>
                    <td class="text-right">Company 3 name:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Position:&nbsp;</td>
                       <td class="auto-style7">                                                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td class="text-right">Internship description:</td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox44" runat="server" TextMode="MultiLine" Width="916px"></asp:TextBox>
                       </td>
                    
                </tr>
                                                      <thead class="thead-light">

                 <tr>
                    <th scope="row" colspan="5" class="auto-style4"><strong>Project Details</strong></th>
                    
                </tr></thead>

                <tr>
                    <td class="text-right">Project 1:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Domain/Platform:&nbsp;</td>
                       <td class="auto-style7">                                                <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td class="text-right">Project description:</td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox45" runat="server" TextMode="MultiLine" Width="897px"></asp:TextBox>
                      </td>
                    
                </tr>

                <tr>
                    <td class="text-right">Project 2:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td class="auto-style5">Domain/Platform:&nbsp;</td>
                       <td class="auto-style7">                                                <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td class="text-right">Project description:</td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox46" runat="server" TextMode="MultiLine" Width="893px"></asp:TextBox>
                       </td>
                    
                </tr>

                <tr>
                    <td class="text-right">Project 3:</td>
                    <td class="auto-style4">                                                <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td class="text-left"></td>
                    <td class="auto-style5">Domain/Platform:&nbsp;</td>
                       <td class="auto-style7">                                                <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td class="text-right">Project description:</td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox47" runat="server" TextMode="MultiLine" Width="893px"></asp:TextBox>
                      </td>
                    
                </tr>

                <tr>
                    <td class="text-right">Upload Resume (pdf only):</td>
                    <td colspan="4">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    
                </tr>
                 <tr>
                    <td colspan="5" class="auto-style12">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-dark" Width="301px"/>
                     </td>
                    
                </tr>

                 <tr>
                    <td colspan="5" class="text-center">
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     </td>
                    
                </tr>
                 
            </table>
       </form>
    </body>
</html>
