function getBotResponse(input) {
    //rock paper scissors
    if (input == "rock") {
        return "paper";
    } else if (input == "paper") {
        return "scissors";
    } else if (input == "scissors") {
        return "rock";
    }

    // Simple responses
    if (input == "hello") {
        return "Hello there!";
    } 
    else if (input == "goodbye") {
        return "Have a nice day..!";
    } 
    else if (input == "I need contact urgent") {
        return "Contact us:👉 phoenixairline@gmail.com";
    } 
    else if (input == "Travel alerts and updates") {
        return "We, at pheonix Airlines take every endeavour to provide the most up to date information with regard to your travel. However, given the rapid changes that take place across the world due to the prevailing COVID 19 pandemic, we recommend that you verify travel and entry requirements directly from the relevant authorities at your destination and transit points before your trip.";
    } 
    else if (input == "Covid related information ") {
        return "In light of Covid-19 pandemic, we've adjusted our policies and services to better protect our customers ";
    } 
    else if (input == "what are the services the airline provided") {
        return "please visit our official site";
    } 
    else {
        return "Try asking something else!";
    }
}
