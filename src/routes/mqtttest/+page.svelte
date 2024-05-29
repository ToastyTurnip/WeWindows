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
            alert("MQTT client not initialized.");
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
                alert("MQTT client not initialized.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "BACKWARDBACKWARD");
            window = "CLOSED";
        } else {
            if (!client){
                alert("MQTT client not initialized.");
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
                alert("MQTT client not initialized.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "CLOSES");
            curtain = "DOWN";
        } else {
            if (!client){
                alert("MQTT client not initialized.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "OPENS");
            curtain = "UP";
        }
    }

    function changeValueMode() {
        if (mode === "AUTO") {
            if (!client){
                alert("MQTT client not initialized.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "MANUAL");
            mode = "MANUAL";
        } else {
            if (!client){
                alert("MQTT client not initialized.");
            return;
            }
            client.publish("cs145/WeWindows/forla", "AUTO");
            mode = "AUTO";
        }
    }

    // let change_count = "MANUAL";

    // function onChangeIncre() {
    //     if (change_count === "AUTO") {
    //         change_count = "MANUAL";
    //     } else {
    //         change_count = "AUTO";
    //     }
    // }
</script>

<div class = "mqtt-container">
    <!-- <input type="text" bind:value={payload} /> -->
    <!-- <button on:click={mqttpub} style="color: red;">PUBLISH</button> -->
    <br>
    Last message was {lastmessage}.
    <br>

    <label for="windows">
        <button on:click={changeValueWin}>WINDOWS</button>
        <p>{window}</p>
    </label>

    <label for="curtains">
        <button on:click={changeValueCurt}>CURTAINS</button>
        <p>{curtain}</p>
    </label>

    <label for="mode">
        <button on:click={changeValueMode}>MODE</button>
        <p>{mode}</p>
    </label>
    
    <!-- <br>

    <select on:change={onChangeIncre}>
        <option class="opt" value="MANUAL">Manual Override</option>
        <option class="opt" value="AUTO">Automatic</option>
    </select>

    <p>{ change_count }</p> -->

</div>