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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/gsuite_add_ons/v1/gsuite_add_ons"

class ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_authorization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.authorization_path project: "value0"
      assert_equal "projects/value0/authorization", path
    end
  end

  def test_deployment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.deployment_path project: "value0", deployment: "value1"
      assert_equal "projects/value0/deployments/value1", path
    end
  end

  def test_install_status_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.install_status_path project: "value0", deployment: "value1"
      assert_equal "projects/value0/deployments/value1/installStatus", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end
