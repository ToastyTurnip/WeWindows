<script>

    import mqtt from "mqtt";
	import { onMount } from "svelte";

    let client;
    let lastmessage = '';
    onMount(() => {
    // Initialize MQTT client when component is mounted
        client = mqtt.connect("ws://test.mosquitto.org:8080");
        console.log(client);
        client.subscribe("cs145/WeWindows/formain");

        client.on('message', (topic, message) => {
        // Handle incoming message here
        console.log(`Received message on topic ${topic}: ${message.toString()}`);
        // You can update your Svelte component's state or perform any other actions here
        lastmessage = message;
});
    });
    
    let window = "OPEN";
    let curtain = "UP";
    let mode = "AUTO"


    let payload = '';
    function mqttpub() {
        if (!client) {
            alert("MQTT client not initialized1.");
        return;
        }
        client.publish("cs145/WeWindows/forla", payload);
        payload = '';
        // alert(`Published: ${payload}`);
    }

    function changeValueWin() {
        mode = "MANUAL";
        if (window === "OPEN") {
            if (!client){
                alert("MQTT client not initialized2.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "BACKWARDBACKWARD");
            window = "CLOSED";
        } else {
            if (!client){
                alert("MQTT client not initialized2.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "FORWARDFORWARD");
            window = "OPEN";
        }
    }

    function changeValueCurt() {
        mode = "MANUAL";
        if (curtain === "UP") {
            if (!client){
                alert("MQTT client not initialized3.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "CLOSES");
            curtain = "DOWN";
        } else {
            if (!client){
                alert("MQTT client not initialized3.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "OPENS");
            curtain = "UP";
        }
    }

    function changeValueMode() {
        if (mode === "AUTO") {
            if (!client){
                alert("MQTT client not initialized4.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "MANUAL");
            mode = "MANUAL";
        } else {
            if (!client){
                alert("MQTT client not initialized4.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "AUTO");
            mode = "AUTO";
        }
    }
    
    let Title = "I-WINDOWS";

    // function toggleWindow() {
    //     if (window === "CLOSE") {
    //         window = "OPEN";
    //         windowState = "CLOSED";
    //     } else {
    //         window = "CLOSE";
    //         windowState = "OPEN";
    //     }
    // }

    // function toggleCurtain() {
    //     if (curtain === "PULL DOWN") {
    //         curtain = "PULL UP"
    //         curtainState = "CLOSED"
    //     } else {
    //         curtain = "PULL DOWN"
    //         curtainState = "OPEN"
    //     }
    // }

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

                <select class="dropBox" name="mode" id="modeBox" on:change={changeValueMode}>
                    <option class="opt" value="AUTO">Automatic</option>
                    <option class="opt" value="MANUAL">Manual Override</option>
                </select>
            </div>

            <div class="mainLabel">
                <p class="windowHead">WINDOW CONTROL</p>
                <p class="curtainHead">CURTAIN CONTROL</p>
            </div>

            <div>
                <button class="windowCtrl" on:click={changeValueWin()}>OPEN/CLOSE</button>
                <button class="curtainCtrl" on:click={changeValueCurt()}>UP/DOWN</button>
            </div>

            
            <div class="stateLabel">
                <p class="windowLabel">WINDOW STATE</p>
                <p class="curtainLabel">CURTAIN STATE</p>
            </div>

            <div class="state">
                <p class="windowVal">{window}</p>
                <p class="curtainVal">{curtain}</p>
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

    button {
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

    button:hover {
        background-color: #0f4253;
        color: #FFFFFF;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        cursor: pointer;
        font-family: 'Poppins', monospace;
        text-align: center;
    }

    .windowCtrl {
        margin-left: 8%;
        margin-right: 36%;
    }
    

</style> 