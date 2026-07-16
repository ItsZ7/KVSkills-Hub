<?php
    include '../config/config.php';
?>

<!DOCTYPE html>
<html lang="ms">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Senarai Peserta | KVSkills Hub</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link rel="stylesheet"
href="../assets/css/style.css">

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark bg-danger shadow">

<div class="container">

<a class="navbar-brand fw-bold"
href="../index.php">

KVSkills Hub

</a>

<button class="navbar-toggler"
data-bs-toggle="collapse"
data-bs-target="#menu">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse"
id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">
<a class="nav-link"
href="../index.php">
Home
</a>
</li>

<li class="nav-item">
<a class="nav-link"
href="index.php">
Maklumat KVSkills
</a>
</li>

<li class="nav-item">
<a class="nav-link"
href="lokasi.php">
Lokasi
</a>
</li>

<li class="nav-item">
<a class="nav-link"
href="keputusan.php">
Keputusan
</a>
</li>

<li class="nav-item">
<a class="nav-link active"
href="#">
Senarai Peserta
</a>
</li>

<li class="nav-item">
<a class="nav-link"
href="logo.php">
Muat Turun Logo
</a>
</li>

<li class="nav-item">
<a class="nav-link"
href="soalan.php">
Muat Turun Soalan
</a>
</li>

</ul>

</div>

</div>

</nav>

<!-- HEADER -->

<section class="dashboard-header">

<div class="container text-center">

<h1>Senarai Peserta KVSkills</h1>

<p>Maklumat peserta pertandingan KVSkills Malaysia</p>

</div>

</section>

<!-- SEARCH -->

<section class="container mt-5">

<div class="row">

<div class="col-lg-6">

<input
type="text"
class="form-control form-control-lg"
placeholder="Cari Nama Peserta">

</div>

<div class="col-lg-3">

<select class="form-select form-select-lg">

<option>Semua Bidang</option>
<option>Web Technology</option>
<option>Automotive</option>
<option>Electronics</option>

</select>

</div>

<div class="col-lg-3">

<select class="form-select form-select-lg">

<option>Semua Kolej</option>
<option>KV Kuantan</option>
<option>KV Johor Bahru</option>
<option>KV Kuching</option>

</select>

</div>

</div>

</section>

<!-- TABLE -->

<section class="container py-5">

<div class="table-responsive">

<table class="table table-striped table-hover align-middle">

<thead class="table-danger">

<tr>

<th>Bil</th>

<th>Nama Peserta</th>

<th>Kolej</th>

<th>Bidang</th>

<th>Jurulatih</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>

<td>Muhammad Faris</td>

<td>KV Kuantan</td>

<td>Web Technology</td>

<td>Encik Ahmad</td>

</tr>

<tr>

<td>2</td>

<td>Nur Aisyah</td>

<td>KV Kuching</td>

<td>Electronics</td>

<td>Puan Salmah</td>

</tr>

<tr>

<td>3</td>

<td>Ahmad Hakim</td>

<td>KV Johor Bahru</td>

<td>Automotive</td>

<td>Encik Faiz</td>

</tr>

</tbody>

</table>

</div>

</section>

<footer class="bg-dark text-center text-white py-3">

© 2026 KVSkills Hub

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

<script src="../assets/js/script.js"></script>

</body>

</html>