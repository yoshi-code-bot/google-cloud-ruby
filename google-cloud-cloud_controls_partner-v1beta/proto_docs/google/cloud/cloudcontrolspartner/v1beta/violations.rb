# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module CloudControlsPartner
      module V1beta
        # Details of resource Violation
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Format:
        #     `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/violations/{violation}`
        # @!attribute [r] description
        #   @return [::String]
        #     Output only. Description for the Violation.
        #     e.g. OrgPolicy gcp.resourceLocations has non compliant value.
        # @!attribute [r] begin_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time of the event which triggered the Violation.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last time when the Violation record was updated.
        # @!attribute [r] resolve_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time of the event which fixed the Violation.
        #     If the violation is ACTIVE this will be empty.
        # @!attribute [r] category
        #   @return [::String]
        #     Output only. Category under which this violation is mapped.
        #     e.g. Location, Service Usage, Access, Encryption, etc.
        # @!attribute [r] state
        #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Violation::State]
        #     Output only. State of the violation
        # @!attribute [r] non_compliant_org_policy
        #   @return [::String]
        #     Output only. Immutable. Name of the OrgPolicy which was modified with
        #     non-compliant change and resulted this violation. Format:
        #      `projects/{project_number}/policies/{constraint_name}`
        #      `folders/{folder_id}/policies/{constraint_name}`
        #      `organizations/{organization_id}/policies/{constraint_name}`
        # @!attribute [rw] folder_id
        #   @return [::Integer]
        #     The folder_id of the violation
        # @!attribute [r] remediation
        #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Violation::Remediation]
        #     Output only. Compliance violation remediation
        class Violation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents remediation guidance to resolve compliance violation for
          # AssuredWorkload
          # @!attribute [rw] instructions
          #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Violation::Remediation::Instructions]
          #     Required. Remediation instructions to resolve violations
          # @!attribute [rw] compliant_values
          #   @return [::Array<::String>]
          #     Values that can resolve the violation
          #     For example: for list org policy violations, this will either be the list
          #     of allowed or denied values
          # @!attribute [r] remediation_type
          #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Violation::Remediation::RemediationType]
          #     Output only. Remediation type based on the type of org policy values
          #     violated
          class Remediation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Instructions to remediate violation
            # @!attribute [rw] gcloud_instructions
            #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Violation::Remediation::Instructions::Gcloud]
            #     Remediation instructions to resolve violation via gcloud cli
            # @!attribute [rw] console_instructions
            #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Violation::Remediation::Instructions::Console]
            #     Remediation instructions to resolve violation via cloud console
            class Instructions
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Remediation instructions to resolve violation via gcloud cli
              # @!attribute [rw] gcloud_commands
              #   @return [::Array<::String>]
              #     Gcloud command to resolve violation
              # @!attribute [rw] steps
              #   @return [::Array<::String>]
              #     Steps to resolve violation via gcloud cli
              # @!attribute [rw] additional_links
              #   @return [::Array<::String>]
              #     Additional urls for more information about steps
              class Gcloud
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Remediation instructions to resolve violation via cloud console
              # @!attribute [rw] console_uris
              #   @return [::Array<::String>]
              #     Link to console page where violations can be resolved
              # @!attribute [rw] steps
              #   @return [::Array<::String>]
              #     Steps to resolve violation via cloud console
              # @!attribute [rw] additional_links
              #   @return [::Array<::String>]
              #     Additional urls for more information about steps
              class Console
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Classifying remediation into various types based on the kind of
            # violation. For example, violations caused due to changes in boolean org
            # policy requires different remediation instructions compared to violation
            # caused due to changes in allowed values of list org policy.
            module RemediationType
              # Unspecified remediation type
              REMEDIATION_TYPE_UNSPECIFIED = 0

              # Remediation type for boolean org policy
              REMEDIATION_BOOLEAN_ORG_POLICY_VIOLATION = 1

              # Remediation type for list org policy which have allowed values in the
              # monitoring rule
              REMEDIATION_LIST_ALLOWED_VALUES_ORG_POLICY_VIOLATION = 2

              # Remediation type for list org policy which have denied values in the
              # monitoring rule
              REMEDIATION_LIST_DENIED_VALUES_ORG_POLICY_VIOLATION = 3

              # Remediation type for gcp.restrictCmekCryptoKeyProjects
              REMEDIATION_RESTRICT_CMEK_CRYPTO_KEY_PROJECTS_ORG_POLICY_VIOLATION = 4

              # Remediation type for resource violation.
              REMEDIATION_RESOURCE_VIOLATION = 5
            end
          end

          # Violation State Values
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # Violation is resolved.
            RESOLVED = 1

            # Violation is Unresolved
            UNRESOLVED = 2

            # Violation is Exception
            EXCEPTION = 3
          end
        end

        # Message for requesting list of Violations
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource
        #     Format
        #     `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of customers row to return. The service may
        #     return fewer than this value. If unspecified, at most 10 customers will be
        #     returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous `ListViolations` call.
        #     Provide this to retrieve the subsequent page.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results
        # @!attribute [rw] interval
        #   @return [::Google::Type::Interval]
        #     Optional. Specifies the interval for retrieving violations.
        #     if unspecified, all violations will be returned.
        class ListViolationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for list customer violation requests
        # @!attribute [rw] violations
        #   @return [::Array<::Google::Cloud::CloudControlsPartner::V1beta::Violation>]
        #     List of violation
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Workloads that could not be reached due to permission errors or any other
        #     error. Ref: https://google.aip.dev/217
        class ListViolationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a Violation
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/violations/{violation}`
        class GetViolationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
