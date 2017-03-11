// Declare variables
var header = document.querySelector('header'),
    toggleButton = document.querySelector('.toggleButton');


toggleButton.addEventListener('click', function () { // On click, toggle bar display
    if (header.classList.contains('toggle')) {
        header.classList.remove('toggle');
        toggleButton.classList.remove('toggle');
    }
    else {
        header.classList.add('toggle');
        toggleButton.classList.add('toggle');
    }
});