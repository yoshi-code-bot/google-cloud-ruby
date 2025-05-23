# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/accounts/v1beta/online_return_policy.proto for package 'google.shopping.merchant.accounts.v1beta'
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
require 'google/shopping/merchant/accounts/v1beta/online_return_policy_pb'

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          module OnlineReturnPolicyService
            # The service facilitates the management of a merchant's remorse return policy
            # configuration, encompassing return policies for both ads and free listings
            # ## programs. This API defines the following resource model:
            #
            # [OnlineReturnPolicy](/merchant/api/reference/rpc/google.shopping.merchant.accounts.v1beta#google.shopping.merchant.accounts.v1beta.OnlineReturnPolicy)
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.accounts.v1beta.OnlineReturnPolicyService'

              # Gets an existing return policy for a given merchant.
              rpc :GetOnlineReturnPolicy, ::Google::Shopping::Merchant::Accounts::V1beta::GetOnlineReturnPolicyRequest, ::Google::Shopping::Merchant::Accounts::V1beta::OnlineReturnPolicy
              # Lists all existing return policies for a given merchant.
              rpc :ListOnlineReturnPolicies, ::Google::Shopping::Merchant::Accounts::V1beta::ListOnlineReturnPoliciesRequest, ::Google::Shopping::Merchant::Accounts::V1beta::ListOnlineReturnPoliciesResponse
              # Creates a new return policy for a given merchant.
              rpc :CreateOnlineReturnPolicy, ::Google::Shopping::Merchant::Accounts::V1beta::CreateOnlineReturnPolicyRequest, ::Google::Shopping::Merchant::Accounts::V1beta::OnlineReturnPolicy
              # Updates an existing return policy for a given merchant.
              rpc :UpdateOnlineReturnPolicy, ::Google::Shopping::Merchant::Accounts::V1beta::UpdateOnlineReturnPolicyRequest, ::Google::Shopping::Merchant::Accounts::V1beta::OnlineReturnPolicy
              # Deletes an existing return policy.
              rpc :DeleteOnlineReturnPolicy, ::Google::Shopping::Merchant::Accounts::V1beta::DeleteOnlineReturnPolicyRequest, ::Google::Protobuf::Empty
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
