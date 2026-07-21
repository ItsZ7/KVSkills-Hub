<?php
    include 'config/config.php';
?>

<!DOCTYPE html>
<html lang="ms">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KVSkills Hub</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>

    <!-- SIDEBAR TOPBAR (mobile) -->
    <div class="sidebar-topbar">
        <a href="index.php" class="sidebar-topbar-brand">KVSkills Hub</a>
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

        <a href="index.php" class="sidebar-brand">
            <img src="assets/images/Logo KVSkills.png" alt="Logo">
            <span>KVSkills Hub</span>
        </a>

        <ul class="sidebar-nav">

                <li>
                    <a href="index.php" class="sidebar-link active">
                        <i class="fa-solid fa-house"></i>
                        <span>Maklumat KVSkills</span>
                    </a>
                </li>

                <li>
                    <a href="maklumat/lokasi.php" class="sidebar-link">
                        <i class="fa-solid fa-location-dot"></i>
                        <span>Lokasi Pertandingan</span>
                    </a>
                </li>

                <li>
                    <a href="maklumat/keputusan.php" class="sidebar-link">
                        <i class="fa-solid fa-trophy"></i>
                        <span>Keputusan</span>
                    </a>
                </li>

                <li>
                    <a href="maklumat/peserta.php" class="sidebar-link">
                        <i class="fa-solid fa-users"></i>
                        <span>Senarai Peserta</span>
                    </a>
                </li>

                <li>
                    <a href="maklumat/logo.php" class="sidebar-link">
                        <i class="fa-solid fa-download"></i>
                        <span>Muat Turun Logo</span>
                    </a>
                </li>

                <li>
                    <a href="maklumat/soalan.php" class="sidebar-link">
                        <i class="fa-solid fa-file-arrow-down"></i>
                        <span>Muat Turun Soalan</span>
                    </a>
                </li>
<li>
                    <a href="jawatan.php" class="sidebar-link">
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

    <!-- HEADER -->
    <section class="dashboard-header">
        <div class="container text-center">
            <h1>Maklumat KV Skills</h1>
            <p>Portal Rasmi KVSkills Malaysia</p>

            <a href="jawatan.php" class="btn btn-light btn-lg fw-bold mt-4">
                <i class="fa-solid fa-right-to-bracket me-2"></i>Log Masuk
            </a>
        </div>
    </section>

    <!-- MENU -->
    <section class="container py-5">
        <div class="row g-4 justify-content-center">
            <div class="col-lg-5">
                <a href="maklumat/lokasi.php" class="dashboard-card">
                    <i class="fa-solid fa-location-dot"></i>
                    <h3>Lokasi Pertandingan</h3>
                    <p>Lihat lokasi semua pertandingan KVSkills.</p>
                </a>
            </div>

            <div class="col-lg-5">
                <a href="maklumat/keputusan.php" class="dashboard-card">
                    <i class="fa-solid fa-trophy"></i>
                    <h3>Keputusan</h3>
                    <p>Lihat keputusan rasmi pertandingan.</p>
                </a>
            </div>

            <div class="col-lg-5">
                <a href="maklumat/peserta.php" class="dashboard-card">
                    <i class="fa-solid fa-users"></i>
                    <h3>Senarai Peserta</h3>
                    <p>Senarai peserta seluruh Malaysia.</p>
                </a>
            </div>

            <div class="col-lg-5">
                <a href="maklumat/logo.php" class="dashboard-card">
                    <i class="fa-solid fa-download"></i>
                    <h3>Muat Turun Logo</h3>
                    <p>Logo rasmi KVSkills.</p>
                </a>
            </div>
        </div>
    </section>

    <footer class="bg-dark text-center text-white py-3">© 2026 KVSkills Hub</footer>

        </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>

</html>
