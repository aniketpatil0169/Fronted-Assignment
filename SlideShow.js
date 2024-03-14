var imagesPath = ['photo/Images1.jpg', 'photo/Images2.jpg', 'photo/Images3.jpg'];
var index = 0;
 

function setImage() {
    
    intervalId = setInterval(changeImage, 5000);
}

function changeImage() {
    document.getElementById('poster').src = imagesPath[index];
    index++;
    if (index == imagesPath.length) {
        index = 0;
    }
}

function stopSlideShow() {
    clearInterval(intervalId);
}
