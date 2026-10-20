<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomBooking.aspx.cs" Inherits="Hotel_Room_Booking_Management_System.RoomBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Hotel Booking | Reserve a Room</title>

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
            text-decoration: none;
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

        /* Booking banner */
        .booking-banner {
            background: linear-gradient(120deg, #172b49, #304e70);
            color: white;
            padding: 30px;
            border-radius: 15px;
            margin-bottom: 28px;
            box-shadow: 0 8px 25px rgba(20, 36, 62, 0.10);
        }

            .booking-banner h2 {
                font-size: 22px;
                font-weight: 600;
                margin-bottom: 10px;
            }

            .booking-banner p {
                color: #d8e1ed;
                font-size: 13px;
                line-height: 1.8;
                margin-bottom: 0;
            }

        .banner-icon {
            font-size: 52px;
            text-align: center;
        }

        /* Booking form */
        .booking-card {
            background: white;
            border: 1px solid #edf0f5;
            border-radius: 16px;
            padding: 32px;
            box-shadow: 0 5px 25px rgba(20, 36, 62, 0.05);
        }

        .section-heading {
            color: #172b49;
            font-size: 20px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .section-description {
            color: #8791a0;
            font-size: 12px;
            margin-bottom: 25px;
        }

        .form-label {
            color: #27364b;
            font-size: 13px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        .form-control {
            min-height: 49px;
            border: 1px solid #dce2eb;
            border-radius: 9px;
            padding: 12px 14px;
            font-size: 13px;
        }

            .form-control:focus {
                border-color: #c59d5f;
                box-shadow: 0 0 0 0.2rem rgba(197, 157, 95, 0.15);
            }

        /* Selected room */
        .selected-room-box {
            background: #f8f9fc;
            border: 1px solid #e5eaf1;
            border-left: 4px solid #c59d5f;
            border-radius: 10px;
            padding: 17px 18px;
            margin-bottom: 25px;
        }

        .selected-room-title {
            color: #172b49;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 6px;
        }

        .selected-room-value {
            color: #526176;
            font-size: 14px;
            overflow-wrap: anywhere;
        }

        /* Book button */
        .btn-book {
            width: 100%;
            min-height: 50px;
            background: #c59d5f;
            color: white;
            border: none;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

            .btn-book:hover {
                background: #ad8448;
                color: white;
                transform: translateY(-1px);
            }

        .message-label {
            display: block;
            font-size: 13px;
            overflow-wrap: anywhere;
        }

        /* Information panel */
        .info-panel {
            background: #fff;
            border: 1px solid #edf0f5;
            border-radius: 12px;
            padding: 22px;
            margin-top: 25px;
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

            .booking-card {
                padding: 22px 18px;
            }

            .page-heading {
                font-size: 23px;
            }

            .booking-banner {
                padding: 24px 20px;
            }

                .booking-banner h2 {
                    font-size: 19px;
                }

            .banner-icon {
                font-size: 38px;
                text-align: left;
                margin-top: 15px;
            }

            .navbar-brand {
                font-size: 18px;
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
                <h1 class="page-heading">Book Your Room</h1>

                <p class="page-description">
                    Enter your stay details to continue with your room reservation.
                </p>
            </div>

            <!-- Booking Banner -->
            <div class="booking-banner">
                <div class="row align-items-center">

                    <div class="col-md-10">
                        <h2>Your Comfortable Stay Starts Here</h2>

                        <p>
                            Choose your check-in and check-out dates, enter the
                            number of guests, and submit your booking request.
                        </p>
                    </div>

                    <div class="col-md-2">
                        <div class="banner-icon">&#128716;</div>
                    </div>

                </div>
            </div>

            <!-- Booking Form Card -->
            <div class="booking-card">

                <h2 class="section-heading">Reservation Details</h2>

                <p class="section-description">
                    Please provide the following information for your stay.
                </p>

                <!-- Selected Room -->
                <div class="selected-room-box">
                    <div class="selected-room-title">
                        Selected Room
                    </div>

                    <div class="selected-room-value">
                        <asp:Label ID="lblSelectedRoomId" runat="server"
                            Text="">
                        </asp:Label>
                    </div>
                </div>

                <div class="row">

                    <!-- Check-in Date -->
                    <div class="col-md-6 mb-4">
                        <asp:Label ID="lblCheckIn" runat="server"
                            AssociatedControlID="txtCheckIn"
                            CssClass="form-label"
                            Text="Check-in Date">
                        </asp:Label>

                        <asp:TextBox ID="txtCheckIn" runat="server"
                            TextMode="Date"
                            CssClass="form-control">
                        </asp:TextBox>
                    </div>

                    <!-- Check-out Date -->
                    <div class="col-md-6 mb-4">
                        <asp:Label ID="lblCheckOut" runat="server"
                            AssociatedControlID="txtCheckOut"
                            CssClass="form-label"
                            Text="Check-out Date">
                        </asp:Label>

                        <asp:TextBox ID="txtCheckOut" runat="server"
                            TextMode="Date"
                            CssClass="form-control">
                        </asp:TextBox>
                    </div>

                    <!-- Number of Guests -->
                    <div class="col-12 mb-4">
                        <asp:Label ID="lblGuest" runat="server"
                            AssociatedControlID="txtGuest"
                            CssClass="form-label"
                            Text="Number of Guests">
                        </asp:Label>

                        <asp:TextBox ID="txtGuest" runat="server"
                            placeholder="Enter number of guests"
                            TextMode="Number"
                            CssClass="form-control">
                        </asp:TextBox>
                    </div>

                </div>

                <!-- Existing Message Label -->
                <asp:Label ID="lblMessage" runat="server"
                    Text=""
                    CssClass="message-label mb-3">
                </asp:Label>

                <!-- Existing Booking Button -->
                <asp:Button ID="btnBook" runat="server"
                    Text="Confirm Booking"
                    CssClass="btn btn-book"
                    OnClick="btnBook_Click" />

            </div>

            <!-- Information Panel -->
            <div class="info-panel">
                <h3>Before You Book</h3>

                <p>
                    Please check your selected room and enter the correct
                    arrival date, departure date, and guest count. Your booking
                    will be processed by the existing booking functionality.
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
