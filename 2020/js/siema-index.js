function printSlideIndex() {
  document.querySelector('.js-index').innerHTML = this.currentSlide;
  
  this.innerElements.forEach((slide, i) => {
    const addOrRemove = i === this.currentSlide ? 'add' : 'remove';
    this.innerElements[i].classList[addOrRemove]('show');
  })
}

const mySiema = new Siema({
  onInit: printSlideIndex,
  onChange: printSlideIndex,
});

const prev = document.querySelector('.prev');
const next = document.querySelector('.next');


prev.addEventListener('click', () => mySiema.prev());
next.addEventListener('click', () => mySiema.next());