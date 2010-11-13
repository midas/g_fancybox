require 'spec_helper'
require 'generators/g_fancybox/install/install_generator'

describe 'GFancybox::InstallGenerator' do
  before :each do
    @destination = File.join 'tmp', 'test_app'
    @source_root = GFancybox::InstallGenerator.source_root
    GFancybox::InstallGenerator.start '', :destination_root => @destination
  end

  after :each do
    FileUtils.rm_rf @destination
  end

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
    it "should copy '#{src}' to '#{dest}'" do
      File.exists?( File.join( @destination, dest ) ).should be_true
    end

    it "should agree that the contents of '#{src}' are identical to '#{dest}'" do
      File.read( File.join( @source_root, src ) ).should eql File.read( File.join( @destination, dest ) )
    end
  end
end