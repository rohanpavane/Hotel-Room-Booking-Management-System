
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Hotel_Room_Booking_Management_System.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Hotel Booking | Registration</title>

    <!-- Bootstrap 5 -->
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
            padding: 30px 15px;
        }

        .register-wrapper {
            width: 100%;
            max-width: 1000px;
            background: #fff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.25);
        }

        .hotel-panel {
            background: linear-gradient(160deg, #14243e, #304e70);
            color: white;
            min-height: 680px;
            padding: 40px;
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

        .feature-item {
            color: #e1e8f0;
            font-size: 13px;
            margin-top: 15px;
        }

        .register-panel {
            padding: 40px 45px;
        }

        .register-title {
            color: #172b49;
            font-size: 28px;
            font-weight: 700;
        }

        .register-subtitle {
            color: #7b8492;
            font-size: 13px;
        }

        .form-label {
            color: #27364b;
            font-weight: 500;
            font-size: 12px;
            margin-bottom: 7px;
        }

        .form-control {
            min-height: 46px;
            border: 1px solid #dce2eb;
            border-radius: 9px;
            font-size: 13px;
            padding: 11px 13px;
        }

        .form-control:focus {
            border-color: #c59d5f;
            box-shadow: 0 0 0 0.2rem rgba(197, 157, 95, 0.15);
        }

        .gender-box {
            background: #f8f9fc;
            border: 1px solid #e2e7ef;
            border-radius: 9px;
            padding: 11px 14px;
        }

        .gender-box table {
            width: 100%;
        }

        .gender-box td {
            padding-right: 12px;
            color: #43516a;
            font-size: 12px;
        }

        .gender-box input {
            margin-right: 5px;
            accent-color: #c59d5f;
        }

        .register-btn {
            width: 100%;
            min-height: 48px;
            background: #c59d5f;
            color: white;
            border: none;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

        .register-btn:hover {
            background: #ad8448;
            color: white;
            transform: translateY(-1px);
        }

        .message-label {
            display: block;
            margin-top: 12px;
            font-size: 13px;
            overflow-wrap: anywhere;
        }

        .login-text {
            color: #7b8492;
            font-size: 12px;
        }

        .login-link {
            color: #a47b40;
            font-weight: 600;
            text-decoration: none;
        }

        .login-link:hover {
            text-decoration: underline;
        }

        .hotel-footer {
            color: #cbd5e1;
            font-size: 11px;
            margin-top: 35px;
        }

        @media (max-width: 767px) {
            .hotel-panel {
                min-height: auto;
                padding: 28px;
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

            .feature-item,
            .hotel-footer {
                margin-top: 15px;
            }

            .register-panel {
                padding: 30px 22px;
            }

            .register-title {
                font-size: 24px;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="register-wrapper">
            <div class="row g-0">

                <!-- Left Hotel Information Panel -->
                <div class="col-md-5">
                    <div class="hotel-panel">

                        <div class="hotel-icon">&#127976;</div>

                        <h1>Create Your<br />Hotel Account</h1>

                        <p class="mt-3">
                            Join us for a comfortable and convenient hotel booking
                            experience. Register today and manage your stay with ease.
                        </p>

                        <div class="feature-item">
                            &#10003; &nbsp; Easy room booking
                        </div>

                        <div class="feature-item">
                            &#10003; &nbsp; Manage your reservations
                        </div>

                        <div class="feature-item">
                            &#10003; &nbsp; A comfortable stay experience
                        </div>

                        <div class="hotel-footer">
                            YOUR COMFORT, OUR PRIORITY
                        </div>

                    </div>
                </div>

                <!-- Right Registration Form -->
                <div class="col-md-7">
                    <div class="register-panel">

                        <div class="mb-4">
                            <h2 class="register-title">Create Account</h2>
                            <p class="register-subtitle mt-2">
                                Please fill in your details to get started.
                            </p>
                        </div>

                        <!-- Full Name -->
                        <div class="mb-3">
                            <asp:Label ID="lblFullName" runat="server"
                                AssociatedControlID="txtFullName"
                                CssClass="form-label"
                                Text="Full Name">
                            </asp:Label>

                            <asp:TextBox ID="txtFullName" runat="server"
                                CssClass="form-control"
                                placeholder="Enter your full name">
                            </asp:TextBox>
                        </div>

                        <!-- Email and Phone -->
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lblEmail" runat="server"
                                    AssociatedControlID="txtEmail"
                                    CssClass="form-label"
                                    Text="Email Address">
                                </asp:Label>

                                <asp:TextBox ID="txtEmail" runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter email"
                                    TextMode="Email">
                                </asp:TextBox>
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lblPhoneNumber" runat="server"
                                    AssociatedControlID="txtPhoneNumber"
                                    CssClass="form-label"
                                    Text="Mobile Number">
                                </asp:Label>

                                <asp:TextBox ID="txtPhoneNumber" runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter mobile number"
                                    TextMode="Phone">
                                </asp:TextBox>
                            </div>
                        </div>

                        <!-- Password -->
                        <div class="mb-3">
                            <asp:Label ID="lblPassword" runat="server"
                                AssociatedControlID="txtPassword"
                                CssClass="form-label"
                                Text="Password">
                            </asp:Label>

                            <asp:TextBox ID="txtPassword" runat="server"
                                CssClass="form-control"
                                placeholder="Create a password"
                                TextMode="Password">
                            </asp:TextBox>
                        </div>

                        <!-- Gender -->
                        <div class="mb-3">
                            <asp:Label ID="lblGender" runat="server"
                                AssociatedControlID="rblGender"
                                CssClass="form-label"
                                Text="Gender">
                            </asp:Label>

                            <div class="gender-box">
                                <asp:RadioButtonList ID="rblGender" runat="server"
                                    RepeatDirection="Horizontal"
                                    RepeatLayout="Table">
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <!-- Address -->
                        <div class="mb-4">
                            <asp:Label ID="lblAddress" runat="server"
                                AssociatedControlID="txtAddress"
                                CssClass="form-label"
                                Text="Address">
                            </asp:Label>

                            <asp:TextBox ID="txtAddress" runat="server"
                                CssClass="form-control"
                                placeholder="Enter your full address"
                                TextMode="MultiLine"
                                Rows="2">
                            </asp:TextBox>
                        </div>

                        <!-- Register Button -->
                        <asp:Button ID="btnRegister" runat="server"
                            Text="Create Account"
                            CssClass="btn register-btn"
                            OnClick="btnRegister_Click" />

                        <!-- Existing Message Label -->
                        <asp:Label ID="lblMessage" runat="server"
                            CssClass="message-label"
                            Text="">
                        </asp:Label>

                        <div class="text-center mt-4">
                            <span class="login-text">
                                Already have an account?
                            </span>

                            <a href="Login.aspx" class="login-link">
                                Sign In
                            </a>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
