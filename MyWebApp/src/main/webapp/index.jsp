<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Wanderlust Travel Explorer</title>

    <style>

        /* =========================
           GENERAL STYLING
        ========================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            color: #333;
        }


        /* =========================
           NAVIGATION
        ========================== */

        nav {
            background: #ffffff;
            padding: 20px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;

            position: sticky;
            top: 0;
            z-index: 1000;

            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.1);
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #ff6b6b;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 30px;
        }

        nav a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            transition: 0.3s;
        }

        nav a:hover {
            color: #ff6b6b;
        }


        /* =========================
           HERO SECTION
        ========================== */

        .hero {
            height: 90vh;

            background-image:
                linear-gradient(
                    rgba(0, 0, 0, 0.35),
                    rgba(0, 0, 0, 0.35)
                ),
                url("https://images.unsplash.com/photo-1507525428034-b723cf961d3e");

            background-size: cover;
            background-position: center;

            display: flex;
            justify-content: center;
            align-items: center;

            text-align: center;
            color: white;
        }

        .hero-content {
            animation: fadeIn 2s ease;
        }

        .hero h1 {
            font-size: 65px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 22px;
            margin-bottom: 30px;
        }

        .hero-button {
            display: inline-block;

            background: #ff6b6b;
            color: white;

            padding: 15px 30px;

            border-radius: 30px;

            text-decoration: none;
            font-weight: bold;

            transition: 0.3s;
        }

        .hero-button:hover {
            background: #ff4757;
            transform: scale(1.08);
        }


        /* =========================
           DESTINATIONS
        ========================== */

        .section {
            padding: 80px 8%;
            text-align: center;
        }

        .section h2 {
            font-size: 40px;
            margin-bottom: 15px;
            color: #222;
        }

        .section-description {
            margin-bottom: 40px;
            color: #666;
            font-size: 18px;
        }

        .destination-container {
            display: grid;

            grid-template-columns:
                repeat(auto-fit, minmax(250px, 1fr));

            gap: 30px;
        }

        .destination-card {
            background: white;

            border-radius: 15px;

            overflow: hidden;

            box-shadow:
                0 5px 20px rgba(0, 0, 0, 0.1);

            transition: 0.4s;
        }

        .destination-card:hover {
            transform: translateY(-10px);

            box-shadow:
                0 15px 30px rgba(0, 0, 0, 0.2);
        }

        .destination-card img {
            width: 100%;
            height: 220px;
            object-fit: cover;

            transition: 0.5s;
        }

        .destination-card:hover img {
            transform: scale(1.1);
        }

        .card-content {
            padding: 25px;
        }

        .card-content h3 {
            font-size: 25px;
            margin-bottom: 10px;
            color: #ff6b6b;
        }

        .card-content p {
            line-height: 1.6;
            color: #666;
        }


        /* =========================
           TRAVEL TIPS
        ========================== */

        .tips {
            background: #eef7ff;
        }

        .tips-container {
            display: flex;
            justify-content: center;

            gap: 30px;

            flex-wrap: wrap;

            margin-top: 40px;
        }

        .tip {
            background: white;

            width: 250px;

            padding: 30px;

            border-radius: 15px;

            transition: 0.3s;

            box-shadow:
                0 5px 15px rgba(0, 0, 0, 0.08);
        }

        .tip:hover {
            transform: rotate(2deg) scale(1.05);
        }

        .tip-icon {
            font-size: 50px;
            margin-bottom: 15px;
        }

        .tip h3 {
            margin-bottom: 10px;
            color: #2f80ed;
        }


        /* =========================
           FORM
        ========================== */

        .form-section {
            background: white;
        }

        form {
            max-width: 650px;

            margin: 40px auto;

            padding: 40px;

            background: #f7f9fc;

            border-radius: 20px;

            box-shadow:
                0 5px 25px rgba(0, 0, 0, 0.1);

            text-align: left;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;

            margin-bottom: 8px;

            font-weight: bold;
        }

        input,
        select,
        textarea {
            width: 100%;

            padding: 13px;

            border: 2px solid #ddd;

            border-radius: 8px;

            font-size: 16px;

            outline: none;

            transition: 0.3s;
        }

        input:focus,
        select:focus,
        textarea:focus {
            border-color: #ff6b6b;
        }

        textarea {
            height: 120px;

            resize: vertical;
        }

        .submit-button {
            width: 100%;

            padding: 15px;

            border: none;

            border-radius: 10px;

            background: #ff6b6b;

            color: white;

            font-size: 18px;

            font-weight: bold;

            cursor: pointer;

            transition: 0.3s;
        }

        .submit-button:hover {
            background: #ff4757;

            transform: translateY(-3px);
        }


        /* =========================
           SUCCESS MESSAGE
        ========================== */

        #message {
            display: none;

            text-align: center;

            margin-top: 20px;

            padding: 15px;

            border-radius: 10px;

            background: #d4edda;

            color: #155724;
        }


        /* =========================
           FOOTER
        ========================== */

        footer {
            background: #222;

            color: white;

            text-align: center;

            padding: 30px;
        }

        footer p {
            margin: 5px;
        }


        /* =========================
           ANIMATIONS
        ========================== */

        @keyframes fadeIn {

            from {
                opacity: 0;
                transform: translateY(30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        /* =========================
           MOBILE DESIGN
        ========================== */

        @media (max-width: 700px) {

            nav {
                flex-direction: column;
                gap: 15px;
            }

            nav ul {
                gap: 15px;
            }

            .hero h1 {
                font-size: 42px;
            }

            .hero p {
                font-size: 18px;
            }

            .section {
                padding: 60px 5%;
            }

        }

    </style>
</head>


<body>
<h2>Devops is the Next best thing in IT!</h2>
</body>

</html>