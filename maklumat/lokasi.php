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

<nav class="navbar navbar-expand-lg navbar-dark bg-danger shadow">

    <div class="container">

        <a class="navbar-brand fw-bold" href="../index.php">
            KVSkills Hub
        </a>

        <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="menu">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="../index.php">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="index.php">Maklumat KVSkills</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="#">Lokasi</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="soalan.php">Muat Turun Soalan</a>
                </li>

            </ul>

        </div>

    </div>

</nav>

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

<script src="../assets/js/script.js"></script>

</body>

</html>