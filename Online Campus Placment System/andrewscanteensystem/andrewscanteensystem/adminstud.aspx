<%@ Page Language="C#" AutoEventWireup="true" Codefile="adminstud.aspx.cs" EnableEventValidation="false" Inherits="andrewscanteensystem.adminstud" %>

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
            font-size: xx-large;
            text-align: center;
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
       
        <div class="text-left">
       
        <table class="table table-borderless table-hover">
                 <thead>
    <tr>
      <th scope="col" colspan="4" class="auto-style1">Student Details</th>
    
    </tr></thead>
                     

            
            </table>
        

        
      
&nbsp;
&nbsp;
&nbsp;
                 
                 
        <br />

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button3_Click" CssClass="btn-block btn-dark" Text="Download Excel List of all Students" />


      
       

        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" HorizontalAlign="Center" CellSpacing="2" ForeColor="Black">
             <Columns>
                 <asp:TemplateField HeaderText="Sap Id">
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("sapId") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="First name">
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Last name">
                     <ItemTemplate>
                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Email Id">
                     <ItemTemplate>
                         <asp:Label ID="Label12" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:HyperLinkField DataNavigateUrlFields="resumefile" HeaderText="Resume (PDF)" Text="View and Download">
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:HyperLinkField>
                  <asp:TemplateField HeaderText="Complete Profile">
                    
                     <ItemTemplate>
                         &nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button2" runat="server" Text="view" CommandArgument='<%# Eval("sapId")%>'  CommandName="Select" CssClass="btn btn-dark" OnClick="Button2_Click1"  />
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
             </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="White" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
         </asp:GridView>
       

      

       

         <br />
         <asp:Label ID="Label1" runat="server"></asp:Label>
       

      

       
        &nbsp;&nbsp;&nbsp;&nbsp;
                

      

       

        <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" DeleteCommand="DELETE FROM [stuData] WHERE [sapId] = @sapId" InsertCommand="INSERT INTO [stuData] ([sapId], [fname], [lname], [tper], [twper], [degreeper], [postper], [age], [techskills], [email], [resumefile]) VALUES (@sapId, @fname, @lname, @tper, @twper, @degreeper, @postper, @age, @techskills, @email, @resumefile)" SelectCommand="SELECT [sapId], [fname], [lname], [tper], [twper], [degreeper], [postper], [age], [techskills], [email], [resumefile] FROM [stuData]" UpdateCommand="UPDATE [stuData] SET [fname] = @fname, [lname] = @lname, [tper] = @tper, [twper] = @twper, [degreeper] = @degreeper, [postper] = @postper, [age] = @age, [techskills] = @techskills, [email] = @email, [resumefile] = @resumefile WHERE [sapId] = @sapId">
             <DeleteParameters>
                 <asp:Parameter Name="sapId" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="sapId" Type="Int32" />
                 <asp:Parameter Name="fname" Type="String" />
                 <asp:Parameter Name="lname" Type="String" />
                 <asp:Parameter Name="tper" Type="Int32" />
                 <asp:Parameter Name="twper" Type="Int32" />
                 <asp:Parameter Name="degreeper" Type="Int32" />
                 <asp:Parameter Name="postper" Type="Int32" />
                 <asp:Parameter Name="age" Type="Int32" />
                 <asp:Parameter Name="techskills" Type="String" />
                 <asp:Parameter Name="email" Type="String" />
                 <asp:Parameter Name="resumefile" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="fname" Type="String" />
                 <asp:Parameter Name="lname" Type="String" />
                 <asp:Parameter Name="tper" Type="Int32" />
                 <asp:Parameter Name="twper" Type="Int32" />
                 <asp:Parameter Name="degreeper" Type="Int32" />
                 <asp:Parameter Name="postper" Type="Int32" />
                 <asp:Parameter Name="age" Type="Int32" />
                 <asp:Parameter Name="techskills" Type="String" />
                 <asp:Parameter Name="email" Type="String" />
                 <asp:Parameter Name="resumefile" Type="String" />
                 <asp:Parameter Name="sapId" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
       

 
       

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
       

      

       

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
       

      

       

         <br />
       

      

       

        </div>
       

      

       

    </form>

</body>
</html>
