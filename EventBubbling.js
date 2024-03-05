//div1.addEventListener('click', divClick);
//span1.addEventListener('click', spanClick);
//btn1.addEventListener('click', btnClick);

// Enabling event capturing
div1.addEventListener('click', divClick, true);
span1.addEventListener('click', spanClick, true);
btn1.addEventListener('click', btnClick, true);

var text = document.getElementById('txt1');
text.value = '';

function divClick(event) {
    event.stopPropagation(); // It will prevent event bubbling
    text.value += 'div clicked \n';
}
function spanClick(event) {
    event.stopPropagation();
    text.value += 'span clicked \n';
}
function btnClick(event) {
    event.stopPropagation();
    text.value += 'button clicked \n';
}
