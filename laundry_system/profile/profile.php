<?php
session_start(); 

$user_role = $_SESSION['user_role'];

if(!isset($_SESSION['user_role'])) {
    header('location: /laundry_system/homepage/homepage.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="profile.css">
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
</head>
<body>
    <div class="progress"></div>
    <div class="wrapper">
    <aside id="sidebar">
            <div class="d-flex">
                <button id="toggle-btn" type="button">
                    <i class="bx bx-menu-alt-left"></i>
                </button>

                <div class="sidebar-logo">
                    <a href="#">Azia Skye</a>
                </div>
            </div>

            <ul class="sidebar-nav">
                <li class="sidebar-item">
                    <a href="/laundry_system/dashboard/dashboard.php" class="sidebar-link" 
                        data-bs-toggle="tooltip"
                        data-bs-placement="right" 
                        data-bs-title="Dashboard">
                        <i class="lni lni-grid-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>

                <li class="sidebar-item">
                    <a href="/laundry_system/profile/profile.php" class="sidebar-link"
                        data-bs-toggle="tooltip"
                        data-bs-placement="right" 
                        data-bs-title="Profile">
                        <i class="lni lni-user"></i>
                        <span>Profile</span>
                    </a>
                </li>

                <?php if($user_role === 'admin') : ?>
                    <li class="sidebar-item">
                        <a href="/laundry_system/users/users.php" class="sidebar-link"
                            data-bs-toggle="tooltip"
                            data-bs-placement="right" 
                            data-bs-title="Users">
                            <i class="lni lni-users"></i>
                            <span>Users</span>
                        </a>
                    </li>

                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link has-dropdown collapsed" data-bs-toggle="collapse"
                            data-bs-target="#records" aria-expanded="false" aria-controls="records">
                            <i class="lni lni-files"></i>
                            <span>Records</span>
                        </a>

                        <ul id="records" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="/laundry_system/records/customer.php" class="sidebar-link">Customer</a>
                            </li>

                            <li class="sidebar-item">
                                <a href="/laundry_system/records/service.php" class="sidebar-link">Service</a>
                            </li>

                            <li class="sidebar-item">
                                <a href="/laundry_system/records/category.php" class="sidebar-link">Category</a>
                            </li>

                            <li class="sidebar-item">
                                <a href="/laundry_system/records/delivery.php" class="sidebar-link">Delivery</a>
                            </li>
                            
                            <li class="sidebar-item">
                                <a href="/laundry_system/records/pickup.php" class="sidebar-link">Pick-up</a>
                            </li>
                        </ul>
                    </li>
                <?php endif; ?>

                <li class="sidebar-item">
                    <a href="/laundry_system/transaction/transaction.php" class="sidebar-link"
                        data-bs-toggle="tooltip"
                        data-bs-placement="right" 
                        data-bs-title="Transactions">
                        <i class="lni lni-coin"></i>
                        <span>Transaction</span>
                    </a>
                </li>

                <li class="sidebar-item">
                    <a href="/laundry_system/sales_report/report.php" class="sidebar-link"
                        data-bs-toggle="tooltip"
                        data-bs-placement="right" 
                        data-bs-title="Sales Report">
                        <i class='bx bx-line-chart'></i>
                        <span>Sales Report</span>
                    </a>
                </li>

                <?php if($user_role === 'admin') : ?>
                    <li class="sidebar-item">
                        <a href="/laundry_system/settings/setting.php" class="sidebar-link"
                            data-bs-toggle="tooltip"
                            data-bs-placement="right" 
                            data-bs-title="Settings">
                            <i class="lni lni-cog"></i>
                            <span>Settings</span>
                        </a>
                    </li>

                    <hr style="border: 1px solid #b8c1ec; margin: 8px">

                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link has-dropdown collapsed" data-bs-toggle="collapse"
                        data-bs-target="#archived" aria-expanded="false" aria-controls="archived">
                            <i class='bx bxs-archive-in'></i>
                            <span>Archived</span>
                        </a>

                        <ul id="archived" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="/laundry_system/archived/archive_users.php" class="sidebar-link">Archived Users</a>
                            </li>

                            <li class="sidebar-item">
                                <a href="/laundry_system/archived/archive_customer.php" class="sidebar-link">Archived Customer</a>
                            </li>

                            <li class="sidebar-item">
                                <a href="/laundry_system/archived/archive_service.php" class="sidebar-link">Archived Service</a>
                            </li>

                            <li class="sidebar-item">
                                <a href="/laundry_system/archived/archive_category.php" class="sidebar-link">Archived Category</a>
                            </li>
                        </ul>
                    </li>
                <?php endif; ?>
            </ul>

            <div class="sidebar-footer">
            <a href="javascript:void(0)" class="sidebar-link" id="btn_logout"
                    data-bs-toggle="tooltip"
                    data-bs-placement="right" 
                    data-bs-title="Logout">
                    <i class="lni lni-exit"></i>
                    <span>Logout</span>
                </a>
            </div>
        </aside>

            <!---------MAIN CONTENT------------->
            <div class="main-content">
                <nav>
                    <div class="d-flex justify-content-between align-items-center">
                        <h1>Profile</h1>
                    </div>
                </nav>

                <div class="user_container" id="user_container">
                    <form action="" method="post" class="user_form" id="user_form">
                        <div class="row">
                            <h4 class="text-center">Personal Details</h4>
                            <div class="col">
                                <label for="form-label">First Name</label>
                                <input type="text" id="fname" name="fname" class="form-control" readonly>
                            </div>
                            <div class="col">
                                <label for="form-label">Last Name</label>
                                <input type="text" name="lname" id="lname" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="form-label">Username</label>
                                <input type="text" id="username" name="username" class="form-control" readonly>
                            </div>
                        </div>

                        <div class="row">
                            <h4 class="text-center">Password</h4>
                            <div class="col">
                                <label for="form-label">Password</label>
                                <input type="password" id="password" name="password" class="form-control" readonly>
                            </div>
                        </div>

                        <div class="text-center">
                            <button type="button" class="btn btn-success" id="btn_edit">
                                <i class='bx bxs-edit'></i>
                                Edit Profile
                            </button>
                        </div>
                    </form>
                </div>

                <!----------------------EDIT USER INFO------------------------------->
                <div class="edit_user" id="edit_user">
                    <form action="" method="post" class="edit_user_form" id="edit_user_form">
                        <div class="header">
                            <h3>Edit Profile</h3>
                            <p>Update your personal information.</p>
                        </div>
                        <hr>
                        <div class="row">
                            <h4 class="text-center">Personal Details</h4>
                            <div class="col">
                                <label for="first_name" class="form-label">First Name</label>
                                <input type="text" id="edit_fname" name="edit_fname" class="form-control">
                            </div>
                            <div class="col">
                                <label for="last_name" class="form-label">Last Name</label>
                                <input type="text" id="edit_lname" name="edit_fname" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" id="edit_username" name="edit_username" class="form-control">
                            </div>
                        </div>

                        <div class="row">
                            <h4 class="text-center">Password</h4>
                            <div class="col">
                                <label for="current_pass" class="form-label">Current Password</label>
                                <div class="password-wrapper">
                                    <input type="password" id="current_pass" name="current_pass" class="form-control">
                                    <i class='bx bx-show toggle-password' data-target="#current_pass"></i>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="new_pass" class="form-label">New Password</label>
                                <div class="password-wrapper">
                                    <input type="password" id="new_pass" name="new_pass" class="form-control" minlength="8">
                                    <i class='bx bx-show toggle-password' data-target="#new_pass"></i>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="confirm_pass" class="form-label">Confirm Password</label>
                                <div class="password-wrapper">
                                    <input type="password" id="confirm_pass" name="confirm_pass" class="form-control" minlength="8">
                                    <i class='bx bx-show toggle-password' data-target="#confirm_pass"></i>
                                </div>
                            </div>
                        </div>
                        
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="button" class="btn btn-outline-secondary" id="btnBack">Back</button>
                            <button type="button" class="btn btn-primary" id="btnSaveChanges">Save Changes</button>
                        </div>
                    </form>
                </div>
            
            <div id="logoutModal" class="modal" style="display:none;">
                <div class="modal-cont">
                    <span class="close">&times;</span>
                    <h2 id="logoutText">Do you want to logout?</h2>
                    <div class="modal-buttons">
                         <button class="btn btn-no">No</button>
                        <a href="/laundry_system/homepage/logout.php" class="btn btn-yes">Yes</a>
                       
                    </div>
                </div>
            </div>

            </div> <!--end of main content-->

    </div> <!--end of wrapper-->

    <!---------------JAVASCRIPT------------------>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script type="text/javascript" src="profile.js"></script>
</body>
</html>