# Release History

### 1.4.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.3.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.3.0 (2025-04-21)

#### Features

* A new method_signature `parent,submission` is added to method `SubmitUri` in service `WebRiskService` ([#29444](https://github.com/googleapis/google-cloud-ruby/issues/29444)) 

### 1.2.0 (2025-01-29)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.1.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.0.2 (2024-12-05)

#### Documentation

* Documentation improvements related to long-running operations ([#27633](https://github.com/googleapis/google-cloud-ruby/issues/27633)) 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.0.0 (2024-07-08)

#### Features

* Bump version to 1.0.0 

### 0.12.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24880](https://github.com/googleapis/google-cloud-ruby/issues/24880)) 

### 0.11.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.11.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.11.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23789](https://github.com/googleapis/google-cloud-ruby/issues/23789)) 

### 0.10.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22925](https://github.com/googleapis/google-cloud-ruby/issues/22925)) 

### 0.9.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.9.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21680](https://github.com/googleapis/google-cloud-ruby/issues/21680)) 

### 0.8.0 (2023-05-19)

#### Features

* support operations and submitURI 

### 0.7.0 (2023-03-08)

#### Features

* Support REST transport ([#20630](https://github.com/googleapis/google-cloud-ruby/issues/20630)) 

### 0.6.0 (2022-10-19)

#### Features

* Add SOCIAL_ENGINEERING_EXTENDED_COVERAGE threat type ([#19287](https://github.com/googleapis/google-cloud-ruby/issues/19287)) 

### 0.5.0 (2022-07-08)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.4.5 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.4.4 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.4.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.4.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.4.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.4.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.3.0 / 2021-02-02

#### Features

* Use self-signed JWT credentials when possible

### 0.2.6 / 2021-01-19

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.2.5 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credential values

### 0.2.4 / 2020-08-06

#### Bug Fixes

* Fix retry logic by checking the correct numeric error codes

### 0.2.3 / 2020-06-18

#### Documentation

* Add documentation and API enablement links to the readme

### 0.2.2 / 2020-06-05

#### Bug Fixes

* Fix a Ruby warning that appeared in some cases when accessing rpc-scoped configs

### 0.2.1 / 2020-05-26

#### Bug Fixes

* Removed unused google/cloud/common_resources_pb file

### 0.2.0 / 2020-05-20

#### Features

* The quota_project can be set via configuration

### 0.1.1 / 2020-05-05

#### Documentation

* Clarify that timeouts are in seconds.

### 0.1.0 / 2020-04-23

Initial release.
