
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kpi_view_tool/version"

Gem::Specification.new do |spec|
  spec.name        = "kpi_view_tool"
  spec.version     = KpiViewTool::VERSION
  spec.authors     = ["ajaykumarkpi"]
  spec.email       = ["ajay.kumar@kpitechservices.com"]

  spec.summary     = %q{various view specific methods for applications I used.}
  spec.description = %q{provides generated HTML data for Rails Applications.}
  spec.homepage    = "https://devcamp.com"
  spec.license     = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
