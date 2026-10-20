<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Hotel_Room_Booking_Management_System.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Profile - Hotel Booking</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" />

    <style>
        body {
            background-color: #f4f6f9;
            font-family: Arial, sans-serif;
            margin: 0;
        }

        .navbar {
            background-color: #14243e;
            padding: 15px;
        }

        .navbar-brand {
            color: #c59d5f !important;
            font-size: 23px;
            font-weight: bold;
        }

        .navbar .nav-link {
            color: white !important;
            margin-left: 12px;
        }

            .navbar .nav-link:hover {
                color: #c59d5f !important;
            }

        .main-container {
            max-width: 850px;
            margin: 40px auto;
            padding: 0 15px;
        }

        .profile-card {
            background-color: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
        }

        .profile-header {
            background-color: #14243e;
            color: white;
            text-align: center;
            padding: 30px 20px;
        }

        .profile-icon {
            width: 75px;
            height: 75px;
            border-radius: 50%;
            background-color: #c59d5f;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
            margin: 0 auto 15px;
        }

        .profile-body {
            padding: 30px;
        }

        .form-label {
            font-weight: 600;
            color: #14243e;
        }

        .form-control {
            padding: 11px 13px;
            border: 1px solid #ced4da;
            border-radius: 7px;
        }

            .form-control:focus {
                border-color: #c59d5f;
                box-shadow: 0 0 0 0.2rem rgba(197, 157, 95, 0.2);
            }

        .btn-gold {
            background-color: #c59d5f;
            color: white;
            border: none;
            padding: 11px 30px;
            border-radius: 7px;
            font-weight: bold;
        }

            .btn-gold:hover {
                background-color: #ad854b;
                color: white;
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
            margin-top: 15px;
        }

        @media (max-width: 576px) {
            .profile-body {
                padding: 20px;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <!-- Navigation Bar -->
        <nav class="navbar navbar-custom">
            <div class="container">
                <a class="navbar-brand" href="Home.aspx">
                    <span class="brand-icon">&#127976;</span>
                    Luxury Stay
                </a>

                <div class="text-end">
                    <nav class="navbar navbar-expand-lg navbar-dark"
                        style="background-color: #14243e; padding: 15px;">

                        <div class="container-fluid">



                            <button class="navbar-toggler" type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#hotelNavbar">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="hotelNavbar">

                                <ul class="navbar-nav ms-auto">

                                    <li class="nav-item">
                                        <a class="nav-link" href="Home.aspx">Home</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="ViewRooms.aspx">View Rooms
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="Profile.aspx">Profile
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="Login.aspx">Logout
                                        </a>
                                    </li>

                                </ul>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </nav>

        <!-- Main Profile Section -->
        <div class="main-container">

            <div class="profile-card">

                <!-- Profile Header -->
                <div class="profile-header">

                    <div class="profile-icon">
                        &#128100;
                    </div>

                    <h2 class="mb-2">My Profile</h2>

                    <p class="mb-0">
                        View and update your personal information
                    </p>

                </div>

                <!-- Profile Form -->
                <div class="profile-body">

                    <div class="row g-3">

                        <!-- Full Name -->
                        <div class="col-md-6">
                            <label class="form-label" for="txtFullName">
                                Full Name
                            </label>

                            <asp:TextBox ID="txtFullName" runat="server"
                                CssClass="form-control"
                                placeholder="Enter your full name">
                            </asp:TextBox>
                        </div>

                        <!-- Email -->
                        <div class="col-md-6">
                            <label class="form-label" for="txtEmail">
                                Email Address
                            </label>

                            <asp:TextBox ID="txtEmail" runat="server"
                                CssClass="form-control"
                                TextMode="Email"
                                placeholder="Enter your email">
                            </asp:TextBox>
                        </div>

                        <!-- Phone Number -->
                        <div class="col-md-6">
                            <label class="form-label" for="txtPhoneNumber">
                                Phone Number
                            </label>

                            <asp:TextBox ID="txtPhoneNumber" runat="server"
                                CssClass="form-control"
                                TextMode="Phone"
                                placeholder="Enter your phone number">
                            </asp:TextBox>
                        </div>

                        <!-- Gender -->
                        <div class="col-md-6">
                            <label class="form-label" for="txtGender">
                                Gender
                            </label>

                            <asp:TextBox ID="txtGender" runat="server"
                                CssClass="form-control"
                                placeholder="Enter your gender">
                            </asp:TextBox>
                        </div>

                        <!-- Password -->
                        <div class="col-md-6">
                            <label class="form-label" for="txtPassword">
                                Password
                            </label>

                            <asp:TextBox ID="txtPassword" runat="server"
                                CssClass="form-control"
                                TextMode="Password"
                                placeholder="Enter your password">
                            </asp:TextBox>
                        </div>

                        <!-- Address -->
                        <div class="col-md-6">
                            <label class="form-label" for="txtAddress">
                                Address
                            </label>

                            <asp:TextBox ID="txtAddress" runat="server"
                                CssClass="form-control"
                                TextMode="MultiLine"
                                Rows="2"
                                placeholder="Enter your address">
                            </asp:TextBox>
                        </div>

                    </div>

                    <!-- Message -->
                    <asp:Label ID="lblMessage" runat="server"
                        CssClass="message"
                        Text="">
                    </asp:Label>

                    <!-- Buttons -->
                    <div class="d-flex flex-wrap gap-3 mt-4">

                        <asp:Button ID="btnSave" runat="server"
                            Text="Save Changes"
                            CssClass="btn btn-gold"
                            OnClick="btnSave_Click" />

                        <a href="Home.aspx"
                            class="btn btn-outline-secondary px-4">Back to Home
                        </a>

                    </div>

                </div>
            </div>

        </div>

        <!-- Bootstrap 5 JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </form>
</body>
</html>
