<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="carloan.aspx.cs" Inherits="Automobile.carloan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            width: 332px;
        }
        .style10
        {
            width: 332px;
            height: 26px;
        }
        .style11
        {
            height: 49px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="left" width="100%">
        
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="20pt" 
                    ForeColor="Green"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-weight: 700" class="style9">
                Add a new car here</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Car Loan ID</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                Car Name</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Customer Name</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Address</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                City</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Email</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style10">
                Principal Amount</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Required" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                EMI years</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Required" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Rate of Interest</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Required" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
       
       </tr>
       <tr>
             <td>
             </td> 
       </tr>
       <tr>
             <td>
             </td> 
       </tr>
       <tr>
             <td>
                 <br />
                 <br />
             </td> 
       </tr>
       <tr>
             <td style="font-size: xx-large; font-weight: 700">
                 Generate Report</td> 
       </tr>
       <tr>
             <td>
                 <br />
             </td> 
       </tr>
       <tr>
             <td>
                 Enter Car loan Id </td> 
       </tr>
       <tr>
             <td>
                 <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
             </td> 
       </tr>
       <tr>
             <td>
                 &nbsp;</td> 
       </tr>
       <tr>
             <td>
                 <asp:Button ID="Button2" runat="server" Text="Submit" 
                     onclick="Button2_Click1" CausesValidation="False" 
                      AutoPostback="false" />
             </td> 
       </tr>
       <tr>
             <td>
             </td> 
       </tr>
       <tr>
             <td>
                 <br />
                 <br />
                 <br />
             </td> 
       </tr>
       <tr>
             <td style="font-size: xx-large; font-weight: 700">
                 <asp:Label ID="Label10" runat="server"></asp:Label>
             </td> 
       </tr>
       <tr>
             <td>
             </td> 
       </tr>
       <tr>
             <td>
                 <asp:GridView ID="GridView1" runat="server">
                 </asp:GridView>
             </td> 
       </tr>
       <tr>
             <td>
                 
             </td> 
       </tr>
       <tr>
             <td>
                 <br />
                 <br />
             </td> 
       </tr>
       <tr>
             <td class="style11" style="font-size: xx-large; font-weight: 700">
                 
                 <asp:Label ID="Label11" runat="server"></asp:Label>
                 
             </td> 
       </tr>
       <tr>
             <td>
             </td> 
       </tr>
       <tr>
             <td>
                 
             </td> 
       </tr>
       <tr>
             <td>
             </td> 
       </tr>
        </table>
    
   
</asp:Content>
