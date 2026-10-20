
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hotel_Room_Booking_Management_System.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Hotel Booking | Login</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #101d35, #243f60);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px 15px;
        }

        .login-wrapper {
            width: 100%;
            max-width: 950px;
            background: #ffffff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.25);
        }

        .hotel-panel {
            background: linear-gradient(160deg, #14243e, #304e70);
            color: white;
            min-height: 550px;
            padding: 45px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .hotel-icon {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hotel-panel h1 {
            font-size: 32px;
            font-weight: 700;
            line-height: 1.4;
        }

        .hotel-panel p {
            color: #d7e0ec;
            font-size: 14px;
            line-height: 1.9;
        }

        .login-panel {
            padding: 50px 45px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-title {
            color: #172b49;
            font-size: 29px;
            font-weight: 700;
        }

        .login-subtitle {
            color: #7b8492;
            font-size: 14px;
        }

        .form-label {
            color: #27364b;
            font-weight: 500;
            font-size: 13px;
            margin-bottom: 8px;
        }

        .form-control {
            height: 50px;
            border: 1px solid #dce2eb;
            border-radius: 10px;
            font-size: 14px;
            padding: 12px 15px;
        }

        .form-control:focus {
            border-color: #c59d5f;
            box-shadow: 0 0 0 0.2rem rgba(197, 157, 95, 0.15);
        }

        .login-btn {
            width: 100%;
            height: 50px;
            background: #c59d5f;
            color: #ffffff;
            border: none;
            border-radius: 10px;
            font-weight: 600;
            font-size: 15px;
            transition: 0.3s;
        }

        .login-btn:hover {
            background: #ad8448;
            color: #ffffff;
            transform: translateY(-1px);
        }

        .forgot-link {
            color: #a47b40;
            text-decoration: none;
            font-size: 12px;
            font-weight: 500;
        }

        .forgot-link:hover {
            text-decoration: underline;
        }

        .register-text {
            color: #7b8492;
            font-size: 13px;
        }

        .register-link {
            color: #172b49;
            font-weight: 600;
            text-decoration: none;
        }

        .register-link:hover {
            color: #c59d5f;
        }

        .divider-line {
            border-top: 1px solid #edf0f4;
            margin: 25px 0;
        }

        .hotel-footer {
            color: #cbd5e1;
            font-size: 11px;
            margin-top: 35px;
        }

        @media (max-width: 767px) {
            .hotel-panel {
                min-height: auto;
                padding: 30px;
                text-align: center;
            }

            .hotel-panel h1 {
                font-size: 25px;
            }

            .hotel-icon {
                font-size: 36px;
                margin-bottom: 10px;
            }

            .hotel-panel p {
                margin-bottom: 0;
            }

            .login-panel {
                padding: 35px 25px;
            }

            .login-title {
                font-size: 25px;
            }

            .hotel-footer {
                margin-top: 15px;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="login-wrapper">
            <div class="row g-0">

                <!-- Left Hotel Information Panel -->
                <div class="col-md-5">
                    <div class="hotel-panel">

                        <div class="hotel-icon">&#127976;</div>

                        <h1>Welcome to<br />Luxury Stay</h1>

                        <p class="mt-3">
                            Experience comfort, elegance, and exceptional hospitality.
                            Sign in to manage your hotel room bookings with ease.
                        </p>

                        <div class="hotel-footer">
                            YOUR COMFORT, OUR PRIORITY
                        </div>

                    </div>
                </div>

                <!-- Right Login Form -->
                <div class="col-md-7">
                    <div class="login-panel">

                        <div class="mb-4">
                            <h2 class="login-title">Welcome Back!</h2>
                            <p class="login-subtitle mt-2">
                                Please enter your details to sign in.
                            </p>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="lblEmail" runat="server"
                                AssociatedControlID="txtEmail"
                                CssClass="form-label"
                                Text="Email Address">
                            </asp:Label>

                            <asp:TextBox ID="txtEmail" runat="server"
                                CssClass="form-control"
                                placeholder="Enter your email"
                                TextMode="Email">
                            </asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="lblPassword" runat="server"
                                AssociatedControlID="txtPassword"
                                CssClass="form-label"
                                Text="Password">
                            </asp:Label>

                            <asp:TextBox ID="txtPassword" runat="server"
                                CssClass="form-control"
                                placeholder="Enter your password"
                                TextMode="Password">
                            </asp:TextBox>
                        </div>

                        <div class="d-flex justify-content-end mb-4">
                            <asp:HyperLink ID="lnkForgotPassword" runat="server"
                                Text="Forgot Password?"
                                NavigateUrl="ForgotPassword.aspx"
                                CssClass="forgot-link">
                            </asp:HyperLink>
                        </div>

                        <asp:Button ID="btnLogin" runat="server"
                            Text="Sign In"
                            CssClass="btn login-btn"
                            OnClick="btnLogin_Click" />

                        <div class="divider-line"></div>

                        <div class="text-center">
                            <span class="register-text">
                                Don't have an account?
                            </span>

                            <asp:HyperLink ID="lnkRegister" runat="server"
                                Text=" Create Account"
                                NavigateUrl="Register.aspx"
                                CssClass="register-link">
                            </asp:HyperLink>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
