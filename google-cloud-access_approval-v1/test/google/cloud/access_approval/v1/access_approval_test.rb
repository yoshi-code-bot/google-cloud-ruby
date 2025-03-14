# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/accessapproval/v1/accessapproval_pb"
require "google/cloud/accessapproval/v1/accessapproval_services_pb"
require "google/cloud/access_approval/v1/access_approval"

class ::Google::Cloud::AccessApproval::V1::AccessApproval::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

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

  def test_list_approval_requests
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::ListApprovalRequestsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_approval_requests_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_approval_requests, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::ListApprovalRequestsMessage, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_approval_requests_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_approval_requests({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_approval_requests parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_approval_requests ::Google::Cloud::AccessApproval::V1::ListApprovalRequestsMessage.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_approval_requests({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_approval_requests(::Google::Cloud::AccessApproval::V1::ListApprovalRequestsMessage.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_approval_requests_client_stub.call_rpc_count
    end
  end

  def test_get_approval_request
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::ApprovalRequest.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_approval_request_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_approval_request, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::GetApprovalRequestMessage, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_approval_request_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_approval_request({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_approval_request name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_approval_request ::Google::Cloud::AccessApproval::V1::GetApprovalRequestMessage.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_approval_request({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_approval_request(::Google::Cloud::AccessApproval::V1::GetApprovalRequestMessage.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_approval_request_client_stub.call_rpc_count
    end
  end

  def test_approve_approval_request
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::ApprovalRequest.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    expire_time = {}

    approve_approval_request_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :approve_approval_request, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::ApproveApprovalRequestMessage, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["expire_time"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, approve_approval_request_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.approve_approval_request({ name: name, expire_time: expire_time }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.approve_approval_request name: name, expire_time: expire_time do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.approve_approval_request ::Google::Cloud::AccessApproval::V1::ApproveApprovalRequestMessage.new(name: name, expire_time: expire_time) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.approve_approval_request({ name: name, expire_time: expire_time }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.approve_approval_request(::Google::Cloud::AccessApproval::V1::ApproveApprovalRequestMessage.new(name: name, expire_time: expire_time), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, approve_approval_request_client_stub.call_rpc_count
    end
  end

  def test_dismiss_approval_request
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::ApprovalRequest.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    dismiss_approval_request_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :dismiss_approval_request, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::DismissApprovalRequestMessage, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, dismiss_approval_request_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.dismiss_approval_request({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.dismiss_approval_request name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.dismiss_approval_request ::Google::Cloud::AccessApproval::V1::DismissApprovalRequestMessage.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.dismiss_approval_request({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.dismiss_approval_request(::Google::Cloud::AccessApproval::V1::DismissApprovalRequestMessage.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, dismiss_approval_request_client_stub.call_rpc_count
    end
  end

  def test_invalidate_approval_request
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::ApprovalRequest.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    invalidate_approval_request_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :invalidate_approval_request, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::InvalidateApprovalRequestMessage, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, invalidate_approval_request_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.invalidate_approval_request({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.invalidate_approval_request name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.invalidate_approval_request ::Google::Cloud::AccessApproval::V1::InvalidateApprovalRequestMessage.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.invalidate_approval_request({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.invalidate_approval_request(::Google::Cloud::AccessApproval::V1::InvalidateApprovalRequestMessage.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, invalidate_approval_request_client_stub.call_rpc_count
    end
  end

  def test_get_access_approval_settings
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::AccessApprovalSettings.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_access_approval_settings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_access_approval_settings, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::GetAccessApprovalSettingsMessage, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_access_approval_settings_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_access_approval_settings({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_access_approval_settings name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_access_approval_settings ::Google::Cloud::AccessApproval::V1::GetAccessApprovalSettingsMessage.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_access_approval_settings({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_access_approval_settings(::Google::Cloud::AccessApproval::V1::GetAccessApprovalSettingsMessage.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_access_approval_settings_client_stub.call_rpc_count
    end
  end

  def test_update_access_approval_settings
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::AccessApprovalSettings.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    settings = {}
    update_mask = {}

    update_access_approval_settings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_access_approval_settings, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::UpdateAccessApprovalSettingsMessage, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AccessApproval::V1::AccessApprovalSettings), request["settings"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_access_approval_settings_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_access_approval_settings({ settings: settings, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_access_approval_settings settings: settings, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_access_approval_settings ::Google::Cloud::AccessApproval::V1::UpdateAccessApprovalSettingsMessage.new(settings: settings, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_access_approval_settings({ settings: settings, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_access_approval_settings(::Google::Cloud::AccessApproval::V1::UpdateAccessApprovalSettingsMessage.new(settings: settings, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_access_approval_settings_client_stub.call_rpc_count
    end
  end

  def test_delete_access_approval_settings
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_access_approval_settings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_access_approval_settings, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::DeleteAccessApprovalSettingsMessage, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_access_approval_settings_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_access_approval_settings({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_access_approval_settings name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_access_approval_settings ::Google::Cloud::AccessApproval::V1::DeleteAccessApprovalSettingsMessage.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_access_approval_settings({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_access_approval_settings(::Google::Cloud::AccessApproval::V1::DeleteAccessApprovalSettingsMessage.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_access_approval_settings_client_stub.call_rpc_count
    end
  end

  def test_get_access_approval_service_account
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AccessApproval::V1::AccessApprovalServiceAccount.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_access_approval_service_account_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_access_approval_service_account, name
      assert_kind_of ::Google::Cloud::AccessApproval::V1::GetAccessApprovalServiceAccountMessage, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_access_approval_service_account_client_stub do
      # Create client
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_access_approval_service_account({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_access_approval_service_account name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_access_approval_service_account ::Google::Cloud::AccessApproval::V1::GetAccessApprovalServiceAccountMessage.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_access_approval_service_account({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_access_approval_service_account(::Google::Cloud::AccessApproval::V1::GetAccessApprovalServiceAccountMessage.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_access_approval_service_account_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AccessApproval::V1::AccessApproval::Client::Configuration, config
  end
end
