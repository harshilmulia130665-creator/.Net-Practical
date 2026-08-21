<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Online Event Registeration.aspx.cs"
    Inherits="P4.Online_Event_Registeration1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Online Event Registration</title>

    <style type="text/css">

        body {
            font-family: Arial;
            margin: 30px;
        }

        .title {
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .label {
            width: 180px;
        }

        .input {
            width: 350px;
        }

        .result-box {
            margin-top: 20px;
            padding: 15px;
            width: 550px;
            border: 1px solid black;
        }

        .result-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="title">
        ONLINE EVENT REGISTRATION
    </div>

    <table>

        <!-- Full Name -->

        <tr>

            <td class="label">
                Full Name
            </td>

            <td class="input">

                <asp:TextBox
                    ID="TextBox1"
                    runat="server">
                </asp:TextBox>

            </td>

            <td>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="TextBox1"
                    ErrorMessage="Enter Your Name"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

        </tr>


        <!-- Email -->

        <tr>

            <td class="label">
                Email
            </td>

            <td>

                <asp:TextBox
                    ID="TextBox2"
                    runat="server">
                </asp:TextBox>

            </td>

            <td>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1"
                    runat="server"
                    ControlToValidate="TextBox2"
                    ErrorMessage="Enter Your Valid Email Id"
                    ForeColor="Red"
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
                </asp:RegularExpressionValidator>

            </td>

        </tr>


        <!-- Mobile -->

        <tr>

            <td class="label">
                Mobile
            </td>

            <td>

                <asp:TextBox
                    ID="TextBox3"
                    runat="server">
                </asp:TextBox>

            </td>

            <td>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator2"
                    runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="Enter Your Valid Number"
                    ForeColor="Red"
                    ValidationExpression="^[0-9]{10}$">
                </asp:RegularExpressionValidator>

            </td>

        </tr>


        <!-- College -->

        <tr>

            <td class="label">
                College
            </td>

            <td>

                <asp:TextBox
                    ID="TextBox4"
                    runat="server">
                </asp:TextBox>

            </td>

            <td>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
                    ControlToValidate="TextBox4"
                    ErrorMessage="Enter Your College"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

        </tr>


        <!-- Department -->

        <tr>

            <td class="label">
                Department
            </td>

            <td>

                <asp:RadioButtonList
                    ID="RadioButtonList1"
                    runat="server">

                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>

                </asp:RadioButtonList>

            </td>

        </tr>


        <!-- Event -->

        <tr>

            <td class="label">
                Event
            </td>

            <td>

                <asp:DropDownList
                    ID="DropDownList1"
                    runat="server">

                    <asp:ListItem>Select Event</asp:ListItem>
                    <asp:ListItem>Technical Quiz</asp:ListItem>
                    <asp:ListItem>Hackathon</asp:ListItem>
                    <asp:ListItem>Expert talks</asp:ListItem>
                    <asp:ListItem>Cricket Tournament</asp:ListItem>

                </asp:DropDownList>

            </td>

        </tr>


        <!-- Gender -->

        <tr>

            <td class="label">
                Gender
            </td>

            <td>

                <asp:RadioButton
                    ID="Male"
                    runat="server"
                    GroupName="Gender"
                    Text="Male" />

                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:RadioButton
                    ID="Female"
                    runat="server"
                    GroupName="Gender"
                    Text="Female" />

            </td>

        </tr>


        <!-- Skills -->

        <tr>

            <td class="label">
                Skills
            </td>

            <td>

                <asp:CheckBoxList
                    ID="CheckBoxList1"
                    runat="server">

                    <asp:ListItem>C #</asp:ListItem>
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>Python</asp:ListItem>
                    <asp:ListItem>AI</asp:ListItem>

                </asp:CheckBoxList>

            </td>

        </tr>


        <!-- Address -->

        <tr>

            <td class="label">
                Address
            </td>

            <td>

                <asp:TextBox
                    ID="TextArea1"
                    runat="server"
                    TextMode="MultiLine"
                    Columns="50"
                    Rows="5">
                </asp:TextBox>

            </td>

        </tr>


        <!-- Terms -->

        <tr>

            <td class="label">
                Terms
            </td>

            <td>

                <asp:CheckBox
                    ID="chkTerms"
                    runat="server"
                    Text="I Accept Terms &amp; Conditions" />

            </td>

        </tr>


        <!-- Register Button -->

        <tr>

            <td></td>

            <td>

                <asp:Button
                    ID="Button1"
                    runat="server"
                    Text="Register"
                    OnClick="Button1_Click" />

            </td>

        </tr>

    </table>


    <!-- Registration Result -->

    <asp:Panel
        ID="pnlResult"
        runat="server"
        Visible="false"
        CssClass="result-box">

        <div class="result-title">
            Registration Details
        </div>

        <asp:Label
            ID="lblResult"
            runat="server">
        </asp:Label>

    </asp:Panel>

</form>

</body>

</html>