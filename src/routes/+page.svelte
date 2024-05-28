
<script>
    import Frame from '$lib/assets/frame.png'
    import left from '$lib/assets/left.png'
    import right from '$lib/assets/right.png'


    let Title = "I-WINDOWS";
    let firstLoad = true;
    let isHover = false;

    // const Hover = () => {
    //     isHover=true;
    //     firstLoad=false;
    //     console.log("yes")
    // }

    // const notHover = () => {
    //     isHover=false;
    // }
</script>

<body>
    <div class="headContainer">
        <h2 class="title">{Title}</h2>
    </div>
    <div class="mainContainer">
        <div class="frame">
            <img src ={Frame} alt="window frame" class="windowFrame">
        </div>
        <div class="left">
            <img src={left} alt="left window" class="leftWindow">
        </div>

        <div class="right">
            <a href="/LogIn"><button class="continueBtn">CONTINUE</button></a>
            <img src={right} alt="right window" class="rightWindow">
        </div>
        
    </div>

    <!-- <img src={right} alt="test"> -->
    <!-- on:mouseover={Hover} on:mouseleave={notHover}  -->
</body>


<svelte:head>
    <style>
        html, body{
            max-width: 100%;
            max-height: 100%;
            background-color: #212429;
        }
    </style>
</svelte:head>


<style>
 
    .mainContainer{
        width: 1100px;
        height: 700px;
        position: relative;
        margin: auto;
    }

    .frame{
        /* width: 1100px;
        height: 700px; */
        width: 100%;
        height: 100%;
        position: absolute;
        align-self: center;
    }

    .windowFrame{
        width: 100%;
        height: 100%;
        z-index: 7;
    }

    .left{
        z-index: 8;
        position: absolute;
        align-self: center;
        width: 100%;
        height: 100%;
    }

    .leftWindow{
        height: 88.71%;
        width: 45.49%;
        margin-left: 5.2%;
        margin-top: 3.7%;
    }

    .right{
        z-index: 9;
        position: absolute;
        align-self: center;
        width: 100%;
        height: 100%;
    }

    .rightWindow{
        height: 88.71%;
        margin-top: 3.7%;
        width: 48.2%;
        margin-left: 46.4%;
        position:absolute;
    }

    .right:hover .rightWindow{
        animation: open1 10s 1;
        animation-fill-mode: forwards;
    }

    .continueBtn{
        margin-top: 25%;
        margin-left: 62%;
        position: absolute;
        border: none;
        background-color: #28586b;
        color: #F1F1F1;
        font-family: 'Poppins', monospace;
        text-align: center;
        font-size: 1.88vw;
        /* size: 30px; */
        width: 19.81%;
        height: 10%;
        border-radius: 14px;
        cursor: pointer;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        transition-duration: 0.4s;
    }

    .continueBtn:hover {
        background-color: #0f4253;
        color: #FFFFFF;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        cursor: pointer;
        font-family: 'Poppins', monospace;
        text-align: center;
        /* font-size: 36px;
        size: 30px;
        width: 200px;
        height: 60px; */

    }

    @keyframes open1{
        0% {left: 0px;}
        50% {left: -410px;}
        100% {left: -410px;}
    }


</style>


<!-- <body class="IndexBody">
    <h1>Welcome to SvelteKit</h1>
    <p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>
    <button class = LogInButton><a href = "/LogIn">Go to Sign In</a></button>
</body>
     -->