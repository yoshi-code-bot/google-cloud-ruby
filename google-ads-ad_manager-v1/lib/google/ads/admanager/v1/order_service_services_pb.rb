# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/ads/admanager/v1/order_service.proto for package 'Google.Ads.AdManager.V1'
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
require 'google/ads/admanager/v1/order_service_pb'

module Google
  module Ads
    module AdManager
      module V1
        module OrderService
          # Provides methods for handling `Order` objects.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.ads.admanager.v1.OrderService'

            # API to retrieve an Order object.
            rpc :GetOrder, ::Google::Ads::AdManager::V1::GetOrderRequest, ::Google::Ads::AdManager::V1::Order
            # API to retrieve a list of `Order` objects.
            #
            # Fields used for literal matching in filter string:
            # * `order_id`
            # * `display_name`
            # * `external_order_id`
            rpc :ListOrders, ::Google::Ads::AdManager::V1::ListOrdersRequest, ::Google::Ads::AdManager::V1::ListOrdersResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
