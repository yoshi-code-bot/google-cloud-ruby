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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/confidential_computing/v1/version"

require "google/cloud/confidential_computing/v1/confidential_computing/credentials"
require "google/cloud/confidential_computing/v1/confidential_computing/paths"
require "google/cloud/confidential_computing/v1/confidential_computing/client"
require "google/cloud/confidential_computing/v1/confidential_computing/rest"

module Google
  module Cloud
    module ConfidentialComputing
      module V1
        ##
        # Service describing handlers for resources
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/confidential_computing/v1/confidential_computing"
        #     client = ::Google::Cloud::ConfidentialComputing::V1::ConfidentialComputing::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/confidential_computing/v1/confidential_computing/rest"
        #     client = ::Google::Cloud::ConfidentialComputing::V1::ConfidentialComputing::Rest::Client.new
        #
        module ConfidentialComputing
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "confidential_computing", "helpers.rb"
require "google/cloud/confidential_computing/v1/confidential_computing/helpers" if ::File.file? helper_path