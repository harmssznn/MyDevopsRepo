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


    <!-- =========================
         NAVIGATION
    ========================== -->

    <nav>

        <div class="logo">
            ✈️ Wanderlust
        </div>

        <ul>

            <li>
                <a href="#home">Home</a>
            </li>

            <li>
                <a href="#destinations">Destinations</a>
            </li>

            <li>
                <a href="#tips">Travel Tips</a>
            </li>

            <li>
                <a href="#plan">Plan a Trip</a>
            </li>

        </ul>

    </nav>



    <!-- =========================
         HERO
    ========================== -->

    <section class="hero" id="home">

        <div class="hero-content">

            <h1>Explore the World 🌎</h1>

            <p>
                Discover beautiful places,
                unforgettable adventures,
                and new experiences.
            </p>

            <a
                href="#destinations"
                class="hero-button"
            >
                Explore Destinations
            </a>

        </div>

    </section>



    <!-- =========================
         DESTINATIONS
    ========================== -->

    <section
        class="section"
        id="destinations"
    >

        <h2>Popular Destinations</h2>

        <p class="section-description">
            Here are some amazing places
            you can add to your travel bucket list.
        </p>


        <div class="destination-container">


            <!-- Paris -->

            <div class="destination-card">

                <img
                    src="https://images.unsplash.com/photo-1502602898657-3e91760cbb34"
                    alt="Paris"
                >

                <div class="card-content">

                    <h3>🇫🇷 Paris</h3>

                    <p>
                        Visit the Eiffel Tower,
                        explore beautiful streets,
                        and enjoy delicious French food.
                    </p>

                </div>

            </div>


            <!-- Japan -->

            <div class="destination-card">

                <img
                    src="https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e"
                    alt="Japan"
                >

                <div class="card-content">

                    <h3>🇯🇵 Japan</h3>

                    <p>
                        Experience Japanese culture,
                        amazing food, temples,
                        and beautiful scenery.
                    </p>

                </div>

            </div>


            <!-- Greece -->

            <div class="destination-card">

                <img
                    src="https://images.unsplash.com/photo-1533105079780-92b9be482077"
                    alt="Greece"
                >

                <div class="card-content">

                    <h3>🇬🇷 Greece</h3>

                    <p>
                        Relax on beautiful beaches
                        and explore the stunning
                        Greek islands.
                    </p>

                </div>

            </div>


            <!-- New York -->

            <div class="destination-card">

                <img
                    src="https://images.unsplash.com/photo-1485871981521-5b1fd3805eee"
                    alt="New York City"
                >

                <div class="card-content">

                    <h3>🇺🇸 New York</h3>

                    <p>
                        Explore Times Square,
                        Central Park, amazing restaurants,
                        and famous landmarks.
                    </p>

                </div>

            </div>

        </div>

    </section>



    <!-- =========================
         TRAVEL TIPS
    ========================== -->

    <section
        class="section tips"
        id="tips"
    >

        <h2>Travel Tips ✈️</h2>

        <p class="section-description">
            A few things to remember before your next adventure.
        </p>


        <div class="tips-container">


            <div class="tip">

                <div class="tip-icon">
                    💰
                </div>

                <h3>Save Money</h3>

                <p>
                    Create a budget before your trip
                    and look for affordable flights
                    and hotels.
                </p>

            </div>


            <div class="tip">

                <div class="tip-icon">
                    🎒
                </div>

                <h3>Pack Smart</h3>

                <p>
                    Only bring what you need
                    and make sure important items
                    are easy to access.
                </p>

            </div>


            <div class="tip">

                <div class="tip-icon">
                    📸
                </div>

                <h3>Take Pictures</h3>

                <p>
                    Capture your favorite moments
                    so you can remember your trip
                    for years.
                </p>

            </div>


            <div class="tip">

                <div class="tip-icon">
                    🗺️
                </div>

                <h3>Plan Ahead</h3>

                <p>
                    Research your destination
                    and create a basic itinerary.
                </p>

            </div>

        </div>

    </section>



    <!-- =========================
         TRAVEL FORM
    ========================== -->

    <section
        class="section form-section"
        id="plan"
    >

        <h2>Plan Your Dream Trip 🌴</h2>

        <p class="section-description">
            Tell us where you would like to travel!
        </p>


        <form id="travelForm">


            <div class="form-group">

                <label for="name">
                    Your Name
                </label>

                <input
                    type="text"
                    id="name"
                    placeholder="Enter your name"
                    required
                >

            </div>


            <div class="form-group">

                <label for="email">
                    Email
                </label>

                <input
                    type="email"
                    id="email"
                    placeholder="example@email.com"
                    required
                >

            </div>


            <div class="form-group">

                <label for="destination">
                    Dream Destination
                </label>

                <select
                    id="destination"
                    required
                >

                    <option value="">
                        Choose a destination
                    </option>

                    <option>
                        Paris, France
                    </option>

                    <option>
                        Tokyo, Japan
                    </option>

                    <option>
                        Santorini, Greece
                    </option>

                    <option>
                        New York, USA
                    </option>

                    <option>
                        Other
                    </option>

                </select>

            </div>


            <div class="form-group">

                <label for="date">
                    Preferred Travel Date
                </label>

                <input
                    type="date"
                    id="date"
                >

            </div>


            <div class="form-group">

                <label for="messageText">
                    Why do you want to visit?
                </label>

                <textarea
                    id="messageText"
                    placeholder="Tell us about your dream trip..."
                ></textarea>

            </div>


            <button
                type="submit"
                class="submit-button"
            >
                Submit My Travel Plan ✈️
            </button>


            <div id="message">

                🎉 Thank you!

                <br>

                Your travel plan has been submitted!

            </div>


        </form>

    </section>



    <!-- =========================
         FOOTER
    ========================== -->

    <footer>

        <p>
            ✈️ Wanderlust Travel Explorer
        </p>

        <p>
            Created for my Web Development class 💻
        </p>

        <p>
            © 2026 Wanderlust
        </p>

    </footer>



    <!-- =========================
         JAVASCRIPT
    ========================== -->

    <script>

        const form =
            document.getElementById("travelForm");

        const message =
            document.getElementById("message");


        form.addEventListener(
            "submit",
            function(event) {

                event.preventDefault();

                message.style.display = "block";

                message.scrollIntoView({
                    behavior: "smooth"
                });

            }
        );

    </script>


</body>

</html>clear