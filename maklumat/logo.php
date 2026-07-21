<?php
    include '../config/config.php';
?>

<!DOCTYPE html>
<html lang="ms">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Muat Turun Logo | KVSkills Hub</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">

</head>

<body>


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
                    <a href="../maklumat/lokasi.php" class="sidebar-link">
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
                    <a href="../maklumat/logo.php" class="sidebar-link active">
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

<!-- ================= HEADER ================= -->

<section class="dashboard-header">

<div class="container text-center">

<h1>Muat Turun Logo KVSkills</h1>

<p>Logo rasmi KVSkills Malaysia untuk kegunaan rasmi.</p>

</div>

</section>

<!-- ================= CONTENT ================= -->

<section class="container py-5">

<div class="row">

<!-- Preview -->

<div class="col-lg-5 mb-4">

<div class="card shadow border-0">

<div class="card-body text-center">

<img src="../assets/images/logo.png"

class="img-fluid logo-preview"

alt="Logo KVSkills">

<h4 class="mt-4">

Logo Rasmi KVSkills

</h4>

<p>

Gunakan logo rasmi ini untuk poster,

banner, sijil dan bahan promosi.

</p>

</div>

</div>

</div>

<!-- Download -->

<div class="col-lg-7">

<div class="card shadow border-0">

<div class="card-body">

<h3 class="mb-4">

<i class="fa-solid fa-download"></i>

Muat Turun

</h3>

<div class="d-grid gap-3">

<a href="../assets/images/logo.png"

download

class="btn btn-danger btn-lg">

<i class="fa-solid fa-file-image"></i>

Download PNG

</a>

<a href="#"

class="btn btn-outline-danger btn-lg">

<i class="fa-solid fa-image"></i>

Download JPG

</a>

<a href="#"

class="btn btn-outline-danger btn-lg">

<i class="fa-solid fa-file-pdf"></i>

Download PDF

</a>

<a href="#"

class="btn btn-outline-danger btn-lg">

<i class="fa-solid fa-file"></i>

Download SVG

</a>

</div>

<hr class="my-4">

<h4>

Garis Panduan Penggunaan

</h4>

<ul>

<li>Logo tidak boleh diubah warna.</li>

<li>Pastikan resolusi tinggi digunakan.</li>

<li>Logo hanya untuk kegunaan rasmi KVSkills.</li>

<li>Dilarang mengubah bentuk atau nisbah logo.</li>

<li>Sila dapatkan kebenaran penganjur untuk penggunaan komersial.</li>

</ul>

</div>

</div>

</div>

</div>

</section>

<!-- ================= FOOTER ================= -->

<footer class="bg-dark text-white text-center py-3">

© 2026 KVSkills Hub

</footer>

    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

<script src="../assets/js/script.js"></script>

</body>

</html>