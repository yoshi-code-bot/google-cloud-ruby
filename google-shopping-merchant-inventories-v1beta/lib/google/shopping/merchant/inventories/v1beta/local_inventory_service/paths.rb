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
  module Shopping
    module Merchant
      module Inventories
        module V1beta
          module LocalInventoryService
            # Path helper methods for the LocalInventoryService API.
            module Paths
              ##
              # Create a fully-qualified LocalInventory resource string.
              #
              # The resource will be in the following format:
              #
              # `accounts/{account}/products/{product}/localInventories/{store_code}`
              #
              # @param account [String]
              # @param product [String]
              # @param store_code [String]
              #
              # @return [::String]
              def local_inventory_path account:, product:, store_code:
                raise ::ArgumentError, "account cannot contain /" if account.to_s.include? "/"
                raise ::ArgumentError, "product cannot contain /" if product.to_s.include? "/"

                "accounts/#{account}/products/#{product}/localInventories/#{store_code}"
              end

              ##
              # Create a fully-qualified Product resource string.
              #
              # The resource will be in the following format:
              #
              # `accounts/{account}/products/{product}`
              #
              # @param account [String]
              # @param product [String]
              #
              # @return [::String]
              def product_path account:, product:
                raise ::ArgumentError, "account cannot contain /" if account.to_s.include? "/"

                "accounts/#{account}/products/#{product}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
