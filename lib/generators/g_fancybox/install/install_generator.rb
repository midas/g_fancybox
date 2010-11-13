# coding: utf-8
module GFancybox
  class InstallGenerator < Rails::Generators::Base
    desc "Copies g_fancybox assets to public/stylesheets/ and public/javascripts/."

    def self.source_root
      File.join( File.dirname(__FILE__), '..', '..', 'templates' )
    end

    def self.banner
      "rails generate g_fancybox:install [options]"
    end

    def copy_files
      {
        "javascripts/guilded.fancybox.js"                    => "public/javascripts/guilded.fancybox.js",
        "javascripts/guilded.fancybox.min.js"                => "public/javascripts/guilded.fancybox.min.js",
        "javascripts/jquery/jquery-easing-1.3.pack.js"       => "public/javascripts/jquery/jquery-easing-1.3.pack.js",
        "javascripts/jquery/jquery-fancybox-1.3.1.js"        => "public/javascripts/jquery/jquery-fancybox-1.3.1.js",
        "javascripts/jquery/jquery-fancybox-1.3.1.pack.js"   => "public/javascripts/jquery/jquery-fancybox-1.3.1.pack.js",
        "javascripts/jquery/jquery-mousewheel-3.0.2.pack.js" => "public/javascripts/jquery/jquery-mousewheel-3.0.2.pack.js",
        "stylesheets/guilded/default.css"                    => "public/stylesheets/guilded/default.css",
        "stylesheets/guilded/default/blank.gif"              => "public/stylesheets/guilded/default/blank.gif",
        "stylesheets/guilded/default/fancy_close.png"        => "public/stylesheets/guilded/default/fancy_close.png",
        "stylesheets/guilded/default/fancy_loading.png"      => "public/stylesheets/guilded/default/fancy_loading.png",
        "stylesheets/guilded/default/fancy_nav_left.png"     => "public/stylesheets/guilded/default/fancy_nav_left.png",
        "stylesheets/guilded/default/fancy_nav_right.png"    => "public/stylesheets/guilded/default/fancy_nav_right.png",
        "stylesheets/guilded/default/fancy_shadow_e.png"     => "public/stylesheets/guilded/default/fancy_shadow_e.png",
        "stylesheets/guilded/default/fancy_shadow_n.png"     => "public/stylesheets/guilded/default/fancy_shadow_n.png",
        "stylesheets/guilded/default/fancy_shadow_ne.png"    => "public/stylesheets/guilded/default/fancy_shadow_ne.png",
        "stylesheets/guilded/default/fancy_shadow_nw.png"    => "public/stylesheets/guilded/default/fancy_shadow_nw.png",
        "stylesheets/guilded/default/fancy_shadow_s.png"     => "public/stylesheets/guilded/default/fancy_shadow_s.png",
        "stylesheets/guilded/default/fancy_shadow_se.png"    => "public/stylesheets/guilded/default/fancy_shadow_se.png",
        "stylesheets/guilded/default/fancy_shadow_sw.png"    => "public/stylesheets/guilded/default/fancy_shadow_sw.png",
        "stylesheets/guilded/default/fancy_shadow_w.png"     => "public/stylesheets/guilded/default/fancy_shadow_w.png",
        "stylesheets/guilded/default/fancy_title_left.png"   => "public/stylesheets/guilded/default/fancy_title_left.png",
        "stylesheets/guilded/default/fancy_title_main.png"   => "public/stylesheets/guilded/default/fancy_title_main.png",
        "stylesheets/guilded/default/fancy_title_over.png"   => "public/stylesheets/guilded/default/fancy_title_over.png",
        "stylesheets/guilded/default/fancy_title_right.png"  => "public/stylesheets/guilded/default/fancy_title_right.png",
        "stylesheets/guilded/default/fancybox-x.png"         => "public/stylesheets/guilded/default/fancybox-x.png",
        "stylesheets/guilded/default/fancybox-y.png"         => "public/stylesheets/guilded/default/fancybox-y.png",
        "stylesheets/guilded/default/fancybox.png"           => "public/stylesheets/guilded/default/fancybox.png"
      }.each do |src, dest|
        template src, dest
      end
      # empty_directory 'config/initializers'
    end
  end
end
