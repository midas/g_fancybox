module GFancybox
  module ViewHelpers
    FANCYBOX_LIBS = %w(jquery/jquery-fancybox-1.3.1.pack.js)
    #  jquery/jquery-easing-1.3.pack.js
    #  jquery/jquery-mousewheel-3.0.2.pack.js
    #  jquery/jquery-fancybox-1.3.1.pack.js
    #)

    # Adds the JavaScript and CSS to attach to jQuery DOM elements of given selector.
    #
    # *Options*
    # +:selector+ - The jQuery selector used to select the elements to apply fancy box fuctionality to.
    # +:padding+ - Space between FancyBox wrapper and content - Default value 10.
    # +:margin+ - Space between viewport and FancyBox wrapper - Default value 20.
    # +:opacity+ - When true, transparency of content is changed for elastic transitions - Default value false.
    # +:modal+ - When true, 'overlayShow' is set to 'true' and 'hideOnOverlayClick', 'hideOnContentClick', 'enableEscapeButton', 'showCloseButton' are set to 'false'. - Default value false.
    # :+cyclic+ - When true, galleries will be cyclic, allowing you to keep pressing next/back. - Default value false.
    # +:scrolling+ - Set the overflow CSS property to create or hide scrollbars. Can be set to 'auto', 'yes', or 'no'. - Defaults value 'auto'.
    # +:width+ - Width for content types 'iframe' and 'swf'. Also set for inline content if 'autoDimensions' is set to 'false'. - Default value 560.
    # +:height+ - Height for content types 'iframe' and 'swf'. Also set for inline content if 'autoDimensions' is set to 'false'. - Default value 340.
    # +:autoScale+ - If true, FancyBox is scaled to fit in viewport - Default value true.
    # +:autoDimensions+ - For inline and ajax views, resizes the view to the element recieves. Make sure it has dimensions otherwise this will give unexpected results. - Default value true.
    # +:centerOnScroll+ - When true, FancyBox is centered while scrolling page. - Default value false.
    # +:ajax+ - Ajax options.  Note: 'error' and 'success' will be overwritten by FancyBox. - Default value {}.
    # +:swf+ - Flashvars to put on the swf object. - Default value {wmode: 'transparent'}.
    # +:hideOnOverlayClick+ - Toggle if clicking the overlay should close FancyBox. - Default value true.
    # +:hideOnContentClick+ - Toggle if clicking the content should close FancyBox. - Default value flase.
    # +:overlayShow+ - Toggle overlay. - Default value true.
    # +:overlayOpacity+ - Opacity of the overlay (from 0 to 1). - Default value 0.7.
    # +:overlayColor+ - Color of the overlay - Default value '#111'.
    # +:titleShow+ - Toggle title. - Default value true.
    # +:titlePosition+ - The position of title. Can be set to 'outside', 'inside' or 'over'. - Default value 'outside'.
    # +:titleFormat+ - Callback to customize title area. You can set any html - custom image counter or even custom navigation. - Dfault value null.
    # +:transitionIn+ - The show transition type. Can be set to 'elastic', 'fade' or 'none'. - Default value 'fade'.
    # +:transitionOut+ - The hide transition type. Can be set to 'elastic', 'fade' or 'none'. - Default value 'fade'.
    # +:speedIn+ - Speed of the fade and elastic show transition, in milliseconds. - Default value 300.
    # +:speedOut+ - Speed of the fade and elastic hide transition, in milliseconds. - Default value 300.
    # +:changeSpeed+ - Speed of resizing when changing gallery items, in milliseconds. - Default 300.
    # +:changeFade+ - Speed of the content fading while changing gallery items. - Default value 'fast'.
    # +:easingIn+ - Easing used for show elastic animations.  Default value 'swing'.
    # +:easingOut+ - Easing used for hide elastic animations.  Default value 'swing'.
    # +:showCloseButton+ - Toggle close button. - Default value true.
    # +:showNavArrows+ - Toggle navigation arrows. - Default value true.
    # +:enableEscapeButton+ - Toggle if pressing Esc button closes FancyBox. - Default value true
    #
    # *Advanced Options*
    # +:type+ - Forces content type. Can be set to 'image', 'ajax', 'iframe', 'swf' or 'inline'.
    # +:href+ - Forces content source.
    # +:Forces content source+ - Forces content source.
    # +:content+ - Forces content (can be any html data).
    # +:orig - Sets object whos position and dimensions will be used by 'elastic' transition.
    # +:index+ - Custom start index of manually created gallery.
    #
    def g_fancybox( options={} )
      options[:id] ||= 'fancy-box'
      options[:selector] ||= '.fancybox'
      options[:fancybox] ||= {}
      options[:fancybox][:overlayOpacity] ||= '0.7'
      options[:fancybox][:overlayColor] ||= '#111'
      Guilded::Guilder.instance.add( :fancybox, options, FANCYBOX_LIBS )
      ''
    end

    # Outputs a HTML anchor tag with the given opions as well as the JavaScript and CSS to attach to
    # jQuery DOM elements of given selector.  Utilizes Rails link_to helper method for outputting the
    # anchor tag.
    #
    # *Options*
    # +:html_options+ - The HTML options to pass to the link_to
    # Same as g_fancybox
    #
    def g_fancybox_link_to( name, path, options={} )
      html_options = options.delete( :html )
      html_class = html_options[:class]
      html_options[:class] = "#{html_class} fancybox"

      g_fancybox( options )

      link_to( name, path, html_options )
    end
  end
end