const themeToggle = document.getElementById("themeToggle");
const body = document.body;

// Cargar el tema guardado
if (localStorage.getItem("darkMode") === "enabled") {
    body.classList.add("dark-mode");
    themeToggle.checked = true;
}

// Cambiar tema y guardar preferencia
themeToggle.addEventListener("change", () => {
    if (themeToggle.checked) {
        body.classList.add("dark-mode");
        localStorage.setItem("darkMode", "enabled");
    } else {
        body.classList.remove("dark-mode");
        localStorage.setItem("darkMode", "disabled");
    }
});