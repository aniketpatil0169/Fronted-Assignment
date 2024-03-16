function btnClick() {
    var input = document.getElementById('input');
    var output = document.getElementById('output');

   // output.value = input.value;
   // split word from input sentence

    var words = input.split(' ');
    for (var i = 0; i < words.length; i++) {
        output.value += `${words[i]}\n`;
    }
}
function clearValues() {
    var input = document.getElementById('input');
    var output = document.getElementById('output');
    input.value = '';
    output.value = '';
}
