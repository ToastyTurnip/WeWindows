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
        client.publish("cs145/WeWindows/forsensor", payload);
        payload = '';
        // alert(`Published: ${payload}`);
    }

</script>

<div class = "mqtt-container">
    <input type="text" bind:value={payload} />
    <button on:click={mqttpub} style="color: red;">PUBLISH</button>
    <br />
    Last message was {lastmessage}.
</div>