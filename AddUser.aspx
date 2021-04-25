<%@ Page Title="" Language="C#" MasterPagefile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser"
<asp:Content Id="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContenPlaceHolderID="MainContent" runat="server">
    <div style="width: 60px;">
    <fieldset>
    <legend>&nbsp;{&nbsp;Enter Your User Information&nbsp;&nbsp;</legend>
       <table>
          <tr>
              <td align="right">User&nbsp;Name&nbsp;&nbsp;</td>
              <td>&nbsp;</td>
              <td align="left">
                  <asp:TextBox ID="tbUserName" runat="server" Width="200px" />
                  <asp:RequiredFieldValidator ID="rfvUserName" runat="server"
                                                               ControlToValidate="tbUserName"
                                                               CssClass="ValidationError"
                                                               ErrorMessage="&laquo; ( Required )"
                                                               ToolTip="User Name is a Required Field. "
              </td>
          </tr>
          <tr>
              <td align="right">Password&nbsp;Name&nbsp;&nbsp;</td>
              <td>&nbsp;</td>
              <td align="left">
                  <asp:TextBox ID="tbPassword" runat="server" Width="200px" TextMode="Password" />
                  <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                                                               ControlToValidate="tbPassword"
                                                               CssClass="ValidationError"
                                                               ErrorMessage="&laquo; ( Required )"
                                                               ToolTip="Password is a Required Field. "
              </td>
         </tr>
         <tr>
            <td align="right">Confirm&nbsp;Password&nbsp;:&nbsp;</td>
            <td>&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="tbConfirmPassword: runat="server" width="200px" TextMode="Password" />
                <asp:CompareValidator ID="cvPasswords"
                                      runat="server"
                                      ControlToValidate="tbConfirmPassword"
                                      CssClass="ValidationError"
                                      ControlToCompare="tbPassword"
                                      ErrorMessage="&laquo; ( No Match )"
                                      ToolTip="Both Password Fields Must Contain the SAME Value." />
            </td>
        </tr>
         <tr>
            <td align="right">Email&nbsp;Address&nbsp;:&nbsp;</td>
            <td>&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="tbEmailAddress: runat="server" width="200px" TextMode="Password" />
                <asp:CompareValidator ID="rfvEmail" runat="server"
                                                    ControlToValidate="tbEmailAddress"
                                                    CssClass="ValidationError"
                                                    ErrorMessage="&laquo; ( Required )"
                                                    ToolTip="User Email is a REQUIRED Field." />
           </td>
        </tr>
<tr>
    <td align="right">Security&nbsp;Question&nbsp;:&nbsp;</td>
    <td>&nbsp;</td>
    <td align="left">
        <asp:TextBox ID="tbSecurityQuestion: runat="server" width="300px" TextMode="Password" />
        <asp:CompareValidator ID="rfvSecurityQuestion" 
                              runat="server"
                              ControlToValidate="tbSecurityQuestion"
                              CssClass="ValidationError"
                              ErrorMessage="&laquo; ( Required )"
                              ToolTip="Security Question is a REQUIRED Field." />
       </td>
</tr>

<tr>
    <td align="right">Security&nbsp;Answer&nbsp;:&nbsp;</td>
    <td>&nbsp;</td>
    <td align="left">
        <asp:TextBox ID="tbSecurityAnswer: runat="server" width="300px" TextMode="Password" />
        <asp:CompareValidator ID="rfvSecurityAnswer" 
                              runat="server" ErrorMessage="&laquo; ( Required )"
                              CssClass="ValidationError"
                              ControlToValidate="tbSecurityAnswser"
                              ToolTip="Security Answer is a REQUIRED Field." />
       </td>
    </tr>
  </table>
<fieldset>
<span>Leading and trailing spaces willl automatically be removed.</span>
<br> /><br />
<div id="divResutlMessage" runat="server" visible="false"
    <asp:Label ID="lblCreateResultMessage" runat="server" Text=""></asp:Label>
    <br> /><br />
</div>
<asp:Button ID="btnAddUser" runat="server" Text="Create Your Account" CssClass="button"
                                                                      onmouseover:"this.className='buttonhover'"
                                                                      onmouseout:"this.className='button'"
                                                                      />


 <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3"
      BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px"
      DsiableCreatedUser="True" Font-Names="Verdana" Font-Size="0.8em"
      LoginCreatedUseer="False">
      <ContinueButtonStyle BackColor="FFFBFF" BorderColor="#CCCCCC"
          BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
          Forecolor="#284775" />
      <ContinueUserButtonStyle BackColor="FFFBFF" BorderColor="#CCCCCC"
          BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
          Forecolor="#284775" />
   <TitleTextStyle Backcolor="5D7B9D" Font-Bold="True" ForeColor="White" />
   <WizardSteps>
     <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
         <ContentTemplate>
             <table style="font-family:Verdana;font-size:100%;">
                <tr>
                   <td align="center" colspan="2"
                       style="color:white;background-color:#5D7B9D;font-weight:bold;">
                       Sign Up for your New Account</td>
                </tr>
                <tr>
                   <td align="center" colspan="2"
                       <asp:Label ID="UserNameLabel1" runat="server AssociatedControlID="UserName">User Name</asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="UserName" runat="server"></asp:Textbox>
                       <asp:RequiredFieldValidator ID=:UserNameRequired" runat="server"
                   </td>
                </tr>
                <tr>
                  <td align="right">
                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"></asp:Label>
                  </td>
                  <td>
                     <asp:TextBox ID="Password" runat="server" TextMode="Password"><asp:TextBox>
                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server"
                         ControlToValidate="Password" ErrorMessage="Password is required"

     </asp:CreateUserWizardStep>
     <asp:CompleteWizardStep ID="CompleteWizardStep1' runat="server">
     </asp:CompleteWizardStep>
   </WizardSteps>
 </asp:CreateUserWizard>
</asp:Content>
