var header = document.querySelector('header'),
    toggleButton = document.querySelector('.toggleButton');


toggleButton.addEventListener('click', function () {
    if (header.classList.contains('toggle')) {
        header.classList.remove('toggle');
        toggleButton.classList.remove('toggle');
    }
    else {
        header.classList.add('toggle');
        toggleButton.classList.add('toggle');
    }
});