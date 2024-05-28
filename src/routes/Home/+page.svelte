<script>
    let TempVal = "42.0 degrees"
    let Title = "I-WINDOWS"
    let windowState = "OPEN"
    let curtainState = "CLOSED"

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
                <button class="windowCtrl">Press to open/close window</button>
                <button class="curtainCtrl">Press to open/close curtain</button>
            </div>

            
            <div class="stateLabel">
                <p class="windowLabel">WINDOW STATE</p>
                <p class="curtainLabel">CURTAIN STATE</p>
            </div>

            <div class="state">
                <p class="windowVal">{windowState}</p>
                <p class="curtainVal">{curtainState}</p>
            </div>
        </div>
    </div>

    <div class="footerContainer">

    </div>
</body>

<svelte:head>
    <style>
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

    .stateLabel {

        font-family: "Michroma";
        font-size: 1.2vw;
        color: #f1f1f1;
        display: flex;
    }

    .windowLabel {
        margin-left: 9%;
        margin-bottom: 1%;
    }

    .curtainLabel {
        margin-left: 35%;
        margin-bottom: 1%;
    }

    .state {
        font-family: "Michroma";
        font-size: 1.5vw;
        display: flex;
        margin-top: 0%;
        /* text-align: center;
        justify-content: center;
        gap: 40%; */
    }

    .windowVal {
        margin-top: 0%;
        margin-left: 9%;
        width: 15%;
        background: -webkit-linear-gradient(45deg, #48d0b8, #9889f9);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .curtainVal {
        margin-top: 0%;
        margin-left: 41%;
        width: 15%;
        background: -webkit-linear-gradient(45deg, #48d0b8, #9889f9);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }
    

</style> 