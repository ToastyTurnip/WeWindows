<script>
    let Title = "I-WINDOWS"
</script>



<body>
    <div class="headContainer">
        <h2 class="title">{Title}</h2>
    </div>

    <div class="bodyContainer">
        <div class="backDrop">
    
            <p class="settingText">SETTINGS</p>

            <div class="tempConfig">
                <p class="configText">TEMPERATURE CONFIGURATION</p>
                <p class="stateText">SET TEMPERATURE THRESHOLD</p>
            </div>

            <div class="tempSet">
                <input type="text" class="tempThresh">
                <select class="dropBox" name="mode" id="modeBox">
                    <option class="opt" value="OPEN">OPEN</option>
                    <option class="opt" value="CLOSED">CLOSED</option>
                </select>
            </div>

            <div class="rainConfig">
                <p class="configText">RAIN CONFIGURATION</p>

                <div class="stateContainer">
                    <p class="stateText" style= "margin-right: 20%;">WINDOW STATE:</p>
                    <p class="stateText">CURTAIN STATE:</p>
                </div>
            </div>

            <div class="rainSet">
                <select class="dropBox" style="margin-left: 5%; margin-right: 19%" name="mode" id="modeBox">
                    <option class="opt" value="OPEN">OPEN</option>
                    <option class="opt" value="CLOSED">CLOSED</option>
                </select>

                <select class="dropBox" name="mode" id="modeBox">
                    <option class="opt" value="OPEN">OPEN</option>
                    <option class="opt" value="CLOSED">CLOSED</option>
                </select>
            </div>

            <div class="lightConfig">
                <p class="configText">LIGHT CONFIGURATION</p>
                <select class="dropBox" style="margin-left: 5%;" name="mode" id="modeBox">
                    <option class="opt" value="OPEN">OPEN</option>
                    <option class="opt" value="CLOSED">CLOSED</option>
                </select>
            </div>

            <div class="buttonCont" align="right">
                <a href="/Home"><button class="close">X</button></a>
                <button class="saveButt">Save</button>
            </div>

        </div>
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

    .settingText{
        width: 100%;
        text-align: center;
        font-family: "Michroma";
        font-size: 2.0vw;
        color: #f1f1f1;
    }

    .tempConfig{
        width: 100%;
    }

    .configText{
        font-family: "Michroma";
        color: #f1f1f1;
        font-size: 1.2vw;
        margin-left: 5%;
    }
    
    .stateText{
        font-family: "Michroma";
        color: #f1f1f1;
        font-size: 1.0vw;
        margin-left: 5%;
    }

    .tempSet{
        display:flex;
    }

    .dropBox {
        width: 300px;
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

    .tempThresh{
        width: 8%;
        height: 32px;
        margin-left: 5%;
        margin-right: 3%;
        border-radius: 10px;
        background: linear-gradient(#333333, #333333) padding-box, linear-gradient(90deg, #48d0b8, #9889f9) border-box;
        border: 3px solid transparent;
        color: #f1f1f1;
        font-family: "Poppins";
        text-align: center;
        font-size: 25px;
    }

    .stateContainer{
        display:flex;
        margin-top: -1%;
    }


    .saveButt {
        margin-top: 2%;
        margin-right: 3%;
        border: none;
        background-color: #28586b;
        color: #F1F1F1;
        font-family: 'Poppins', monospace;
        text-align: center;
        font-size: 1.5vw;
        /* size: 30px; */
        width: 20%;
        height: 100%;
        border-radius: 14px;
        cursor: pointer;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        transition-duration: 0.4s;
    }

    .saveButt:hover {
        background-color: #0f4253;
        color: #FFFFFF;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        cursor: pointer;
        font-family: 'Poppins', monospace;
        text-align: center;
    }

    .close {
        margin-top: 2%;
        margin-right: 2%;
        border: none;
        background-color: #e33636;
        color: #F1F1F1;
        font-family: 'Poppins', monospace;
        text-align: center;
        font-size: 1.5vw;
        /* size: 30px; */
        width: 5%;
        height: 98%;
        border-radius: 14px;
        cursor: pointer;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        transition-duration: 0.4s;
    }

    .close:hover {
        background-color: #b72121;
    }

</style>