<script>
    let TempVal = "42.0 degrees"
    let Title = "I-WINDOWS"

</script>

<body>
    <div class="headContainer">
        <h2 class="title">{Title}</h2>
    </div>
    
    <!-- <br><br> -->

    <div class="bodyContainer">
        <div class="backDrop">
            <div class="selectionBox">
                <label class="selectText" for="mode">SELECT MODE:</label>

                <br>

                <select class="dropBox" name="mode" id="modeBox">
                    <option class="opt" value="Manual Override">Manual Override</option>
                    <option class="opt" value="Automatic Mode">Automatic</option>
                </select>
            </div>

            <div class="mainLabel">
                <p class="windowHead">WINDOW CONTROL</p>
                <p class="curtainHead">CURTAIN CONTROL</p>
            </div>

            <div class="toggleBtn">
                <div class="windowSwitch">
                    <input type="checkbox">
                    <span class="slider round"></span>
                </div>
            </div>
        </div>
    </div>

    <div class="footerContainer">

    </div>
</body>

<svelte:head>
    <style>
        .windowSwitch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }

        .windowSwitch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider.round {
            border-radius: 34px;
        }

        .slider.round:before {
            border-radius: 50%;
        }

        html {
            max-width: 100%;
            min-height: 100%;
            background-color: #212429;
        }
    </style>
</svelte:head>

<style>
    .bodyContainer {
        margin: auto;
    }

    .backDrop {
        position: relative;
        display: block;
        justify-content: center;
        border-radius: 60px;
        width: 68%;
        height: 670px;
        align-items: center;
        margin: auto;
        background: linear-gradient(#212429, #212429) padding-box, linear-gradient(90deg, #48d0b8, #9889f9) border-box;
        border: 4px solid transparent;
    }

    .selectionBox {
        text-align: center;
        margin-top: 2%;
    }

    .selectText {
        color: #f1f1f1;
        font-family: "Michroma";
        font-size: 150%;
    }

    .dropBox {
        margin-top: 1%;
        width: 500px;
        height: 40px;
        border: 3px solid;
        text-align: center;
        font-family: "Poppins";
        font-size: 25px;
        border-radius: 10px;
        background: linear-gradient(#333333, #333333) padding-box, linear-gradient(90deg, #48d0b8, #9889f9) border-box;
        border: 3px solid transparent;
        color: #f1f1f1;
    }

    option {
        color: #f1f1f1;
        background-color: #333333;
    }

    .mainLabel{
        margin-top: 0%;
        display: flex;
        font-family: "Michroma";
        gap: 30%;
        text-align: center;
        justify-content: center;
        color: #f1f1f1;
        flex-shrink: 1%;
        font-size: 150%;
    }

    

</style> 