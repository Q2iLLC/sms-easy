# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms/easy/version'

Gem::Specification.new do |spec|
  spec.name          = "sms-easy"
  spec.version       = SMS::Easy::VERSION
  spec.authors       = ["Brendan G. Lim", "Raimond Garcia", "Preston Lee"]
  spec.email         = ["conmotto@gmail.com"]
  spec.description   = %q{SMSEasy allows you to send text messages to a mobile recipient for free.  It leverages ActionMailer for delivery of text messages through e-mail. Based on the Brendan Lim's sms-easy.}
  spec.summary   = %q{SMSEasy allows you to send text messages to a mobile recipient for free.}
  spec.homepage      = "https://github.com/preston/sms-easy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # spec.add_dependency 'minitest',   '~> 4.2'
  spec.add_dependency "actionmailer", '>= 4.0.0'
  # spec.add_dependency "activesupport", '>= 4.0.0'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

end

