<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SchoolManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>School Management System</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style>


   form {
  margin-top: 100px;
}

  
    body {
        background-color:#c4bdbc;
   
    } 
</style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row no-gutter">
    

                        <!-- Demo content-->
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-10 col-xl-5 mx-auto">
                                <center><h3 class="display-4 pb-3">Sign In</h3></center>    
                                 <center>   <p class="text-muted mb-4">Login  for Admin,Teacher & Students</p></center>
                                    <div class="form-group mb-3">
                                     <center>   <label for="userRoles">Select Role : </label></center>
                                        <asp:DropDownList ID="userRoles" runat="server" class="form-control rounded-pill border-0 shadow-sm px-4" >
                                            <asp:ListItem Value="0">Select User Role </asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>Teacher</asp:ListItem>
                                            <asp:ListItem>Student</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select User Role"
                                            ForeColor="Red" ControlToValidate="userRoles" Display="Dynamic" SetFocusOnError="true" InitialValue="Select User Role" >
                                        </asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group mb-3">
                                        <input id="inputEmail" type="text" placeholder="Email address" required="" runat="server" autofocus="" class="form-control rounded-pill border-0 shadow-sm px-4" />
                                    </div>
                                    <div class="form-group mb-3 mb-2">
                                        <input id="inputPassword" type="password" placeholder="Password" required="" runat="server" class="form-control rounded-pill border-0 shadow-sm px-4 text-primary" />
                                    </div>

                                    <asp:Button ID="btnLogin" runat="server" Text="Sign in" CssClass="btn btn-primary btn-block text-uppercase mb-2 rounded-pill shadow-sm" BackColor="#8F7D7D " OnClick="btnLogin_Click" />
                                    <div class="text-center d-flex justify-content-between mt-4">
                                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End -->

                    </div>
                </div>
                <!-- End -->

            </div>
        </div>
    </form>
       
</body>
</html>
