<?php
    include '../config/config.php';
?>

<!DOCTYPE html>
<html lang="ms">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Lokasi Pertandingan | KVSkills Hub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <link rel="stylesheet" href="../assets/css/style.css">

</head>

<body>

<!-- Navbar -->

    <!-- SIDEBAR TOPBAR (mobile) -->
    <div class="sidebar-topbar">
        <a href="../index.php" class="sidebar-topbar-brand">KVSkills Hub</a>
        <button class="sidebar-toggle" type="button" aria-label="Buka menu">
            <i class="fa-solid fa-bars"></i>
        </button>
    </div>

    <div class="sidebar-overlay"></div>

    <!-- SIDEBAR -->
    <aside class="sidebar">
        <button class="sidebar-close-btn" type="button" aria-label="Tutup sidebar">
            <i class="fa-solid fa-xmark"></i>
        </button>

        <a href="../index.php" class="sidebar-brand">
            <img src="../assets/images/Logo KVSkills.png" alt="Logo">
            <span>KVSkills Hub</span>
        </a>

        <ul class="sidebar-nav">

                <li>
                    <a href="../index.php" class="sidebar-link">
                        <i class="fa-solid fa-house"></i>
                        <span>Maklumat KVSkills</span>
                    </a>
                </li>

                <li>
                    <a href="../maklumat/lokasi.php" class="sidebar-link active">
                        <i class="fa-solid fa-location-dot"></i>
                        <span>Lokasi Pertandingan</span>
                    </a>
                </li>

                <li>
                    <a href="../maklumat/keputusan.php" class="sidebar-link">
                        <i class="fa-solid fa-trophy"></i>
                        <span>Keputusan</span>
                    </a>
                </li>

                <li>
                    <a href="../maklumat/peserta.php" class="sidebar-link">
                        <i class="fa-solid fa-users"></i>
                        <span>Senarai Peserta</span>
                    </a>
                </li>

                <li>
                    <a href="../maklumat/logo.php" class="sidebar-link">
                        <i class="fa-solid fa-download"></i>
                        <span>Muat Turun Logo</span>
                    </a>
                </li>

                <li>
                    <a href="../maklumat/soalan.php" class="sidebar-link">
                        <i class="fa-solid fa-file-arrow-down"></i>
                        <span>Muat Turun Soalan</span>
                    </a>
                </li>
<li>
                    <a href="../jawatan.php" class="sidebar-link">
                        <i class="fa-solid fa-right-to-bracket"></i>
                        <span>Log Masuk</span>
                    </a>
                </li>

        </ul>
    </aside>


    <button class="sidebar-reopen-btn" type="button" aria-label="Buka sidebar">
        <i class="fa-solid fa-bars"></i>
    </button>

    <div class="main-content">

<!-- Header -->

<section class="dashboard-header">

    <div class="container text-center">

        <h1>Lokasi Pertandingan</h1>

        <p>Maklumat lokasi pertandingan KVSkills Malaysia</p>

    </div>

</section>

<!-- Lokasi -->

<section class="container py-5">

<div class="row g-4">

<div class="col-lg-6">

<div class="card lokasi-card shadow">

<div class="card-body">

<h3>KV Kuantan</h3>

<p><strong>Bidang:</strong> Web Technology</p>

<p><strong>Alamat:</strong> Kolej Vokasional Kuantan, Pahang</p>

<a href="#" class="btn btn-danger">
Lihat Google Maps
</a>

</div>

</div>

</div>

<div class="col-lg-6">

<div class="card lokasi-card shadow">

<div class="card-body">

<h3>KV Kuala Terengganu</h3>

<p><strong>Bidang:</strong> Automotive</p>

<p><strong>Alamat:</strong> Kolej Vokasional Kuala Terengganu</p>

<a href="#" class="btn btn-danger">
Lihat Google Maps
</a>

</div>

</div>

</div>

<div class="col-lg-6">

<div class="card lokasi-card shadow">

<div class="card-body">

<h3>KV Johor Bahru</h3>

<p><strong>Bidang:</strong> Electronics</p>

<p><strong>Alamat:</strong> Kolej Vokasional Johor Bahru</p>

<a href="#" class="btn btn-danger">
Lihat Google Maps
</a>

</div>

</div>

</div>

<div class="col-lg-6">

<div class="card lokasi-card shadow">

<div class="card-body">

<h3>KV Kuching</h3>

<p><strong>Bidang:</strong> Refrigeration</p>

<p><strong>Alamat:</strong> Kolej Vokasional Kuching</p>

<a href="#" class="btn btn-danger">
Lihat Google Maps
</a>

</div>

</div>

</div>

</div>

</section>

<footer class="bg-dark text-white text-center py-3">

© 2026 KVSkills Hub

</footer>

    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

<script src="../assets/js/script.js"></script>

</body>

</html>