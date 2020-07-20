const allSlides = document.querySelectorAll('.folio-slide');
const transitionEvent = whichTransitionEvent();
let that;

const mySiema = new Siema({
  easing: 'ease',
  duration: 500,
  loop: true,
  draggable: true,

  onInit: printSlide,
  //   function () {
  //   $('.folio-slide').addClass('is-not-active');
  //   that = this;
  //   allSlides[that.currentSlide].classList.remove('is-not-active');
  //   //window.alert('');
  //   //setTimeout(changeSlide, 5000);
  // },

  onChange: printSlide

});

function printSlide() {
  //document.querySelector('.js-index').innerHTML = this.currentSlide;
  console.log('slide index is ' + this.currentSlide);
  // this.innerElements.forEach((slide, i) => {
  //   const addOrRemove = i === this.currentSlide ? 'add' : 'remove';
  //   this.innerElements[i].classList[addOrRemove]('show');


this.innerElements.forEach((slide, i) => {
  const addOrRemove = i === this.currentSlide ? 'add' : 'remove';
  this.innerElements[i].classList[addOrRemove]('show');  


      // this.innerElements[i].classList.add('allTheShit');
      
      // this.innerElements[i].style.webkitAnimationPlayState = "running";
      // $(this).on('webkitAnimationEnd', function() {
      //   this.innerElements.style.webkitAnimationPlayState = "paused";
      // });
        
    })
  };


  //  $('.folio-slide').removeClass('allTheShit');
  // $('.folio-slide').addClass('allTheShit');
    //const hideySlidey = i === this.currentSlide ? 'remove' : 'add';
    //this.innerElements[i].classList[hideySlidey]('hidey');

    // $('.folio-slide').first().addClass('hidey');
    // $('.folio-slide').last().addClass('hidey');
  //   const hideySlidey.forEach((slide, i) => {
  //   i !=== this.currentSlide ? hideySlidey[i].classList.add('hidey') : siemaSlides[i].classList.remove('show');
  // });

    // if (addOrRemove == 'remove'){
    //  this.innerElements[i].classList[add]('hidey');
    // }
    
  //})
function changeSlide() {
  // allSlides[this.currentSlide].classList.remove('show');
  // allSlides[that.currentSlide].classList.add('show');
//printSlide;
      // document.querySelector('.folio-slide').style.webkitAnimationPlayState = "running";
      //   $(this).on('webkitAnimationEnd', function() {
      //     this.innerElements.style.webkitAnimationPlayState = "paused";
      //   });

  transitionEvent && allSlides[that.currentSlide].addEventListener(transitionEvent, nextPage);
  transitionEvent && allSlides[that.currentSlide].addEventListener(transitionEvent, prevPage);
};

function nextPage() {
  printSlide;
  allSlides[that.currentSlide].removeEventListener(transitionEvent, nextPage);
  that.next();
};
function prevPage() {
  printSlide;
  allSlides[that.currentSlide].removeEventListener(transitionEvent, prevPage);
  that.prev();
};

function whichTransitionEvent() {
  var t;
  var el = document.createElement('fakeelement');
  var transitions = {
    'transition': 'transitionend',
    'OTransition': 'oTransitionEnd',
    'MozTransition': 'transitionend',
    'WebkitTransition': 'webkitTransitionEnd' };

  for (t in transitions) {
    if (el.style[t] !== undefined) {
      return transitions[t];
    }
  }
};
const prev = document.querySelector('.prev');
const next = document.querySelector('.next');
prev.addEventListener('click', () => mySiema.prev());
next.addEventListener('click', () => mySiema.next());