# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module AIPlatform
      module V1
        # A description of resources that can be shared by multiple DeployedModels,
        # whose underlying specification consists of a DedicatedResources.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. The resource name of the DeploymentResourcePool.
        #     Format:
        #     `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
        # @!attribute [rw] dedicated_resources
        #   @return [::Google::Cloud::AIPlatform::V1::DedicatedResources]
        #     Required. The underlying DedicatedResources that the DeploymentResourcePool
        #     uses.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Customer-managed encryption key spec for a DeploymentResourcePool. If set,
        #     this DeploymentResourcePool will be secured by this key. Endpoints and the
        #     DeploymentResourcePool they deploy in need to have the same EncryptionSpec.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     The service account that the DeploymentResourcePool's container(s) run as.
        #     Specify the email address of the service account. If this service account
        #     is not specified, the container(s) run as a service account that doesn't
        #     have access to the resource project.
        #
        #     Users deploying the Models to this DeploymentResourcePool must have the
        #     `iam.serviceAccounts.actAs` permission on this service account.
        # @!attribute [rw] disable_container_logging
        #   @return [::Boolean]
        #     If the DeploymentResourcePool is deployed with custom-trained Models or
        #     AutoML Tabular Models, the container(s) of the DeploymentResourcePool will
        #     send `stderr` and `stdout` streams to Cloud Logging by default.
        #     Please note that the logs incur cost, which are subject to [Cloud Logging
        #     pricing](https://cloud.google.com/logging/pricing).
        #
        #     User can disable container logging by setting this flag to true.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this DeploymentResourcePool was created.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        class DeploymentResourcePool
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
