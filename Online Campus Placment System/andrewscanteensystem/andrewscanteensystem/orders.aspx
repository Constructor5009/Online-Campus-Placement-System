<%@ Page Language="C#" AutoEventWireup="true" Codefile="orders.aspx.cs" Inherits="andrewscanteensystem.orders" %>

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
            text-align: center;
        }
        .auto-style2 {
            width: 712px;
        }
        .auto-style3 {
            text-align: right;
            width: 712px;
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
        <a class="nav-link" href="orders.aspx">View applicants<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="jobPost.aspx">Post Job</a>
      </li>
        
        <li class="nav-item dropdown">

        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Rounds
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="round1.aspx">Round 1</a>
                      <a class="dropdown-item" href="round22.aspx">Round 2</a>
          <a class="dropdown-item" href="round33.aspx">Round 3</a>
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
       
        <table class="table table-borderless table-hover">
                 <thead>
    <tr>
      <th scope="col" colspan="4" class="auto-style1">Select Candidates</th>
    
    </tr></thead>
                     <tr><td class="auto-style2"></td></tr>
                     
                     <thead><tr><th scope="col" class="auto-style3">
                         Enter the job id to shortlist the candidates:
                         </th>
                         <td class="text-left">         <asp:TextBox ID="TextBox1" runat="server" CssClass="offset-sm-0"></asp:TextBox>
</td>
                     </tr></thead>

            
            </table>
        

        
      
&nbsp;
&nbsp;
&nbsp;
                 
                 
        <br />

       

      
       

        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" HorizontalAlign="Justify" OnRowCommand="GridView1_RowCommand" OnRowUpdating="GridView2_RowUpdating" CellSpacing="2" ForeColor="Black">
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
                 <asp:TemplateField HeaderText="10th Percentage">
                     <ItemTemplate>
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("tper") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="12th Percentage">
                     <ItemTemplate>
                         <asp:Label ID="Label7" runat="server" Text='<%# Eval("twper") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Degree Percentage">
                     <ItemTemplate>
                         <asp:Label ID="Label8" runat="server" Text='<%# Eval("degreeper") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="PostGrad Percentage">
                     <ItemTemplate>
                         <asp:Label ID="Label9" runat="server" Text='<%# Eval("postper") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Age">
                     <ItemTemplate>
                         <asp:Label ID="Label10" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Technical Skills">
                     <ItemTemplate>
                         <asp:Label ID="Label11" runat="server" Text='<%# Eval("techskills") %>'></asp:Label>
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
                 <asp:TemplateField HeaderText="Operations">
                     <EditItemTemplate>
                         <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Update">LinkButton</asp:LinkButton>
                     </EditItemTemplate>
                     <ItemTemplate>
                         &nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button1" runat="server" Text="Select Candidate" CommandName="Select" CommandArgument="<%# Container.DataItemIndex %>" CssClass="btn btn-dark"  />
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
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
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-dark" Text="Show Selected Students" />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="sapId">
            <Columns>
                <asp:BoundField DataField="sapId" HeaderText="Sap Id" ReadOnly="True" SortExpression="sapId" />
                <asp:BoundField DataField="jobid" HeaderText="Job Id" SortExpression="jobid" />
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            </Columns>
        </asp:GridView>
       

      

       

               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT [sapId], [jobid], [fname], [lname] FROM [round1] WHERE ([jobid] = @jobid)">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="TextBox1" Name="jobid" PropertyName="Text" Type="Int32" />
                   </SelectParameters>
        </asp:SqlDataSource>
       

      

       

               <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
       

      

       

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CssClass="btn btn-dark" Text="Download Excel List of Selected Students" />
       

      

       

         <br />
       

      

       

    </form>

</body>
</html>
