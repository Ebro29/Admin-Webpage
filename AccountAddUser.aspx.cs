using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace MembersRolesProfilesWF.Account
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            MembershipCreateStatus createStatus;
            string sUserName = tbUserName.Text;
            string sPassword = tbPassword.Text;
            string sEmail = tbEmail.Text;
            string sQuestion = tbSecurityQuestion.Text;
            string sAnswer = tbSecurityAnswer.Text;

            Membership.CreateUser(HttpUtitlity.HtmlEncode(sUserName.Trim()),
                 HttpUtility.HtmlEncode(sPassword.Trim()),
                 HttpUtility.HtmlEncode(sEmall.Trim()),
                 HttpUtility.HtmlEncode(sQuestion.Trim()),
                 HttpUtility.HtmlEncode(sAnswer.Trim()),
                 true,
                 out CreateStatus);

            string CreateResultMessage = "";

            switch (createStatus.ToString())
            {
                case "Success":
                    CreateResultMessage = "&raquo; The User was successfully created. &laquo;";
                    break;
                case "InvalidUserName":
                    CreateResultMessage = "The user name was not found in the database.";
                    break;
                case "InvalidPassword":
                    CreateResultMessage = "The password is not formatted correctly.";
                    break;
                case "InvalidQuestion":
                    CreateResultMessage = "The password question is not formatted correctly.";
                    break;
                case "InvalidAnswer":
                    CreateResultMessage = "The password answer is not formatted correctly";
                    break;
                case "InvalidEmail":
                    CreateResultMessage = "The e-mail address is not formatted correctly";
                    break;
                case "DuplicateUsername":
                    CreateResultMessage = "The user name already exists in the database for the application";
                    break;
                case "DuplicateEmail":
                    CreateResultMessage = "The email-address already exists in the database for the application";
                    break;
                case "UserRejected":
                    CreateResultMessage = "The user was not created, for a reason defined by the provider";
                    break;
                case "InvalidProviderUserKey":
                    CreateResultMessage = "The provider user key is of an invalid type or format";
                    break;
                case "DuplicateProviderUserKey":
                    CreateResultMessage = "The ProviderUserKey already exists in the database for the application";
                    break;
                case "ProviderError":
                    CreateResultMessage = "The provider returned an error that is not described by other ";
                    CreateResultMessage += "MembershipCreateStatus enumaration values.";
                    break;
            }

            if (createStatus != MembershipCreateStatus.Success)
            {
                lblCreateResultMessage.CssClass = "ValidationError";
                btnAddUser.Visible = true;
            }
            else
            {
                lblCreateResultMessage.CssClass = "bold";
                btnAddUser.Visible = false;
            }
            lblCreateResultMessage.Text = CreateResultMessage;
            divResultMessage.Visible = true;
        }
    }
