const siemaSlides = Array.prototype.slice.call(document.querySelectorAll('.siema div'));


function printSlideIndex() {
  document.querySelector('.js-index').innerHTML = this.currentSlide;
  siemaSlides.forEach((slide, i) => {
    i === this.currentSlide ? siemaSlides[i].classList.add('show') : siemaSlides[i].classList.remove('show');
  });
}

const mySiema = new Siema({
  onInit: printSlideIndex,
  onChange: printSlideIndex });


const prev = document.querySelector('.prev');
const next = document.querySelector('.next');


prev.addEventListener('click', () => mySiema.prev());
next.addEventListener('click', () => mySiema.next());