<?php
    include 'config/config.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Pilih Jawatan | KVSkills Hub</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>

    <section class="hero">

        <div class="container text-center">

            <!-- Logo -->
            <img src="assets/images/Logo KVSkills.png" class="logo mb-4 fade-in-item" alt="Logo">

            <h1 class="title fade-in-item">
                KVSkills Hub
            </h1>

            <p class="subtitle fade-in-item">
                Pertandingan Kemahiran Kolej Vokasional Malaysia
            </p>

            <div class="row justify-content-center mt-5">

                <div class="col-lg-4 col-md-6 mb-4 fade-in-item">

                    <a href="jurulatih/dashboard.php" class="menu-btn">
                        <i class="fa-solid fa-user"></i>
                        Jurulatih
                    </a>

                </div>

                <div class="col-lg-4 col-md-6 mb-4 fade-in-item">

                    <a href="pegawai_teknikal/login.php" class="menu-btn">
                        <i class="fa-solid fa-user-gear"></i>
                        Pegawai Teknikal
                    </a>

                </div>

            </div>

        </div>

    </section>


    <!-- LOADING OVERLAY -->
    <div id="loadingOverlay" class="loading-overlay">
        <div class="spinner"></div>
        <p class="loading-text">Sedang Memuatkan...</p>
    </div>

    <script src="assets/js/script.js"></script>

</body>
</html>
