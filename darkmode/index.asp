<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>¿</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        /* Estilos generales */
        body.dark-mode {
            background-color: #1a1a1a;
            color: white;
        }

        /* Contenedor del switch */
        .switch-container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        /* Estilos del switch */
        .switch {
            position: relative;
            display: inline-block;
            width: 80px;
            height: 40px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #2c3e50;
            border-radius: 34px;
            transition: 0.4s;
        }

        .slider:before {
            content: "";
            position: absolute;
            height: 32px;
            width: 32px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            border-radius: 50%;
            transition: 0.4s;
        }

        input:checked + .slider {
            background-color: #f1c40f;
        }

        input:checked + .slider:before {
            transform: translateX(40px);
        }

        /* Íconos dentro del switch */
        .slider .icon {
            position: absolute;
            width: 24px;
            height: 24px;
            top: 50%;
            transform: translateY(-50%);
        }

        .icon.sun { left: 10px; display: block; }
        .icon.moon { right: 10px; display: block; opacity: 0.5; }

        input:checked + .slider .icon.sun { opacity: 0.5; }
        input:checked + .slider .icon.moon { opacity: 1; }
    </style>
</head>
<body>

<div class="switch-container">
    <label class="switch">
        <input type="checkbox" id="themeToggle">
        <span class="slider">
            <img src="https://cdn-icons-png.flaticon.com/512/869/869869.png" class="icon sun" alt="Sol">
            <img src="https://cdn-icons-png.flaticon.com/512/4140/4140037.png" class="icon moon" alt="Luna">
        </span>
    </label>
</div>

<script>
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
</script>

</body>
</html>
