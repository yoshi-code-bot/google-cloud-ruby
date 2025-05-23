# Changelog

### 0.12.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.11.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.11.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.10.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.9.2 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27010](https://github.com/googleapis/google-cloud-ruby/issues/27010)) 

### 0.9.1 (2024-08-08)

#### Documentation

* Formatting updates to README.md ([#26682](https://github.com/googleapis/google-cloud-ruby/issues/26682)) 

### 0.9.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24873](https://github.com/googleapis/google-cloud-ruby/issues/24873)) 

### 0.8.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.8.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.8.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23782](https://github.com/googleapis/google-cloud-ruby/issues/23782)) 

### 0.7.0 (2023-10-16)

#### Features

* Support for vehicle route modifiers ([#23429](https://github.com/googleapis/google-cloud-ruby/issues/23429)) 

### 0.6.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22922](https://github.com/googleapis/google-cloud-ruby/issues/22922)) 

### 0.5.0 (2023-09-07)

#### Features

* Support field "cost_per_kilometer_below_soft_max" in DistanceLimit class ([#22902](https://github.com/googleapis/google-cloud-ruby/issues/22902)) 
* Support WALKING option in TravelMode enum ([#22902](https://github.com/googleapis/google-cloud-ruby/issues/22902)) 

### 0.4.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.4.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21676](https://github.com/googleapis/google-cloud-ruby/issues/21676)) 

### 0.3.0 (2023-03-08)

#### Features

* Support REST transport ([#20627](https://github.com/googleapis/google-cloud-ruby/issues/20627)) 

### 0.2.1 (2023-02-13)

#### Documentation

* Improve documentation for deprecated fields ([#20115](https://github.com/googleapis/google-cloud-ruby/issues/20115)) 

### 0.2.0 (2022-07-06)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.1.1 (2022-04-28)

#### Documentation

* Update library description and service name

### 0.1.0 / 2022-03-30

#### Features

* Initial generation of google-cloud-optimization-v1
