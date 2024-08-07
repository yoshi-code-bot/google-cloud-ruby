# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module ErrorReporting
      module V1beta1
        # Description of a group of similar error events.
        # @!attribute [rw] name
        #   @return [::String]
        #     The group resource name.
        #     Written as `projects/{projectID}/groups/{group_id}` or
        #     `projects/{projectID}/locations/{location}/groups/{group_id}`
        #
        #     Examples: `projects/my-project-123/groups/my-group`,
        #     `projects/my-project-123/locations/us-central1/groups/my-group`
        #
        #     In the group resource name, the `group_id` is a unique identifier for a
        #     particular error group. The identifier is derived from key parts of the
        #     error-log content and is treated as Service Data. For information about
        #     how Service Data is handled, see [Google Cloud Privacy
        #     Notice](https://cloud.google.com/terms/cloud-privacy-notice).
        #
        #     For a list of supported locations, see [Supported
        #     Regions](https://cloud.google.com/logging/docs/region-support). `global` is
        #     the default when unspecified.
        # @!attribute [rw] group_id
        #   @return [::String]
        #     An opaque identifier of the group. This field is assigned by the Error
        #     Reporting system and always populated.
        #
        #     In the group resource name, the `group_id` is a unique identifier for a
        #     particular error group. The identifier is derived from key parts of the
        #     error-log content and is treated as Service Data. For information about
        #     how Service Data is handled, see [Google Cloud Privacy
        #     Notice](https://cloud.google.com/terms/cloud-privacy-notice).
        # @!attribute [rw] tracking_issues
        #   @return [::Array<::Google::Cloud::ErrorReporting::V1beta1::TrackingIssue>]
        #     Associated tracking issues.
        # @!attribute [rw] resolution_status
        #   @return [::Google::Cloud::ErrorReporting::V1beta1::ResolutionStatus]
        #     Error group's resolution status.
        #
        #     An unspecified resolution status will be interpreted as OPEN
        class ErrorGroup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information related to tracking the progress on resolving the error.
        # @!attribute [rw] url
        #   @return [::String]
        #     A URL pointing to a related entry in an issue tracking system.
        #     Example: `https://github.com/user/project/issues/4`
        class TrackingIssue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An error event which is returned by the Error Reporting system.
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when the event occurred as provided in the error report.
        #     If the report did not contain a timestamp, the time the error was received
        #     by the Error Reporting system is used.
        # @!attribute [rw] service_context
        #   @return [::Google::Cloud::ErrorReporting::V1beta1::ServiceContext]
        #     The `ServiceContext` for which this error was reported.
        # @!attribute [rw] message
        #   @return [::String]
        #     The stack trace that was reported or logged by the service.
        # @!attribute [rw] context
        #   @return [::Google::Cloud::ErrorReporting::V1beta1::ErrorContext]
        #     Data about the context in which the error occurred.
        class ErrorEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes a running service that sends errors.
        # Its version changes over time and multiple versions can run in parallel.
        # @!attribute [rw] service
        #   @return [::String]
        #     An identifier of the service, such as the name of the
        #     executable, job, or Google App Engine service name. This field is expected
        #     to have a low number of values that are relatively stable over time, as
        #     opposed to `version`, which can be changed whenever new code is deployed.
        #
        #     Contains the service name for error reports extracted from Google
        #     App Engine logs or `default` if the App Engine default service is used.
        # @!attribute [rw] version
        #   @return [::String]
        #     Represents the source code version that the developer provided,
        #     which could represent a version label or a Git SHA-1 hash, for example.
        #     For App Engine standard environment, the version is set to the version of
        #     the app.
        # @!attribute [rw] resource_type
        #   @return [::String]
        #     Type of the MonitoredResource. List of possible values:
        #     https://cloud.google.com/monitoring/api/resources
        #
        #     Value is set automatically for incoming errors and must not be set when
        #     reporting errors.
        class ServiceContext
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A description of the context in which an error occurred.
        # This data should be provided by the application when reporting an error,
        # unless the
        # error report has been generated automatically from Google App Engine logs.
        # @!attribute [rw] http_request
        #   @return [::Google::Cloud::ErrorReporting::V1beta1::HttpRequestContext]
        #     The HTTP request which was processed when the error was
        #     triggered.
        # @!attribute [rw] user
        #   @return [::String]
        #     The user who caused or was affected by the crash.
        #     This can be a user ID, an email address, or an arbitrary token that
        #     uniquely identifies the user.
        #     When sending an error report, leave this field empty if the user was not
        #     logged in. In this case the
        #     Error Reporting system will use other data, such as remote IP address, to
        #     distinguish affected users. See `affected_users_count` in
        #     `ErrorGroupStats`.
        # @!attribute [rw] report_location
        #   @return [::Google::Cloud::ErrorReporting::V1beta1::SourceLocation]
        #     The location in the source code where the decision was made to
        #     report the error, usually the place where it was logged.
        #     For a logged exception this would be the source line where the
        #     exception is logged, usually close to the place where it was
        #     caught.
        class ErrorContext
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # HTTP request data that is related to a reported error.
        # This data should be provided by the application when reporting an error,
        # unless the
        # error report has been generated automatically from Google App Engine logs.
        # @!attribute [rw] method
        #   @return [::String]
        #     The type of HTTP request, such as `GET`, `POST`, etc.
        # @!attribute [rw] url
        #   @return [::String]
        #     The URL of the request.
        # @!attribute [rw] user_agent
        #   @return [::String]
        #     The user agent information that is provided with the request.
        # @!attribute [rw] referrer
        #   @return [::String]
        #     The referrer information that is provided with the request.
        # @!attribute [rw] response_status_code
        #   @return [::Integer]
        #     The HTTP response status code for the request.
        # @!attribute [rw] remote_ip
        #   @return [::String]
        #     The IP address from which the request originated.
        #     This can be IPv4, IPv6, or a token which is derived from the
        #     IP address, depending on the data that has been provided
        #     in the error report.
        class HttpRequestContext
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Indicates a location in the source code of the service for which errors are
        # reported. `functionName` must be provided by the application when reporting
        # an error, unless the error report contains a `message` with a supported
        # exception stack trace. All fields are optional for the later case.
        # @!attribute [rw] file_path
        #   @return [::String]
        #     The source code filename, which can include a truncated relative
        #     path, or a full path from a production machine.
        # @!attribute [rw] line_number
        #   @return [::Integer]
        #     1-based. 0 indicates that the line number is unknown.
        # @!attribute [rw] function_name
        #   @return [::String]
        #     Human-readable name of a function or method.
        #     The value can include optional context like the class or package name.
        #     For example, `my.package.MyClass.method` in case of Java.
        class SourceLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Resolution status of an error group.
        module ResolutionStatus
          # Status is unknown. When left unspecified in requests, it is treated like
          # OPEN.
          RESOLUTION_STATUS_UNSPECIFIED = 0

          # The error group is not being addressed. This is the default for
          # new groups. It is also used for errors re-occurring after marked RESOLVED.
          OPEN = 1

          # Error Group manually acknowledged, it can have an issue link attached.
          ACKNOWLEDGED = 2

          # Error Group manually resolved, more events for this group are not expected
          # to occur.
          RESOLVED = 3

          # The error group is muted and excluded by default on group stats requests.
          MUTED = 4
        end
      end
    end
  end
end
