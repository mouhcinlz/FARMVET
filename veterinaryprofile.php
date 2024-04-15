<?php
session_start();
include("classes/connect.php");
include("classes/log-in.php");

// Check if the user is logged in
if (isset($_SESSION['farmer_user_id']) && is_numeric($_SESSION['farmer_user_id'])) {

    $id = $_SESSION['farmer_user_id'];
    $login = new login();
    $result = $login->check_login($id);

    if (is_array($result) && array_key_exists('error', $result)) {
        // Handle the error case
        echo "Error: " . $result['error'];
    } elseif ($result) {
        $type = $result['type'];

        // Redirect based on user type
        if ($type === 'farmer') {
            header("Location: FarmerProfile.php");
            die;
        } elseif ($type === 'veterinary') {
            
        } else {
            // Handle other user types or show an error
            echo "Unknown user type!";
        }
    } else {
        header("Location: log-in.php");
        die;
    }
} else {
    header("Location: log-in.php");
    die;
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/FarmerP.css" />

    <link rel="stylesheet" href="css/testcss">
    <link rel="stylesheet" href="css/framecss">

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;500&#038;display=swap" rel="stylesheet" />
</head>
<body>
    <div class="page ">
        <div class="sidebar">
        <h3 class="title">FarmVet</h3>
        <ul>
            <li>
            <a class="active" href="index.html">
                <i class="fa-solid fa-house fa-fw"></i>
                <span>Home</span>
            </a>
            </li>
            <li>
            <a class="" href="profile.html">
                <i class="fa-regular fa-user fa-fw"></i>
                <span>Profile</span>
            </a>
            </li>
            <li>
            <a class="" href="projects.html">
                <i class="fa-solid fa-user-doctor fa-fw"></i>
                <span>veterinarians</span>
            </a>
            </li>
            <li>
            <a class="" href="messages.html">
                <i class="fa-solid fa-comments fa-fw"></i>
                <span>Messages</span>
            </a>
            </li>
            <li>
            <a class="" href="contact.html">
                <i class="fa-solid fa-envelope fa-fw"></i>
                <span>Contact Us</span>
            </a>
            </li>
        </ul>
        </div>
        <div class="content">
        <!-- Start Head -->
        <div class="head">
            <div class="search ">
            <input class="p-10" type="search" placeholder="Type A Keyword" />
            </div>
            <div class="icons">
            <span class="notification">
                <i class="fa-regular fa-bell fa-lg"></i>
            </span>
            <img decoding="async" src="imgs/skills-02.jpg" alt="" />
            </div>
        </div>
        <!-- End Head -->
        <h1 class="">Home</h1>
        
        <!-- Start Welcome Widget -->
        <div class="post-content">
            <div class="intro">
            <div>
                <h2 >Welcome</h2>
                <p >the profile name</p>
            </div>
            <img decoding="async" class="hide-mobile" src="imgs/welcome.png" alt="" />
            </div>
            <img decoding="async" src="imgs/skills-01.jpg" alt="" class="avatar" />
            <form action="post">
            <textarea class=" text-post d-block mb-20 w-full p-10 b-none bg-eee rad-6" placeholder="Your Thought"></textarea>
            <label class="custum-file-upload" for="file">
                <div class="icon">
                <svg xmlns="http://www.w3.org/2000/svg" fill="" viewBox="0 0 24 24"><g stroke-width="0" id="SVGRepo_bgCarrier"></g><g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g><g id="SVGRepo_iconCarrier"> <path fill="" d="M10 1C9.73478 1 9.48043 1.10536 9.29289 1.29289L3.29289 7.29289C3.10536 7.48043 3 7.73478 3 8V20C3 21.6569 4.34315 23 6 23H7C7.55228 23 8 22.5523 8 22C8 21.4477 7.55228 21 7 21H6C5.44772 21 5 20.5523 5 20V9H10C10.5523 9 11 8.55228 11 8V3H18C18.5523 3 19 3.44772 19 4V9C19 9.55228 19.4477 10 20 10C20.5523 10 21 9.55228 21 9V4C21 2.34315 19.6569 1 18 1H10ZM9 7H6.41421L9 4.41421V7ZM14 15.5C14 14.1193 15.1193 13 16.5 13C17.8807 13 19 14.1193 19 15.5V16V17H20C21.1046 17 22 17.8954 22 19C22 20.1046 21.1046 21 20 21H13C11.8954 21 11 20.1046 11 19C11 17.8954 11.8954 17 13 17H14V16V15.5ZM16.5 11C14.142 11 12.2076 12.8136 12.0156 15.122C10.2825 15.5606 9 17.1305 9 19C9 21.2091 10.7909 23 13 23H20C22.2091 23 24 21.2091 24 19C24 17.1305 22.7175 15.5606 20.9844 15.122C20.7924 12.8136 18.858 11 16.5 11Z" clip-rule="evenodd" fill-rule="evenodd"></path> </g></svg>
                </div>
                <div class="text">
                    <span>Click to upload image</span>
                    </div>
                    <input type="file" id="file">
                </label>
                
            </form>
            <button>post</button>
        </div>
        <!-- End Welcome Widget -->


        <!-- Start Projects Table -->
        <div class="projects p-20 bg-white rad-10 m-20">
            <h2 class="mt-0 mb-20">the name</h2>
            <div class="responsive-table">
            
            </div>
        </div>
        <!-- End Projects Table -->
        
        </div>
    </div>
</body>
</html>