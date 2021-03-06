# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{g_fancybox}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["C. Jason Harrelson (midas)"]
  s.date = %q{2010-11-13}
  s.description = %q{A Guilded component for the Fancybox JavaScript library that makes Rails development with Fancybox a breeze.}
  s.email = %q{jason@lookforwardenterprises.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "g_fancybox.gemspec",
     "lib/g_fancybox.rb",
     "lib/g_fancybox/view_helpers.rb",
     "lib/generators/g_fancybox/install/install_generator.rb",
     "lib/generators/templates/javascripts/guilded.fancybox.js",
     "lib/generators/templates/javascripts/guilded.fancybox.min.js",
     "lib/generators/templates/javascripts/jquery/jquery-easing-1.3.pack.js",
     "lib/generators/templates/javascripts/jquery/jquery-fancybox-1.3.1.js",
     "lib/generators/templates/javascripts/jquery/jquery-fancybox-1.3.1.pack.js",
     "lib/generators/templates/javascripts/jquery/jquery-mousewheel-3.0.2.pack.js",
     "lib/generators/templates/stylesheets/guilded/fancybox/default.css",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/blank.gif",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_close.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_loading.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_nav_left.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_nav_right.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_e.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_n.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_ne.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_nw.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_s.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_se.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_sw.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_shadow_w.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_title_left.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_title_main.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_title_over.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancy_title_right.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancybox-x.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancybox-y.png",
     "lib/generators/templates/stylesheets/guilded/fancybox/default/fancybox.png",
     "spec/g_fancybox_spec.rb",
     "spec/generators/g_fancybox/install/install_generator_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/midas/g_fancybox}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Guilded component for the Fancybox JavaScript library.}
  s.test_files = [
    "spec/g_fancybox_spec.rb",
     "spec/generators/g_fancybox/install/install_generator_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2.3"])
      s.add_runtime_dependency(%q<guilded>, [">= 1.0"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 2.3"])
      s.add_dependency(%q<guilded>, [">= 1.0"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2.3"])
    s.add_dependency(%q<guilded>, [">= 1.0"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end

