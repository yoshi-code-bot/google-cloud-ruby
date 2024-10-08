# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/kms/v1/autokey_admin.proto for package 'google.cloud.kms.v1'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/kms/v1/autokey_admin_pb'

module Google
  module Cloud
    module Kms
      module V1
        module AutokeyAdmin
          # Provides interfaces for managing [Cloud KMS
          # Autokey](https://cloud.google.com/kms/help/autokey) folder-level
          # configurations. A configuration is inherited by all descendent projects. A
          # configuration at one folder overrides any other configurations in its
          # ancestry. Setting a configuration on a folder is a prerequisite for Cloud KMS
          # Autokey, so that users working in a descendant project can request
          # provisioned [CryptoKeys][google.cloud.kms.v1.CryptoKey], ready for Customer
          # Managed Encryption Key (CMEK) use, on-demand.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.kms.v1.AutokeyAdmin'

            # Updates the [AutokeyConfig][google.cloud.kms.v1.AutokeyConfig] for a
            # folder. The caller must have both `cloudkms.autokeyConfigs.update`
            # permission on the parent folder and `cloudkms.cryptoKeys.setIamPolicy`
            # permission on the provided key project. A
            # [KeyHandle][google.cloud.kms.v1.KeyHandle] creation in the folder's
            # descendant projects will use this configuration to determine where to
            # create the resulting [CryptoKey][google.cloud.kms.v1.CryptoKey].
            rpc :UpdateAutokeyConfig, ::Google::Cloud::Kms::V1::UpdateAutokeyConfigRequest, ::Google::Cloud::Kms::V1::AutokeyConfig
            # Returns the [AutokeyConfig][google.cloud.kms.v1.AutokeyConfig] for a
            # folder.
            rpc :GetAutokeyConfig, ::Google::Cloud::Kms::V1::GetAutokeyConfigRequest, ::Google::Cloud::Kms::V1::AutokeyConfig
            # Returns the effective Cloud KMS Autokey configuration for a given project.
            rpc :ShowEffectiveAutokeyConfig, ::Google::Cloud::Kms::V1::ShowEffectiveAutokeyConfigRequest, ::Google::Cloud::Kms::V1::ShowEffectiveAutokeyConfigResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
