<!DOCTYPE html>
<html lang="mn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Намайг уучлаарай ❤️</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #121212;
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
            position: relative;
        }

        .container {
            text-align: center;
            max-width: 500px;
            width: 90%;
            background: rgba(25, 25, 25, 0.8);
            padding: 40px 30px;
            border-radius: 25px;
            box-shadow: 0 10px 30px rgba(255, 105, 180, 0.15);
            border: 1px solid rgba(255, 105, 180, 0.2);
            backdrop-filter: blur(10px);
            z-index: 10;
        }

        /* Emoji Icon Animation */
        .emoji-icon {
            font-size: 70px;
            margin-bottom: 20px;
            animation: bounce 1.5s infinite alternate;
        }

        @keyframes bounce {
            0% { transform: translateY(0); }
            100% { transform: translateY(-10px); }
        }

        h1 {
            font-size: 26px;
            margin-bottom: 10px;
            color: #ff8fab;
        }

        p {
            font-size: 15px;
            color: #d1d1d1;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 25px;
            font-size: 15px;
            font-weight: bold;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-yes {
            background-color: #ff477e;
            color: white;
            box-shadow: 0 4px 15px rgba(255, 71, 126, 0.4);
        }

        .btn-yes:hover {
            background-color: #ff2366;
            transform: scale(1.05);
        }

        .btn-no {
            background-color: #333333;
            color: #b0b0b0;
            position: relative;
        }

        .btn-no:hover {
            background-color: #444444;
            color: white;
        }

        /* Floating Hearts Background */
        .heart {
            position: absolute;
            color: #ff477e;
            font-size: 18px;
            animation: floatUp 4s linear infinite;
            z-index: 1;
            opacity: 0.7;
        }

        @keyframes floatUp {
            0% {
                transform: translateY(100vh) scale(0.5);
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                transform: translateY(-10vh) scale(1.2);
                opacity: 0;
            }
        }

        .hidden {
            display: none;
        }

        .letter-box {
            text-align: left;
            max-height: 320px;
            overflow-y: auto;
            padding-right: 5px;
        }
        
        .letter-box::-webkit-scrollbar {
            width: 5px;
        }
        
        .letter-box::-webkit-scrollbar-thumb {
            background: #ff477e;
            border-radius: 10px;
        }
    </style>
</head>
<body>

    <!-- Floating Background Hearts -->
    <div id="hearts-container"></div>

    <!-- Step 1: Main Apology Card -->
    <div class="container" id="step-1">
        <div class="emoji-icon">🥺🙏</div>
        <h1>Dear Huslen</h1>
        <p>Can you please hear me out for a moment?</p>
        <div class="btn-container">
            <button class="btn btn-yes" onclick="nextStep(2)">Yes</button>
            <button class="btn btn-no" id="no-btn-1" onmouseover="moveBtn('no-btn-1')" ontouchstart="moveBtn('no-btn-1')">No</button>
        </div>
    </div>

    <!-- Step 2: Sorry Letter -->
    <div class="container hidden" id="step-2">
        <div class="emoji-icon">📨</div>
        <h1 style="color: #ff477e; margin-bottom: 15px;">Chamd</h1>
        <div class="letter-box">
            <p><br>
            Yunii umnu namaig uneheer uuchlarai minii hiisen zuild. Bi uneheer chamaig gomdooy,uurluuli gej bodoogu ym shu. bi iim oilgmjgu bas sonin baigaad baigaa geh met zunduu aldaa dutagdlaa medlee odoo uunees hoish ali bolh hicheenee namaig uuchlarai.<br><br>
            Namaig uuchlahu?</p>
        </div>
        <div class="btn-container" style="margin-top: 25px;">
            <button class="btn btn-yes" onclick="nextStep(3)">Tiim</button>
            <button class="btn btn-no" id="no-btn-2" onmouseover="moveBtn('no-btn-2')" ontouchstart="moveBtn('no-btn-2')">Ugui</button>
        </div>
    </div>

    <!-- Step 3: Final Cute Success Screen -->
    <div class="container hidden" id="step-3">
        <div class="emoji-icon">🙏🙂‍↕️</div>
        <h1 style="color: #ff477e;">Bayrlalaa</h1>
        <p>Namaig oilgoj uuchlasan tanid mash ih bayrlalaaa </p>
    </div>

    <script>
        function moveBtn(btnId) {
            const btn = document.getElementById(btnId);
            const x = Math.floor(Math.random() * 160) - 80;
            const y = Math.floor(Math.random() * 100) - 50;
            btn.style.transform = `translate(${x}px, ${y}px)`;
        }

        function nextStep(stepNumber) {
            document.querySelectorAll('.container').forEach(el => el.classList.add('hidden'));
            document.getElementById(`step-${stepNumber}`).classList.remove('hidden');
            
            if(stepNumber === 3) {
                for(let i = 0; i < 40; i++) {
                    createHeart();
                }
            }
        }

        function createHeart() {
            const heart = document.createElement('div');
            heart.classList.add('heart');
            heart.innerHTML = '❤️';
            heart.style.left = Math.random() * 100 + 'vw';
            heart.style.animationDuration = (Math.random() * 3 + 2) + 's';
            heart.style.fontSize = (Math.random() * 15 + 10) + 'px';
            document.getElementById('hearts-container').appendChild(heart);

            setTimeout(() => {
                heart.remove();
            }, 5000);
        }

        setInterval(createHeart, 350);
    </script>
</body>
</html>
