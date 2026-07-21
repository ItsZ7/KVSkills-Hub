<?php
    include '../config/config.php';
?>

<!DOCTYPE html>
<html lang="ms">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard Jurulatih | KVSkills Hub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <link rel="stylesheet" href="../assets/css/style.css">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg navbar-dark bg-danger shadow">

    <div class="container">

        <a class="navbar-brand fw-bold"
           href="../index.php">

            KVSkills Hub

        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse"
             id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link active"
                       href="#">
                        Dashboard
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="../maklumat/index.php">
                        Maklumat KVSkills
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="../index.php">
                        Home
                    </a>
                </li>

            </ul>

        </div>

    </div>

</nav>

<!-- ================= HEADER ================= -->

<section class="dashboard-header">

    <div class="container text-center">

        <h1>Dashboard Jurulatih</h1>

        <p>
            Selamat Datang ke Portal Jurulatih KVSkills Hub
        </p>

    </div>

</section>

<!-- ================= PROFILE ================= -->

<section class="container py-5">

<div class="card shadow border-0">

<div class="card-body">

<div class="row align-items-center">

<div class="col-lg-2 text-center">

<img src="../assets/images/profile.png" class="rounded-circle img-fluid" width="140">

</div>

<div class="col-lg-10">

<h3>Muhammad Faris</h3>

<p class="mb-1">
Jurulatih KV Kuantan
</p>

<p class="mb-1">
Bidang :
<strong>Web Technology</strong>
</p>

<p class="text-muted">
Dummy Data (Backend akan datang)
</p>

</div>

</div>

</div>

</div>

</section>

<!-- ================= MENU ================= -->

<section class="container pb-5">

<h2 class="mb-4">

Menu Jurulatih

</h2>

<div class="row g-4">

<div class="col-lg-3 col-md-6">

<a href="peserta.html"

class="dashboard-card">

<i class="fa-solid fa-users"></i>

<h4>Maklumat Peserta</h4>

</a>

</div>

<div class="col-lg-3 col-md-6">

<a href="dokumen.html"

class="dashboard-card">

<i class="fa-solid fa-file-lines"></i>

<h4>Dokumen</h4>

</a>

</div>

<div class="col-lg-3 col-md-6">

<a href="jadual.html"

class="dashboard-card">

<i class="fa-solid fa-calendar-days"></i>

<h4>Jadual</h4>

</a>

</div>

<div class="col-lg-3 col-md-6">

<a href="lokasi.html"

class="dashboard-card">

<i class="fa-solid fa-location-dot"></i>

<h4>Lokasi</h4>

</a>

</div>

</div>

</section>

<!-- ================= AKSES PANTAS ================= -->

<section class="container pb-5">

<h2 class="mb-4">

Maklumat KVSkills

</h2>

<div class="row g-4">

<div class="col-lg-3">

<a href="../maklumat/lokasi.html"

class="dashboard-card">

<i class="fa-solid fa-map-location-dot"></i>

<h4>Lokasi Pertandingan</h4>

</a>

</div>

<div class="col-lg-3">

<a href="../maklumat/keputusan.html"

class="dashboard-card">

<i class="fa-solid fa-trophy"></i>

<h4>Keputusan</h4>

</a>

</div>

<div class="col-lg-3">

<a href="../maklumat/peserta.html"

class="dashboard-card">

<i class="fa-solid fa-user-group"></i>

<h4>Senarai Peserta</h4>

</a>

</div>

<div class="col-lg-3">

<a href="../maklumat/logo.html"

class="dashboard-card">

<i class="fa-solid fa-download"></i>

<h4>Muat Turun Logo</h4>

</a>

</div>

<div class="col-lg-3">

<a href="../maklumat/soalan.html"

class="dashboard-card">

<i class="fa-solid fa-file-arrow-down"></i>

<h4>Muat Turun Soalan</h4>

</a>

</div>

<div class="col-lg-3">

<a href="../maklumat/index.html"

class="dashboard-card">

<i class="fa-solid fa-circle-info"></i>

<h4>Portal Maklumat</h4>

</a>

</div>

</div>

</section>

<!-- ================= FOOTER ================= -->

<footer class="bg-dark text-white text-center py-3">

© 2026 KVSkills Hub

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

<script src="../assets/js/script.js"></script>

</body>

</html>