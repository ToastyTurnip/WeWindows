<script>
    let Title = "I-WINDOWS";
    let userName = '';
    let password = '';

</script>

<body>
    <div class="siteWrapper">
        <div class="headContainer">
            <h2 class="title">{Title}</h2>
        </div>
    
        <!-- <br><br><br> -->
    
        <div class="bodyContainer">
            <div class="backDrop">
                <div class="dropHead">
                    <p class="signHead"> Welcome Back </p>
                    <p class=subText> Enter your credentials to continue.</p>
                </div>
    
                <div class="userCred">
                    <label class="txtLabel" for="userName">Username: </label>
                    <input class="inpBox" type="userName" id="userName" placeholder="Enter your username here" bind:value={userName} />
                </div>
    
                <div class="passCred">
                    <label class="txtLabel" for="userName">Password: </label>
                    <input class="inpBox" type="password" id="password" placeholder="Enter your password here" bind:value={password} />
                </div>
    
                <div class="submitCont">
                    <a href="/Home"><button class="submitBtn" type="button">Log In</button></a>
                </div>
    
                <div class="regCont">
                    <span class="regText1">Don't have an account?</span>
                    <span class="regText2">Register here</span>
                </div>
    
                <hr class="end">
            </div>
    
        </div>
    </div>

</body>

<svelte:head>
    <style>
        html, body{
            max-width: 100%;
            max-height: 100%;
            background-color: #212429;
            
        }

        @media only screen and (max-width: 600px){
        html {
            overflow:hidden;
            transform:scale(1.3);
        }   
    }

    </style>
</svelte:head>

<style>

    .bodyContainer {
        margin: auto;
        height: 632px;
        max-width: 100%;
    }

    @media only screen and (max-width: 600px){
        .bodyContainer{height: 160px;}
        .headContainer{margin-top: 190px;}
    }


    .backDrop {
        position: relative;
        display: block;
        justify-content: center;
        border-radius: 60px;
        width: 60%;
        height: 98.10%;
        align-items: center;
        margin: auto;
        background: linear-gradient(white, white) padding-box, linear-gradient(90deg, #48d0b8, #9889f9) border-box;
        border: 6px solid transparent;
    }

    .signHead {
        color: #1e1e1e;
        font-size: 2.915vw;
        position: relative;
        text-align: center;
        text-shadow: 0px 3px 2.5px #333333;
        margin: 12px 0 0 2px;
        font-family: 'Poppins', monospace;
    }

    .subText {
        font-family: 'Poppins';
        text-align: center;
        padding: 0 0 0 0;
        margin: -0.7% 0 0 0;
        font-size: 0.885vw;
    }

    .userCred {
        width: 100%;
        height: 6.3%;
        margin-top: 8%;
        margin-bottom: 2%;
        text-align: center;
    }

    .txtLabel {
        color: #1e1e1e;
        font-family: 'Poppins';
        font-size: 1.35vw;
        position: relative;
        margin: 3px 20px 3px 3px;
        top: 4px;
    }

    .inpBox {
        width: 47.2%;
        height: 64%;
        border-radius: 5px;
        font-family: 'Poppins';
        font-weight: bold;
        font-size: 0.78vw;
        padding-left: 10px;
        color: #1e1e1e;
    }

    .inpBox::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
        font-family: 'Poppins';
        font-weight: lighter;
        opacity: 1; /* Firefox */
    }

    .passCred {
        width: 100%;
        height: 6.3%;
        text-align: center;
        margin-left: 0.36%;
        margin-bottom: 10%;
    }

    .submitCont {
        width: 100%;
        height: 9.67%;
        text-align: center;
        margin-bottom: 1.58%;
    }

    .submitBtn {
        border: none;
        background-color: #28586b;
        color: #F1F1F1;
        font-family: 'Poppins', monospace;
        text-align: center;
        font-size: 1.88vw;
        /* size: 30px; */
        width: 17.81%;
        height: 100%;
        border-radius: 14px;
        cursor: pointer;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        transition-duration: 0.4s;
    }

    .submitBtn:hover {
        background-color: #0f4253;
        color: #FFFFFF;
        text-shadow: 3px 3px 5px #333333;
        box-shadow: 5px 6px 4px 0 rgba(0, 0, 0, 0.3);
        cursor: pointer;
        font-family: 'Poppins', monospace;
        text-align: center;
    }

    .regCont {
        font-family: 'Poppins';
        text-align: center;
        width: 100%;
        height: 4.03%;
        margin-bottom: 6.2%;
    }

    .regText1{
        font-family: 'Poppins';
        font-size: 0.84vw;
    }

    .regText2 {
        font-weight: bold;
        color: #0f4253;
        font-size: 0.84vw;
        text-decoration: underline;
    }

    .end {
        width: 66.78%;
        border-color: #1e1e1e;
        border-width: 1px;
    }

</style>