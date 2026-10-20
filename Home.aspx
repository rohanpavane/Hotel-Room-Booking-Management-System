<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hotel_Room_Booking_Management_System.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Hotel Booking | Dashboard</title>

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
            color: #ffffff !important;
            font-size: 21px;
            font-weight: 700;
            letter-spacing: 0.3px;
        }

        .brand-icon {
            color: #c59d5f;
            margin-right: 8px;
        }

        .nav-caption {
            color: #cbd5e1;
            font-size: 12px;
        }

        /* Main content */
        .main-container {
            max-width: 1200px;
            margin: auto;
            padding: 35px 20px;
        }

        .welcome-card {
            background: linear-gradient(120deg, #172b49, #304e70);
            color: white;
            border-radius: 16px;
            padding: 35px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(20, 36, 62, 0.12);
        }

            .welcome-card h1 {
                font-size: 29px;
                font-weight: 700;
                margin-bottom: 10px;
            }

            .welcome-card p {
                color: #d8e1ed;
                font-size: 14px;
                margin-bottom: 0;
                line-height: 1.8;
            }

        .welcome-icon {
            font-size: 65px;
            text-align: center;
            opacity: 0.95;
        }

        /* View rooms button */
        .btn-view-rooms {
            background: #c59d5f;
            color: white;
            border: none;
            border-radius: 9px;
            padding: 12px 23px;
            font-size: 13px;
            font-weight: 600;
            transition: 0.3s;
        }

            .btn-view-rooms:hover {
                background: #ad8448;
                color: white;
                transform: translateY(-2px);
            }

        /* Content cards */
        .section-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            margin-top: 28px;
            box-shadow: 0 4px 20px rgba(20, 36, 62, 0.05);
            border: 1px solid #edf0f5;
        }

        .section-heading {
            color: #172b49;
            font-size: 20px;
            font-weight: 700;
            margin-bottom: 7px;
        }

        .section-subtitle {
            color: #7b8492;
            font-size: 12px;
            margin-bottom: 22px;
        }

        .table-responsive {
            border-radius: 10px;
            overflow-x: auto;
        }

        /* GridView table styling */
        .booking-grid {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 0;
            font-size: 13px;
            background: white;
        }

            .booking-grid th {
                background: #172b49;
                color: white;
                padding: 15px 14px;
                text-align: left;
                font-weight: 500;
                white-space: nowrap;
                border: none;
            }

            .booking-grid td {
                padding: 14px;
                border-bottom: 1px solid #edf0f5;
                color: #526176;
                vertical-align: middle;
            }

            .booking-grid tr:last-child td {
                border-bottom: none;
            }

            .booking-grid tr:nth-child(even) td {
                background: #f8fafd;
            }

            .booking-grid tr:hover td {
                background: #f0f4fa;
            }

        .empty-message {
            color: #7b8492;
            padding: 25px !important;
            text-align: center;
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 22px 15px;
            color: #8791a0;
            font-size: 11px;
        }

        @media (max-width: 767px) {
            .main-container {
                padding: 22px 14px;
            }

            .welcome-card {
                padding: 25px 20px;
            }

                .welcome-card h1 {
                    font-size: 23px;
                }

            .welcome-icon {
                font-size: 42px;
                text-align: left;
                margin-top: 20px;
            }

            .section-card {
                padding: 17px;
            }

            .section-heading {
                font-size: 18px;
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

        <!-- Main Dashboard -->
        <main class="main-container">

            <!-- Welcome Section -->
            <div class="welcome-card">
                <div class="row align-items-center">

                    <div class="col-md-9">
                        <h1>Welcome to Your Dashboard!</h1>

                        <p class="mb-4">
                            Find your perfect room, explore available accommodation,
                            and keep track of your hotel bookings in one place.
                        </p>

                        <asp:Button ID="btnViewRoom" runat="server"
                            Text="Explore Available Rooms  &#8594;"
                            CssClass="btn btn-view-rooms"
                            OnClick="btnViewRoom_Click" />
                    </div>

                    <div class="col-md-3">
                        <div class="welcome-icon">
                            &#127976;
                        </div>
                    </div>

                </div>
            </div>

            <!-- Booked Rooms Section -->
            <div class="section-card">

                <div class="d-flex flex-wrap justify-content-between align-items-center">
                    <div>
                        <h2 class="section-heading">My Booked Rooms
                        </h2>

                        <p class="section-subtitle">
                            View your room booking information below.
                        </p>
                    </div>

                    <span class="badge rounded-pill px-3 py-2 mb-3"
                        style="background: #f5eddf; color: #916b32; font-weight: 500;">Booking History
                    </span>
                </div>

                <div class="table-responsive">

                    <asp:GridView ID="gvBookroom" runat="server"
                        CssClass="booking-grid"
                        AutoGenerateColumns="True"
                        GridLines="None"
                        CellPadding="0"
                        EmptyDataText="No booked rooms found. Explore available rooms to make your first booking."
                        EmptyDataRowStyle-CssClass="empty-message">
                    </asp:GridView>

                </div>

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
