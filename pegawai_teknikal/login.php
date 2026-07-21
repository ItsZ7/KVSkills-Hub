<?php
    include '../config/config.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Log Masuk Pegawai Teknikal | KVSkills Hub</title>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <!-- CSS -->
        <link rel="stylesheet" href="../assets/css/style.css">
    </head>

    <body>

        <div class="login-wrapper">

            <a href="../index.php" class="login-back">
                <i class="fa-solid fa-arrow-left"></i>Back
            </a>

            <img src="../assets/images/Logo KVSkills.png" class="login-logo" alt="Logo">
            <div class="login-brand">KVSKILLS HUB</div>

            <div class="login-card">

                <h2>Log Masuk</h2>
                <div class="login-underline"></div>

                <form action="" method="POST">

                    <div class="mb-3">
                        <label for="email">Email</label>
                        <div class="input-group login-input-group">
                            <span class="input-group-text"><i class="fa-solid fa-envelope"></i></span>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Masukkan email anda" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="password">Kata Laluan</label>
                        <div class="input-group login-input-group">
                            <span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Masukkan kata laluan" required>
                            <button class="login-toggle-pass" type="button" id="togglePassword">
                                <i class="fa-solid fa-eye" id="toggleIcon"></i>
                            </button>
                        </div>
                    </div>

                    <div class="login-options">
                        <div class="login-remember form-check">
                            <input class="form-check-input" type="checkbox" id="ingatSaya" name="ingat_saya">
                            <label class="form-check-label" for="ingatSaya">Ingat saya</label>
                        </div>
                        <div class="login-register-link">
                            <a href="#">Tiada akaun, klik disini untuk daftar</a>
                        </div>
                    </div>

                    <button type="submit" class="login-btn">Log Masuk</button>

                </form>

            </div>

        </div>

        <script>
            const toggleBtn = document.getElementById('togglePassword');
            const passInput = document.getElementById('password');
            const toggleIcon = document.getElementById('toggleIcon');

            toggleBtn.addEventListener('click', () => {
                const isPassword = passInput.type === 'password';
                passInput.type = isPassword ? 'text' : 'password';
                toggleIcon.classList.toggle('fa-eye');
                toggleIcon.classList.toggle('fa-eye-slash');
            });
        </script>

    </body>
</html>
