
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Hotel_Room_Booking_Management_System.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password - Hotel Booking</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" />

    <style>
        body {
            background: #f4f6f9;
            font-family: Arial, sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            background-color: #14243e;
            padding: 15px 25px;
        }

        .navbar-brand {
            color: #c59d5f !important;
            font-size: 23px;
            font-weight: bold;
        }

        .main-container {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 35px 15px;
        }

        .password-card {
            background: #ffffff;
            width: 100%;
            max-width: 460px;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.10);
        }

        .icon-circle {
            width: 70px;
            height: 70px;
            background: #f8f0e3;
            color: #c59d5f;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 30px;
            margin: 0 auto 20px;
        }

        .card-title {
            color: #14243e;
            font-weight: bold;
        }

        .form-label {
            color: #14243e;
            font-weight: 600;
        }

        .form-control {
            padding: 12px;
            border-radius: 7px;
        }

        .form-control:focus {
            border-color: #c59d5f;
            box-shadow: 0 0 0 0.2rem rgba(197, 157, 95, 0.2);
        }

        .btn-gold {
            background-color: #c59d5f;
            color: #ffffff;
            border: none;
            padding: 12px;
            border-radius: 7px;
            font-weight: bold;
        }

        .btn-gold:hover {
            background-color: #ad854b;
            color: #ffffff;
        }

        .back-link {
            color: #14243e;
            text-decoration: none;
            font-weight: 600;
        }

        .back-link:hover {
            color: #c59d5f;
        }

        .message {
            display: block;
            margin-top: 12px;
        }

        .footer {
            background-color: #14243e;
            color: #ffffff;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <!-- Navigation Bar -->
        <nav class="navbar">
            <div class="container">
                <a class="navbar-brand" href="Login.aspx">
                    Hotel Booking
                </a>

                <a href="Login.aspx" class="btn btn-outline-light btn-sm">
                    Back to Login
                </a>
            </div>
        </nav>

        <!-- Forgot Password Form -->
        <div class="main-container">
            <div class="password-card">

                <div class="text-center">
                    <div class="icon-circle">
                        &#128273;
                    </div>

                    <h2 class="card-title mb-2">Forgot Password?</h2>

                    <p class="text-muted mb-4">
                        Enter your email and choose a new password.
                    </p>
                </div>

                <!-- Email -->
                <div class="mb-3">
                    <asp:Label ID="lblEmail" runat="server"
                        AssociatedControlID="txtEmail"
                        CssClass="form-label"
                        Text="Email Address">
                    </asp:Label>

                    <asp:TextBox ID="txtEmail" runat="server"
                        CssClass="form-control"
                        TextMode="Email"
                        placeholder="Enter your email"
                        required="required">
                    </asp:TextBox>
                </div>

                <!-- New Password -->
                <div class="mb-3">
                    <label class="form-label" for="txtPassword">
                        New Password
                    </label>

                    <asp:TextBox ID="txtPassword" runat="server"
                        CssClass="form-control"
                        TextMode="Password"
                        placeholder="Enter new password"
                        required="required">
                    </asp:TextBox>
                </div>

                <!-- Confirm Password -->
                <div class="mb-3">
                    <label class="form-label" for="txtConPassword">
                        Confirm New Password
                    </label>

                    <asp:TextBox ID="txtConPassword" runat="server"
                        CssClass="form-control"
                        TextMode="Password"
                        placeholder="Confirm your new password"
                        required="required">
                    </asp:TextBox>
                </div>

                <!-- Message -->
                <asp:Label ID="lblMessage" runat="server"
                    CssClass="message"
                    Text="">
                </asp:Label>

                <!-- Update Button -->
                <div class="d-grid mt-3">
                    <asp:Button ID="btnUpdate" runat="server"
                        Text="Update Password"
                        CssClass="btn btn-gold"
                        OnClick="btnUpdate_Click" />
                </div>

                <div class="text-center mt-4">
                    <a href="Login.aspx" class="back-link">
                        &#8592; Back to Login
                    </a>
                </div>

            </div>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <small>Hotel Booking Management System</small>
        </footer>

    </form>
</body>
</html>
