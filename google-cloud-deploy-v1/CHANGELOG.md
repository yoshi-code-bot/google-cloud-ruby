# Changelog

### 2.2.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 
#### Documentation

* A few minor clarifications 

### 2.1.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 2.1.0 (2025-04-21)

#### Features

* Add resource definition for Revision ([#29441](https://github.com/googleapis/google-cloud-ruby/issues/29441)) 
#### Documentation

* Typos fixes and small improvements 

### 2.0.2 (2025-03-25)

#### Documentation

* Fixed some typos in the reference docs ([#29393](https://github.com/googleapis/google-cloud-ruby/issues/29393)) 

### 2.0.1 (2025-02-12)

#### Bug Fixes

* Fixed some http bindings for IAM calls using REST ([#28964](https://github.com/googleapis/google-cloud-ruby/issues/28964)) 

### 2.0.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824)) 

### 1.6.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.5.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.4.0 (2024-12-04)

#### Features

* A new field `timed_promote_release_condition` is added to message `.google.cloud.deploy.v1.AutomationRuleCondition` 
* A new field `timed_promote_release_operation` is added to message `.google.cloud.deploy.v1.AutomationRun` 
* A new field `timed_promote_release_rule` is added to message `.google.cloud.deploy.v1.AutomationRule` ([#27606](https://github.com/googleapis/google-cloud-ruby/issues/27606)) 
* A new message `TimedPromoteReleaseCondition` is added 
* A new message `TimedPromoteReleaseOperation` is added 
* A new message `TimedPromoteReleaseRule` is added 
* added new fields for the Automation Repair rule ([#27525](https://github.com/googleapis/google-cloud-ruby/issues/27525)) 
* added route destination related fields to Gateway service mesh message 
* Support for GkeCluster#dns_endpoint ([#27685](https://github.com/googleapis/google-cloud-ruby/issues/27685)) 

#### Documentation

* A comment for field `target_id` in message `.google.cloud.deploy.v1.AutomationRun` is changed 

### 1.3.0 (2024-09-30)

#### Features

* Added support for deploy policies ([#27370](https://github.com/googleapis/google-cloud-ruby/issues/27370)) 

### 1.2.2 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.2.1 (2024-08-08)

#### Documentation

* Minor documentation updates ([#26622](https://github.com/googleapis/google-cloud-ruby/issues/26622)) 

### 1.2.0 (2024-08-02)

#### Features

* add support for different Pod selector labels when doing canaries 
#### Bug Fixes

* Remove deploy policy RPCs that were mistakenly released when not yet available ([#26538](https://github.com/googleapis/google-cloud-ruby/issues/26538)) 
* removed fields related to automatic repair actions which is not yet available in the API 

### 1.1.0 (2024-07-22)

#### Features

* AutomationRun resources now contain information about which policies prevented the run from proceeding 
* Include protobuf notification event types for custom target type failure, deploy policy evaluation, and pub/sub failure 
* Support for a proxy URL in a GKE cluster 
* Support for operations on DeployPolicy resources ([#26461](https://github.com/googleapis/google-cloud-ruby/issues/26461)) 
* Support for overriding deploy policies in several calls 
* Support for the ABORTED AutomationRun state 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.20.0 (2024-05-23)

#### Features

* add Skaffold verbose support to Execution Environment properties ([#25912](https://github.com/googleapis/google-cloud-ruby/issues/25912)) 

### 0.19.1 (2024-05-15)

#### Documentation

* Updates and clarifications to some format specifications ([#25834](https://github.com/googleapis/google-cloud-ruby/issues/25834)) 

### 0.19.0 (2024-04-25)

#### Features

* add Skaffold remote config support for Google Cloud Build repos ([#25742](https://github.com/googleapis/google-cloud-ruby/issues/25742)) 

### 0.18.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24869](https://github.com/googleapis/google-cloud-ruby/issues/24869)) 

### 0.17.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.17.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.17.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23778](https://github.com/googleapis/google-cloud-ruby/issues/23778)) 

### 0.16.0 (2024-01-09)

#### Features

* Added more information to certain notification events ([#23745](https://github.com/googleapis/google-cloud-ruby/issues/23745)) 
* Delivery pipeline notification events report the pipeline UID 
* Job run notification events report the release and rollout names 
* Release notification events report the pipeline and release UIDs 
* Release render events report the event type and pipeline UID 
* Rollout notification events report the release name and rollout UID 
* Rollout update events report the release name 

### 0.15.0 (2023-12-08)

#### Features

* Support for canary revision tags in CloudRunConfig 
* Support for custom target information in the Target resource type 
* Support for RPCs managing custom target types ([#23625](https://github.com/googleapis/google-cloud-ruby/issues/23625)) 

### 0.14.0 (2023-11-06)

#### Features

* add Automation API and Rollback API ([#23509](https://github.com/googleapis/google-cloud-ruby/issues/23509)) 

### 0.13.0 (2023-10-25)

#### Features

* add platform log RolloutUpdateEvent 

### 0.12.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22919](https://github.com/googleapis/google-cloud-ruby/issues/22919)) 

### 0.11.0 (2023-07-28)

#### Features

* support predeploy and postdeploy actions 

### 0.10.0 (2023-07-11)

#### Features

* Support for configuring the time to wait for route updates to propagate ([#22511](https://github.com/googleapis/google-cloud-ruby/issues/22511)) 
* Support resource state change and process aborted log entry types 

### 0.9.0 (2023-06-23)

#### Features

* support deploy_parameters for stage 

### 0.8.0 (2023-06-06)

#### Features

* Added ServiceNetworking#disable_pod_overprovisioning ([#22241](https://github.com/googleapis/google-cloud-ruby/issues/22241)) 
* Uses binary protobuf definitions for better forward compatibility ([#21674](https://github.com/googleapis/google-cloud-ruby/issues/21674)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.7.0 (2023-05-04)

#### Features

* Added PhaseArtifact#job_manifests_path 
* Added support for DeployArtifacts 

### 0.6.0 (2023-03-24)

#### Features

* added support for RELEASE_RENDER log type and deprecated TYPE_RENDER_STATUES_CHANGE 
* added supported for Cloud Deploy Progressive Deployment Strategy ([#20974](https://github.com/googleapis/google-cloud-ruby/issues/20974)) 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20626](https://github.com/googleapis/google-cloud-ruby/issues/20626)) 

### 0.4.0 (2022-09-28)

#### Features

* Support for Cloud Run deployment targets 
* Support for deployment strategies 
* Support for phases and metadata for a Rollout 
* Support for setting the timeout for a Cloud Build execution 
* Support for suspended delivery pipelines 
* Support for TargetRender failure messages 
* Support for the abandon_release call ([#19226](https://github.com/googleapis/google-cloud-ruby/issues/19226)) 
* Support for the auxiliary IAM Policy client 
* Support for the auxiliary Location client 
* Support for the get_job_run call 
* Support for the list_job_runs call 
* Support for the retry_job call 

### 0.3.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.2.0 (2022-04-14)

#### Features

* Support for specifying an Anthos Cluster target
* Support for specifying the execution worker pool
* Support for specifying the execution service account
* Support for specifying the storage bucket for artifacts
* Support for specifying the internal IP for a private GKE cluster
* Rollouts and renders now report the failure cause
* Defined types for notification payloads

### 0.1.3 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.2 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.1 / 2021-10-21

#### Documentation

* Some documentation formatting fixes

### 0.1.0 / 2021-09-23

#### Features

* Initial generation of google-cloud-deploy-v1
