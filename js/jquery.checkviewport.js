/* ====================================================
 * jQuery is in viewport.
 *
 * https://github.com/frontid/jQueryIsInViewport
 * Marcelo Iván Tosco (capynet)
 * Inspired on https://stackoverflow.com/a/40658647/1413049
 * ==================================================== */
!function ($) {
  'use strict';

  const IsInViewport = function (el, cb, offset) {
    this.$el = $(el);
    this.cb = cb;
    this.offset = offset;
    this.previousIsInState = false;

    // Make the first check
    this.check();

    // Start watching.
    this.watch();

    return this;
  };

  IsInViewport.prototype = {

    /**
     * Checks if the element is in.
     *
     * @returns {boolean}
     */
    isIn: function () {
      const _self = this;
      const $win = $(window);
      const elementTop = _self.$el.offset().top - _self.offset;
      const elementBottom = elementTop + _self.$el.outerHeight();
      const viewportTop = $win.scrollTop();
      const viewportBottom = viewportTop + $win.height();
      return elementBottom > viewportTop && elementTop < viewportBottom;
    },

    /**
     * Launch a callback indicating when the element is in and when is out.
     */
    watch: function () {
      const self = this;
      $(window).on('resize scroll', self.check.bind(self));
    },

    /**
     * Checks if the element is on in the viewport.
     */
    check: function () {
      const self = this;

      if (self.isIn() && self.previousIsInState === false) {
        self.cb.call(self.$el, 'itsthere');
        self.previousIsInState = true;
      }

      if (self.previousIsInState === true && !self.isIn()) {
        self.cb.call(self.$el, 'itsgone');
        self.previousIsInState = false;
      }
    }
  };

  // jQuery plugin.
  //-----------------------------------------------------------
  $.fn.isInViewport = function (cb, offset) {
    offset || (offset = 0);
    return this.each(function () {
      const $element = $(this);
      const data = $element.data('isInViewport');

      if (!data) {
        $element.data('isInViewport', (new IsInViewport(this, cb, offset)));
      }
    })
  }

}(window.jQuery);