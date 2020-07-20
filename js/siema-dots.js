// extend a Siema class by two methods
// addDots - to create a markup for dots
// updateDots - to update classes on dots on change callback
class SiemaWithDots extends Siema {

  addDots() {
    // create a contnier for all dots
    // add a class 'dots' for styling reason
    this.dots = document.createElement('div');
    this.dots.classList.add('dots');

    // loop through slides to create a number of dots
    for (let i = 0; i < this.innerElements.length; i++) {if (window.CP.shouldStopExecution(0)) break;
      // create a dot
      const dot = document.createElement('button');

      // add a class to dot
      dot.classList.add('dots__item');

      // add an event handler to each of them
      dot.addEventListener('click', () => {
        this.goTo(i);
      });

      // append dot to a container for all of them
      this.dots.appendChild(dot);
    }

    // add the container full of dots after selector
    window.CP.exitedLoop(0);this.selector.parentNode.insertBefore(this.dots, this.selector.nextSibling);
  }

  updateDots() {
    // loop through all dots
    for (let i = 0; i < this.dots.querySelectorAll('button').length; i++) {if (window.CP.shouldStopExecution(1)) break;
      // if current dot matches currentSlide prop, add a class to it, remove otherwise
      const addOrRemove = this.currentSlide === i ? 'add' : 'remove';
      this.dots.querySelectorAll('button')[i].classList[addOrRemove]('dots__item--active');
    }window.CP.exitedLoop(1);
  }}


// instantiate new extended Siema
const mySiemaWithDots = new SiemaWithDots({
  // on init trigger method created above
  onInit: function () {
    this.addDots();
    this.updateDots();
  },

  // on change trigger method created above
  onChange: function () {
    this.updateDots();
  } });