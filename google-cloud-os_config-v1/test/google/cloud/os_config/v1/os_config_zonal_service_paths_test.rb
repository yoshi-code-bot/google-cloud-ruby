# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/os_config/v1/os_config_zonal_service"

class ::Google::Cloud::OsConfig::V1::OsConfigZonalService::ClientPathsTest < Minitest::Test
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

  def test_instance_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.instance_path project: "value0", zone: "value1", instance: "value2"
      assert_equal "projects/value0/zones/value1/instances/value2", path

      path = client.instance_path project: "value0", location: "value1", instance: "value2"
      assert_equal "projects/value0/locations/value1/instances/value2", path
    end
  end

  def test_instance_os_policy_assignment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.instance_os_policy_assignment_path project: "value0", location: "value1", instance: "value2", assignment: "value3"
      assert_equal "projects/value0/locations/value1/instances/value2/osPolicyAssignments/value3", path
    end
  end

  def test_inventory_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.inventory_path project: "value0", location: "value1", instance: "value2"
      assert_equal "projects/value0/locations/value1/instances/value2/inventory", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_os_policy_assignment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.os_policy_assignment_path project: "value0", location: "value1", os_policy_assignment: "value2"
      assert_equal "projects/value0/locations/value1/osPolicyAssignments/value2", path
    end
  end

  def test_os_policy_assignment_report_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.os_policy_assignment_report_path project: "value0", location: "value1", instance: "value2", assignment: "value3"
      assert_equal "projects/value0/locations/value1/instances/value2/osPolicyAssignments/value3/report", path
    end
  end

  def test_vulnerability_report_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.vulnerability_report_path project: "value0", location: "value1", instance: "value2"
      assert_equal "projects/value0/locations/value1/instances/value2/vulnerabilityReport", path
    end
  end
end
