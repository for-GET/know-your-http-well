
require "fakefs/safe"
require "pathname"

bin_file = Pathname.new(__FILE__).realpath
$:.unshift File.expand_path("../../ruby", bin_file)

require "http"

