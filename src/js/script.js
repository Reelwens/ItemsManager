/*var json_items = <?= $json_items; ?>;

console.log(json_items);*/

var header = document.querySelector('header'),
    toggleButton = document.querySelector('.toggleButton'),
    main = document.querySelector('.main');


toggleButton.addEventListener('click', function () {
    if (header.classList.contains('toggle')) {
        header.classList.remove('toggle');
        main.classList.remove('toggle');
        toggleButton.classList.remove('toggle');
    }
    else {
        header.classList.add('toggle');
        main.classList.add('toggle');
        toggleButton.classList.add('toggle');
    }
});