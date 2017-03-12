var mute = true,
    musicButton = document.querySelector('.musicButton'),
    sound = document.querySelector('#sound');

// Default
sound.volume = 0;

musicButton.addEventListener('click', function () {
    if (mute === false) {
        sound.volume = 0;
        musicButton.innerHTML = '<img src="img/record_cat_off.png" alt="music off" width="64" />';
        mute = true;
    }

    else {
        sound.volume = 0.08;
        musicButton.innerHTML = '<img src="img/record_cat.png" alt="music on" width="64" />';
        mute = false;
    }
});