# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/encryption_spec.proto for package 'google.cloud.dialogflow.v2'
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
require 'google/cloud/dialogflow/v2/encryption_spec_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module EncryptionSpecService
          # Manages encryption spec settings for Dialogflow and Agent Assist.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.EncryptionSpecService'

            # Gets location-level encryption key specification.
            rpc :GetEncryptionSpec, ::Google::Cloud::Dialogflow::V2::GetEncryptionSpecRequest, ::Google::Cloud::Dialogflow::V2::EncryptionSpec
            # Initializes a location-level encryption key specification.  An error will
            # be thrown if the location has resources already created before the
            # initialization. Once the encryption specification is initialized at a
            # location, it is immutable and all newly created resources under the
            # location will be encrypted with the existing specification.
            rpc :InitializeEncryptionSpec, ::Google::Cloud::Dialogflow::V2::InitializeEncryptionSpecRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
