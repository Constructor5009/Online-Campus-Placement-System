<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stuInfo.aspx.cs" Inherits="_stuInfo" %>

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
            width: 312px;
        }
        .auto-style2 {
            width: 170px;
        }
        </style>

    
    
    </head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="main.aspx">St. Andrew's Canteen</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="menu.aspx">Menu <span class="sr-only">(current)</span></a>
      </li>
     
        <li class="nav-item">
        <a class="nav-link" href="orders.aspx">Start My Order</a>
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
        <div>
            <table>
                <tr>
                    <td class="auto-style1">First name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Middle name:&nbsp;</td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Last name:</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Sap Id:&nbsp;</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">Date of birth:</td>
                    <td>
                                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Age:&nbsp;</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                    </td>
                </tr>
              
                <tr>
                    <td class="auto-style1">Email id:</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5">Xth Details</td>
                    
                </tr>
                <tr>
                    <td>School:</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Year of passing:</td>
                                        <td>&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                                        </td>

                </tr>
                <tr>
                    <td class="auto-style1">Board:</td>
                    <td>   <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Percentage:</td>
                    <td>
                                                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="5">XII Details</td>
                   
                </tr>
                 <tr>
                    <td>College:</td>
                    <td>
                                                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>

                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Year of passing:</td>
                         <td>&nbsp;<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>

                         </td>

                </tr>

                 <tr>
                    <td>Board:</td>
                    <td>
                                                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Percentage:</td>
                                         <td>
                                             
                                                                      <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                 <tr>
                    <td colspan="5">Degree Details</td>
                    
                </tr>

                 <tr>
                    <td>College:</td>
                    <td>                                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Year of passing</td>
                                         <td>                                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                 <tr>
                    <td>Board:</td>
                    <td>                                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Percentage:</td>
                                         <td>                                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                 <tr>
                    <td colspan="5">Postgraduation Details</td>
                    
                </tr>

                 <tr>
                    <td>College:</td>
                    <td>                                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Year of passing:</td>
                                         <td>                                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>
                <tr>
                    <td>Board:</td>
                    <td>                                                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Percentage:</td>
                                        <td>                                                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td colspan="5">Other Details</td>
                    
                </tr>

                  <tr>
                    <td>List technical skills:</td>
                    <td colspan="4">
                        &nbsp;</td>
                   

                </tr>

                  <tr>
                    <td>&nbsp;</td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                        </td>
                   

                </tr>

                <tr>
                    <td colspan="5">Courses</td>
                    
                </tr>

                  <tr>
                    <td>Course 1:</td>
                    <td>                                                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Course 2:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td>Course 3:</td>
                    <td>                                                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Course 4:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                 <tr>
                    <td colspan="5">Internship Details</td>
                    
                </tr>

                  <tr>
                    <td>Company 1 name:</td>
                    <td>                                                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Position:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td>Internship responsibilities:</td>
                    <td colspan="4">
                     </td>
                    

                </tr>

                <tr>
                    <td>Company 2 name:</td>
                    <td>                                                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Position:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td>Internship responsibilities:</td>
                    <td colspan="4">
                      </td>
                    

                </tr>

                <tr>
                    <td>Company 3 name:</td>
                    <td>                                                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Position:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td>Internship description:</td>
                    <td colspan="4">
                       </td>
                    
                </tr>
                 <tr>
                    <td colspan="5">Project Details</td>
                    
                </tr>

                <tr>
                    <td>Project 1:</td>
                    <td>                                                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Domain/Platform:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td>Project description:</td>
                    <td colspan="4">
                      </td>
                    
                </tr>

                <tr>
                    <td>Project 2:</td>
                    <td>                                                <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Domain/Platform:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td>Project description:</td>
                    <td colspan="4">
                       </td>
                    
                </tr>

                <tr>
                    <td>Project 3:</td>
                    <td>                                                <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Domain/Platform:&nbsp;</td>
                       <td>                                                <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
&nbsp;</td>

                </tr>

                <tr>
                    <td>Project description:</td>
                    <td colspan="4">
                      </td>
                    
                </tr>

                <tr>
                    <td>Upload Resume (pdf only):</td>
                    <td colspan="4">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    
                </tr>
                 <tr>
                    <td colspan="5">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                     </td>
                    
                </tr>

                 <tr>
                    <td colspan="5">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     </td>
                    
                </tr>
                 
            </table>

            
        </div>
    </form>
</body>
</html>
