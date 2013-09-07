Gem::Specification.new do |spec|

  spec.name    = "know-your-http-well"
  spec.version = "0.0.0"
  spec.date    = "2013-09-07"

  spec.summary     = "HTTP reference library"
  spec.description = "HTTP headers, media-types, methods, relations and status codes, all summarized and linking to their specification.",
  spec.license     = "Unlicense"

  spec.add_development_dependency("rspec")

  spec.files        = `git ls-files`.split("\n")
  spec.require_path = "ruby"
  spec.homepage     = "https://github.com/andreineculau/know-your-http-well"

end

