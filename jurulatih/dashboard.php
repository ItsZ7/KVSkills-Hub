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
                       href="../maklumat/index.html">
                        Maklumat KVSkills
                    </a>
                </li>
     
                <li class="nav-item">
                    <a class="nav-link"
                       href="../index.html">
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
<!-- ================= DAFTAR JURULATIH ================= -->

<section class="container py-5">

    <div class="card shadow-lg border-0 rounded-4">

        <div class="card-body text-center p-5">

            <img src="../assets/images/profile.png"
                 class="rounded-circle border border-4 border-danger shadow mb-4"
                 width="140"
                 height="140">

            <h2 class="fw-bold mb-3">

                Daftar Maklumat Jurulatih

            </h2>

            <p class="text-muted fs-5 mb-4">

                Selamat datang ke Portal Jurulatih KVSkills Hub.

                <br><br>

                Sebelum menggunakan sistem ini, sila lengkapkan
                maklumat jurulatih terlebih dahulu.

            </p>

            <div class="row justify-content-center mb-4">

                <div class="col-lg-8">

                    <div class="alert alert-warning">

                        <i class="fa-solid fa-circle-info me-2"></i>

                        Maklumat ini hanya perlu diisi sekali sahaja.

                    </div>

                </div>

            </div>

            <a href="profil-jurulatih.html"
               class="btn btn-danger btn-lg px-5 py-3">

                <i class="fa-solid fa-user-plus me-2"></i>

                Daftar Jurulatih

            </a>

        </div>

    </div>

</section>

<!-- ================= MENU ================= -->
<!-- ================= PROGRESS ================= -->

<section class="container pb-5">

<div class="card shadow border-0">

<div class="card-body">

<h3 class="mb-4">

Status Pendaftaran

</h3>

<div class="progress mb-3" style="height:25px;">

<div class="progress-bar bg-danger"

style="width:25%;">

25%

</div>

</div>

<p class="text-muted">

Lengkapkan maklumat jurulatih untuk meneruskan proses pendaftaran.

</p>

</div>

</div>

</section>

<!-- ================= LANGKAH ================= -->

<section class="container pb-5">

<div class="row g-4">

<div class="col-lg-3">

<div class="card shadow border-0 text-center p-4">

<i class="fa-solid fa-user fa-3x text-danger mb-3"></i>

<h5>

1. Daftar Jurulatih

</h5>

<span class="badge bg-warning">

Sedang Dilengkapkan

</span>

</div>

</div>

<div class="col-lg-3">

<div class="card shadow border-0 text-center p-4">

<i class="fa-solid fa-users fa-3x text-secondary mb-3"></i>

<h5>

2. Daftar Peserta

</h5>

<span class="badge bg-secondary">

Belum Bermula

</span>

</div>

</div>

<div class="col-lg-3">

<div class="card shadow border-0 text-center p-4">

<i class="fa-solid fa-file-arrow-up fa-3x text-secondary mb-3"></i>

<h5>

3. Upload Dokumen

</h5>

<span class="badge bg-secondary">

Belum Bermula

</span>

</div>

</div>

<div class="col-lg-3">

<div class="card shadow border-0 text-center p-4">

<i class="fa-solid fa-paper-plane fa-3x text-secondary mb-3"></i>

<h5>

4. Hantar Penyertaan

</h5>

<span class="badge bg-secondary">

Belum Bermula

</span>

</div>

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