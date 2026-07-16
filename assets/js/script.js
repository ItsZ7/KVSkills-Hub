console.log("KVSkills Hub Loaded");

document.addEventListener("DOMContentLoaded", function () {

    const overlay = document.getElementById("loadingOverlay");

    if (!overlay) return; // kalau halaman ni tak ada overlay, skip

    const menuButtons = document.querySelectorAll(".menu-btn");

    menuButtons.forEach(function (btn) {

        btn.addEventListener("click", function (e) {

            const targetUrl = btn.getAttribute("href");
            // kalau href kosong / "#" (halaman belum siap), biar normal, tak perlu loading
            if (!targetUrl || targetUrl === "#") {
                return;
            }

            e.preventDefault(); // halang navigasi terus

            overlay.classList.add("active");

            setTimeout(function () {
                window.location.href = targetUrl;
            }, 900);


        });
    });
});