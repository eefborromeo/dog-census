const sortEl = document.querySelector('select')
const allDogs = document.querySelectorAll('.card')

sortEl.addEventListener('change', function() {
    if (sortEl.value === "Select a breed") {
        allDogs.forEach(dog => dog.classList.remove('none'))
    } else {
        allDogs.forEach(dog => dog.classList.remove('none'))
        const dogs = [...allDogs].filter(dog => dog.lastElementChild.innerText !== sortEl.value);
        dogs.forEach(dog => dog.classList.add('none'))
    }
})
