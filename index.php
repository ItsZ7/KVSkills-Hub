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

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-danger shadow">
        <div class="container">
            <a class="navbar-brand fw-bold" href="index.php">KVSkills Hub</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="menu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.php">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="jawatan.php">Log Masuk</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="maklumat/soalan.php">Muat Turun Soalan</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>

</html>
