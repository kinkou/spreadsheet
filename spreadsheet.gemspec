# require File.join(File.dirname(__FILE__), 'lib', 'spreadsheet')
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spreadsheet'

spec = Gem::Specification.new do |spec|
   spec.name        = "spreadsheet"
   spec.version     =  Spreadsheet::VERSION
   spec.homepage    = "https://github.com/zdavatz/spreadsheet"
   spec.summary     = "The Spreadsheet Library is designed to read and write Spreadsheet Documents"
   spec.description = "As of version 0.6.0, only Microsoft Excel compatible spreadsheets are supported"
   spec.author      = "Masaomi Hatakeyama, Zeno R.R. Davatz"
   spec.email       = "mhatakeyama@ywesee.com, zdavatz@ywesee.com"
   spec.platform    = Gem::Platform::RUBY
   spec.license     = "GPL-3.0"
   spec.files       = Dir.glob("{bin,lib,test}/**/*") + Dir.glob("*.txt")
   spec.test_file   = "test/suite.rb"
   spec.executables << "xlsopcodes"

   spec.add_dependency "ruby-ole"
   spec.add_development_dependency "hoe"
   spec.add_dependency 'rubyzip', '>= 1.0.0'
   spec.add_dependency 'nokogiri', '>= 1.4.4'

   spec.homepage    = 'https://github.com/zdavatz/spreadsheet/'
end

