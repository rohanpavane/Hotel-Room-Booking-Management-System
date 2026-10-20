<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomRegistration.aspx.cs" Inherits="Hotel_Room_Booking_Management_System.RoomRegistration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Hotel Booking | Room Registration</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f6fa;
            color: #26354b;
            margin: 0;
        }

        /* Navigation */
        .navbar-custom {
            background: #14243e;
            padding: 16px 0;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
        }

        .navbar-brand {
            color: #fff !important;
            font-size: 21px;
            font-weight: 700;
        }

        .brand-icon {
            color: #c59d5f;
            margin-right: 8px;
        }

        .nav-caption {
            color: #cbd5e1;
            font-size: 12px;
        }

        /* Page layout */
        .main-container {
            max-width: 1100px;
            margin: auto;
            padding: 35px 20px;
        }

        .page-heading {
            color: #172b49;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .page-description {
            color: #7b8492;
            font-size: 13px;
            line-height: 1.8;
        }

        /* Registration card */
        .form-card {
            background: #fff;
            border: 1px solid #edf0f5;
            border-radius: 16px;
            padding: 32px;
            box-shadow: 0 5px 25px rgba(20, 36, 62, 0.05);
        }

        .card-heading {
            color: #172b49;
            font-size: 19px;
            font-weight: 600;
        }

        .card-description {
            color: #8791a0;
            font-size: 12px;
        }

        .form-label {
            color: #27364b;
            font-size: 13px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        .form-control {
            min-height: 48px;
            border: 1px solid #dce2eb;
            border-radius: 9px;
            font-size: 13px;
            padding: 12px 14px;
        }

            .form-control:focus {
                border-color: #c59d5f;
                box-shadow: 0 0 0 0.2rem rgba(197, 157, 95, 0.15);
            }

        .room-type-box {
            min-height: 48px;
            padding: 12px 15px;
            border: 1px solid #dce2eb;
            background: #f8f9fc;
            border-radius: 9px;
        }

            .room-type-box table {
                width: 100%;
            }

            .room-type-box td {
                font-size: 13px;
                color: #43516a;
                padding-right: 18px;
            }

            .room-type-box input {
                accent-color: #c59d5f;
                margin-right: 5px;
            }

        /* Buttons */
        .action-btn {
            min-height: 45px;
            border: none;
            border-radius: 9px;
            padding: 11px 23px;
            font-size: 13px;
            font-weight: 600;
            transition: 0.3s;
        }

        .btn-add {
            background: #c59d5f;
            color: #fff;
        }

            .btn-add:hover {
                background: #ad8448;
                color: #fff;
                transform: translateY(-1px);
            }

        .btn-update {
            background: #172b49;
            color: #fff;
        }

            .btn-update:hover {
                background: #304e70;
                color: #fff;
            }

        .btn-delete {
            background: #fff;
            color: #c0392b;
            border: 1px solid #e4b6b1;
        }

            .btn-delete:hover {
                background: #c0392b;
                color: #fff;
            }

        .message-label {
            display: block;
            font-size: 13px;
            overflow-wrap: anywhere;
        }

        .info-panel {
            background: #f8f9fc;
            border: 1px solid #e7ebf2;
            border-radius: 12px;
            padding: 22px;
            margin-top: 24px;
        }

            .info-panel h3 {
                color: #172b49;
                font-size: 15px;
                font-weight: 600;
            }

            .info-panel p {
                color: #7b8492;
                font-size: 12px;
                line-height: 1.9;
                margin-bottom: 0;
            }

        .footer {
            text-align: center;
            padding: 22px 15px;
            color: #8791a0;
            font-size: 11px;
        }

        @media (max-width: 767px) {
            .main-container {
                padding: 25px 14px;
            }

            .form-card {
                padding: 22px 18px;
            }

            .page-heading {
                font-size: 23px;
            }

            .navbar-brand {
                font-size: 18px;
            }

            .action-btn {
                width: 100%;
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

        <!-- Main Content -->
        <main class="main-container">

            <!-- Page Heading -->
            <div class="mb-4">
                <h1 class="page-heading">Room Registration</h1>

                <p class="page-description">
                    Add new rooms and manage existing room information
                    in your hotel booking system.
                </p>
            </div>

            <!-- Room Registration Form -->
            <div class="form-card">

                <div class="mb-4">
                    <h2 class="card-heading">Room Details</h2>
                    <p class="card-description">
                        Enter the room information in the fields below.
                    </p>
                </div>

                <div class="row">

                    <!-- Room Number -->
                    <div class="col-md-6 mb-4">
                        <asp:Label ID="lblRoomNumber" runat="server"
                            AssociatedControlID="txtRoomNumber"
                            CssClass="form-label"
                            Text="Room Number">
                        </asp:Label>

                        <asp:TextBox ID="txtRoomNumber" runat="server"
                            CssClass="form-control"
                            placeholder="Enter room number">
                        </asp:TextBox>
                    </div>

                    <!-- Room Type -->
                    <div class="col-md-6 mb-4">
                        <asp:Label ID="lblRoomType" runat="server"
                            AssociatedControlID="rblRoomType"
                            CssClass="form-label"
                            Text="Room Type">
                        </asp:Label>

                        <div class="room-type-box">
                            <asp:RadioButtonList ID="rblRoomType" runat="server"
                                RepeatDirection="Horizontal">
                                <asp:ListItem Text="AC" Value="AC"></asp:ListItem>
                                <asp:ListItem Text="Non AC" Value="Non AC"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>

                    <!-- Price Per Night -->
                    <div class="col-md-6 mb-4">
                        <asp:Label ID="lblPricePerNight" runat="server"
                            AssociatedControlID="txtPricePerNight"
                            CssClass="form-label"
                            Text="Price Per Night (₹)">
                        </asp:Label>

                        <asp:TextBox ID="txtPricePerNight" runat="server"
                            CssClass="form-control"
                            placeholder="Enter price per night">
                        </asp:TextBox>
                    </div>

                    <!-- Capacity -->
                    <div class="col-md-6 mb-4">
                        <asp:Label ID="lblCapacity" runat="server"
                            AssociatedControlID="txtCapacity"
                            CssClass="form-label"
                            Text="Room Capacity">
                        </asp:Label>

                        <asp:TextBox ID="txtCapacity" runat="server"
                            CssClass="form-control"
                            placeholder="Enter number of guests">
                        </asp:TextBox>
                    </div>

                    <!-- Status -->
                    <div class="col-12 mb-4">
                        <asp:Label ID="lblStatus" runat="server"
                            AssociatedControlID="txtStatus"
                            CssClass="form-label"
                            Text="Room Status">
                        </asp:Label>

                        <asp:TextBox ID="txtStatus" runat="server"
                            CssClass="form-control"
                            placeholder="Enter status (Available / Booked)">
                        </asp:TextBox>
                    </div>

                </div>

                <hr style="border-color: #edf0f5; margin: 8px 0 25px;" />

                <!-- Existing Message Label -->
                <asp:Label ID="lblMessege" runat="server"
                    Text=""
                    CssClass="message-label mb-3">
                </asp:Label>

                <!-- Existing Buttons and Event Handlers -->
                <div class="d-flex flex-wrap gap-3">

                    <asp:Button ID="btnAdd" runat="server"
                        Text="&#43; Add Room"
                        CssClass="btn action-btn btn-add"
                        OnClick="btnAdd_Click" />

                    <asp:Button ID="btnUpdate" runat="server"
                        Text="Update Room"
                        CssClass="btn action-btn btn-update"
                        OnClick="btnUpdate_Click" />

                    <asp:Button ID="btnDelete" runat="server"
                        Text="Delete Room"
                        CssClass="btn action-btn btn-delete"
                        OnClick="btnDelete_Click" />

                </div>

            </div>

            <!-- Information Panel -->
            <div class="info-panel">
                <h3>Room Management Guidelines</h3>
                <p>
                    Enter the correct room number, room type, nightly price,
                    capacity, and status. Use the existing Add, Update, and
                    Delete operations to manage room records.
                </p>
            </div>

        </main>

        <!-- Footer -->
        <footer class="footer">
            &copy; 2026 Luxury Stay | Hotel Room Booking Management System
        </footer>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
