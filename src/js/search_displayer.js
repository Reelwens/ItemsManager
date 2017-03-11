var input = document.querySelector('#search'); // Element Eventlistened
var allBox = document.querySelectorAll('.blocCase');

function findItems(search, json_items) {
    return json_items.filter(Object => {
        var regex = new RegExp (search, 'gi'); // g = many results; i = caps or no caps
        return Object.mcId.match(regex) || Object.title.match(regex) || Object.category.match(regex); // return all object with the search
    });
}

function printResult() {
    var arrayResult = findItems(this.value, json_items); // Set arguments
    hideAll(); // Hide all box
    arrayResult.map(Object => {
        var div = document.getElementsByClassName('id_' + Object.id);
        for (var i = 0; i < div.length; i++) { // For all box with the correct search
            div[i].classList.remove('hidden'); // Display it
        }
    });
}

function hideAll() { // Applicate hidden class to all box
    for (var i = 0; i < allBox.length; i++) {
        allBox[i].classList.add('hidden');
    }
}

input.addEventListener('change', printResult); // When mouse is over the input
input.addEventListener('keyup', printResult); // When a new key is writen