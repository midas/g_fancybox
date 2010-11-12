require 'g_fancybox/view_helpers'

module GFancybox
  VERSION = File.read( "#{File.dirname __FILE__}/../VERSION" ).chomp
end

if defined? ActionView::Base
  ActionView::Base.send( :include, GFancybox::ViewHelpers ) unless ActionView::Base.include?( GFancybox::ViewHelpers )
end