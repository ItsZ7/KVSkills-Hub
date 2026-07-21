<?php
    include '../config/config.php';
?>

<!DOCTYPE html>
<html lang="ms">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Muat Turun Soalan | KVSkills Hub</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <!-- Main CSS -->
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
                    <a href="../maklumat/logo.php" class="sidebar-link">
                        <i class="fa-solid fa-download"></i>
                        <span>Muat Turun Logo</span>
                    </a>
                </li>

                <li>
                    <a href="../maklumat/soalan.php" class="sidebar-link active">
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

        <h1>Muat Turun Soalan KVSkills</h1>

        <p>
            Semua dokumen pertandingan boleh dimuat turun di sini.
        </p>

    </div>

</section>

<!-- ================= CONTENT ================= -->

<section class="container py-5">

    <div class="row g-4">

        <!-- WEB -->

        <div class="col-lg-4">

            <div class="card shadow border-0 h-100">

                <div class="card-body text-center">

                    <i class="fa-solid fa-laptop-code fa-4x text-danger mb-3"></i>

                    <h4>Web Technology</h4>

                    <p>
                        Soalan pertandingan Web Technology.
                    </p>

                    <p class="text-muted">
                        PDF • 2.3 MB
                    </p>

                    <a href="#"
                       class="btn btn-danger">

                        <i class="fa-solid fa-download"></i>

                        Muat Turun

                    </a>

                </div>

            </div>

        </div>

        <!-- AUTOMOTIVE -->

        <div class="col-lg-4">

            <div class="card shadow border-0 h-100">

                <div class="card-body text-center">

                    <i class="fa-solid fa-car fa-4x text-danger mb-3"></i>

                    <h4>Automotive</h4>

                    <p>
                        Soalan pertandingan Automotive.
                    </p>

                    <p class="text-muted">
                        PDF • 3.1 MB
                    </p>

                    <a href="#"
                       class="btn btn-danger">

                        <i class="fa-solid fa-download"></i>

                        Muat Turun

                    </a>

                </div>

            </div>

        </div>

        <!-- ELECTRONICS -->

        <div class="col-lg-4">

            <div class="card shadow border-0 h-100">

                <div class="card-body text-center">

                    <i class="fa-solid fa-microchip fa-4x text-danger mb-3"></i>

                    <h4>Electronics</h4>

                    <p>
                        Soalan pertandingan Electronics.
                    </p>

                    <p class="text-muted">
                        PDF • 1.8 MB
                    </p>

                    <a href="#"
                       class="btn btn-danger">

                        <i class="fa-solid fa-download"></i>

                        Muat Turun

                    </a>

                </div>

            </div>

        </div>

        <!-- REFRIGERATION -->

        <div class="col-lg-4">

            <div class="card shadow border-0 h-100">

                <div class="card-body text-center">

                    <i class="fa-solid fa-snowflake fa-4x text-danger mb-3"></i>

                    <h4>Refrigeration</h4>

                    <p>
                        Soalan pertandingan Refrigeration.
                    </p>

                    <p class="text-muted">
                        PDF • 2.9 MB
                    </p>

                    <a href="#"
                       class="btn btn-danger">

                        <i class="fa-solid fa-download"></i>

                        Muat Turun

                    </a>

                </div>

            </div>

        </div>

        <!-- CNC -->

        <div class="col-lg-4">

            <div class="card shadow border-0 h-100">

                <div class="card-body text-center">

                    <i class="fa-solid fa-gears fa-4x text-danger mb-3"></i>

                    <h4>CNC Technology</h4>

                    <p>
                        Soalan pertandingan CNC Technology.
                    </p>

                    <p class="text-muted">
                        PDF • 4.0 MB
                    </p>

                    <a href="#"
                       class="btn btn-danger">

                        <i class="fa-solid fa-download"></i>

                        Muat Turun

                    </a>

                </div>

            </div>

        </div>

        <!-- MORE -->

        <div class="col-lg-4">

            <div class="card shadow border-0 h-100">

                <div class="card-body text-center">

                    <i class="fa-solid fa-folder-open fa-4x text-danger mb-3"></i>

                    <h4>Lain-lain Bidang</h4>

                    <p>
                        Soalan pertandingan bidang lain.
                    </p>

                    <p class="text-muted">
                        PDF
                    </p>

                    <a href="#"
                       class="btn btn-danger">

                        <i class="fa-solid fa-download"></i>

                        Muat Turun

                    </a>

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