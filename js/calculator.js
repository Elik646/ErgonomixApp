const display = document.getElementById("display");
let isError = false;
const maxChars = 9;

function appendToDisplay(input){
    if (!isError && display.value.length < maxChars) {
        display.value += input
    }
}

function clearDisplay(){
    display.value = "";
    isError = false;
}

function calculate(){
    let result = "";
    try {
        if (!isError) {
            result = String(eval(display.value));
            if (result.length > maxChars) {
                result = result.substring(0, maxChars);
            }
            display.value = result;
        }
    }
    catch(error){
        display.value = "Error";
        isError = true;
    }
}