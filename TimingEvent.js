function showCurrentTime() {
    var date = new Date();
    document.getElementById('currentTime').innerText = date;
}

function startClock() {
    intervalId = setInterval(showCurrentTime, 1000);
}

function stopClock() {
    clearInterval(intervalId);
}

function stopSession() {

    window.close();
}

function sessionAlert() {

    timeoutId = setTimeout(stopSession, 1000);
}

function sessionAlertStop() {
    clearTimeout(timeoutId);
} function showCurrentTime() {
    var date = new Date();
    document.getElementById('currentTime').innerText = date;
}

function startClock() {
    intervalId = setInterval(showCurrentTime, 5000);
}

function stopClock() {
    clearInterval(intervalId);
}

function stopSession() {
    window.close();
}

function sessionAlert() {
    timeoutId = setTimeout(stopSession, 5000);
}

function sessionAlertStop() {
    clearTimeout(timeoutId);
}
