<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Bot</title>

    <link rel="stylesheet" href="static/css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
	<!-- CHAT BAR BLOCK -->
    <div class="chat-bar-collapsible">
        <button id="chat-button" type="button" class="collapsible">Chat with us!
            <i id="chat-icon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
        </button>
        <div class="content">
            <div class="full-chat-block">
            	<!-- MESSAGE CONTAINER -->
                <div class="outer-container">
                    <div class="chat-container">
                    	<!-- MESSAGES -->
                        <div id="chatbox">
                            <h5 id="chat-timestamp"></h5>
                            <p id="botStarterMessage" class="botText"><span>Loading...</span></p>
                        </div>
                        <!-- INPUT DATA -->
                        <div class="chat-bar-input-block">
                            <div id="userInput">
                                <input id="textInput" class="input-box" type="text" name="msg"
                                    placeholder="Tap 'Enter' to send a message">
                                <p></p>
                            </div>
                            <div class="chat-bar-icons">
                                <i id="chat-icon" style="color: #333;" class="fa fa-fw fa-question-circle"
                                    onclick="helpButton()"></i>
                                <i id="chat-icon" style="color: #333;" class="fa fa-fw fa-send"
                                    onclick="sendButton()"></i>
                            </div>
                        </div>
                        <div id="chat-bar-bottom">
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		function getBotResponse(input) {

		    if (input == "hello" || "hi") {
		        return "Hello there!";
		    } else if (input == "goodbye") {
		        return "Talk to you later!";
		    } else {
		        return "Try asking something else!";
		    }
		}
	</script>
	<script>
			//Collapsible
			var coll = document.getElementsByClassName("collapsible");
			
			for (let i = 0; i < coll.length; i++) {
			    coll[i].addEventListener("click", function () {
			        this.classList.toggle("active");
			        var content = this.nextElementSibling;
			        if (content.style.maxHeight) {
			            content.style.maxHeight = null;
			        } else {
			            content.style.maxHeight = content.scrollHeight + "px";
			        }
			
			    });
			}
			
			function getTime() {
			    let today = new Date();
			    hours = today.getHours();
			    minutes = today.getMinutes();
			    if (hours < 10) {
			        hours = "0" + hours;
			    }
			    if (minutes < 10) {
			        minutes = "0" + minutes;
			    }
			    let time = hours + ":" + minutes;
			    return time;
			}
			
			// Gets the first message
			// 😀
			function firstBotMessage() {
			    let firstMessage = "Hello I am the Virtual Assistant of Phoenix Airlines. How can I help you? 😂";
			    let help1 = "www.google.com";
			    document.getElementById("botStarterMessage").innerHTML = 
			    	'<p class="botText"><span>' + firstMessage + '</span></p> <p class="botText"><span><a style="text-decoration: none;" href="#">😷 Covid-19 Information</a><span></p> <p class="botText"><span><a style="text-decoration: none;" href="#">Insert more stuff here</a><span></p>';
			
			    let time = getTime();
			
			    $("#chat-timestamp").append(time);
			    document.getElementById("userInput").scrollIntoView(false);
			}
			
			firstBotMessage();
			
			// Retrieves the response
			function getHardResponse(userText) {
			    let botResponse = getBotResponse(userText);
			    let botHtml = '<p class="botText"><span>' + botResponse + '</span></p>';
			    $("#chatbox").append(botHtml);
			
			    document.getElementById("chat-bar-bottom").scrollIntoView(true);
			}
			
			//Gets the text text from the input box and processes it
			function getResponse() {
			    let userText = $("#textInput").val();
			
			    if (userText == "") {
			        userText = "Here are the options";
			    }
			
			    let userHtml = '<p class="userText"><span>' + userText + '</span></p>';
			
			    $("#textInput").val("");
			    $("#chatbox").append(userHtml);
			    document.getElementById("chat-bar-bottom").scrollIntoView(true);
			
			    setTimeout(() => {
			        getHardResponse(userText);
			    }, 1000)
			
			}
			
			// Handles sending text via button clicks
			function buttonSendText(sampleText) {
			    let userHtml = '<p class="userText"><span>' + sampleText + '</span></p>';
			
			    $("#textInput").val("");
			    $("#chatbox").append(userHtml);
			    document.getElementById("chat-bar-bottom").scrollIntoView(true);
			
			    //Uncomment this if you want the bot to respond to this buttonSendText event
			    // setTimeout(() => {
			    //     getHardResponse(sampleText);
			    // }, 1000)
			}
			
			function sendButton() {
			    getResponse();
			}
			
			function heartButton() {
			    buttonSendText("Heart clicked!")
			}
			
			// Press enter to send a message
			$("#textInput").keypress(function (e) {
			    if (e.which == 13) {
			        getResponse();
			    }
			});
		</script>
	</body>
</html>
