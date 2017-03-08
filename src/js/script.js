function findItems(search, json_items) {
    return json_items.filter(Object => {
        const regex = new RegExp (search, 'gi'); // g = all; i = everywhere in the word
        return Object.mcId.match(regex) || Object.title.match(regex) || Object.category.match(regex); // return all object with the search
    })
}

function printResult() {
    const arrayResult = findItems(this.value, json_items);
    arrayResult.map(Object => {
        console.log(Object.mcId);
    });
    console.log(arrayResult);
}

const input = document.querySelector('#search'); // Element Eventlistened

input.addEventListener('change', printResult); // When mouse is over the input
input.addEventListener('keyup', printResult); // When a new key is writen











// Visibility of the header
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