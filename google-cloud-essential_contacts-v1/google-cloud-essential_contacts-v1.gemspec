# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/essential_contacts/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-essential_contacts-v1"
  gem.version       = Google::Cloud::EssentialContacts::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Many Google Cloud services, such as Cloud Billing, send out notifications to share important information with Google Cloud users. By default, these notifications are sent to members with certain Identity and Access Management (IAM) roles. With Essential Contacts, you can customize who receives notifications by providing your own list of contacts. Note that google-cloud-essential_contacts-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-essential_contacts instead. See the readme for more details."
  gem.summary       = "API Client library for the Essential Contacts V1 API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
