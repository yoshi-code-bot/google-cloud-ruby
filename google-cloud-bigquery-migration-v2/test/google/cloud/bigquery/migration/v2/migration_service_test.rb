# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/bigquery/migration/v2/migration_service_pb"
require "google/cloud/bigquery/migration/v2/migration_service_services_pb"
require "google/cloud/bigquery/migration/v2/migration_service"

class ::Google::Cloud::Bigquery::Migration::V2::MigrationService::ClientTest < Minitest::Test
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

  def test_create_migration_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Migration::V2::MigrationWorkflow.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    migration_workflow = {}

    create_migration_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_migration_workflow, name
      assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::CreateMigrationWorkflowRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigquery::Migration::V2::MigrationWorkflow), request["migration_workflow"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_migration_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_migration_workflow({ parent: parent, migration_workflow: migration_workflow }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_migration_workflow parent: parent, migration_workflow: migration_workflow do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::CreateMigrationWorkflowRequest.new(parent: parent, migration_workflow: migration_workflow) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_migration_workflow({ parent: parent, migration_workflow: migration_workflow }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::CreateMigrationWorkflowRequest.new(parent: parent, migration_workflow: migration_workflow), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_migration_workflow_client_stub.call_rpc_count
    end
  end

  def test_get_migration_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Migration::V2::MigrationWorkflow.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    read_mask = {}

    get_migration_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_migration_workflow, name
      assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::GetMigrationWorkflowRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_migration_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_migration_workflow({ name: name, read_mask: read_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_migration_workflow name: name, read_mask: read_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::GetMigrationWorkflowRequest.new(name: name, read_mask: read_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_migration_workflow({ name: name, read_mask: read_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::GetMigrationWorkflowRequest.new(name: name, read_mask: read_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_migration_workflow_client_stub.call_rpc_count
    end
  end

  def test_list_migration_workflows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Migration::V2::ListMigrationWorkflowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    read_mask = {}
    page_size = 42
    page_token = "hello world"

    list_migration_workflows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_migration_workflows, name
      assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::ListMigrationWorkflowsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_migration_workflows_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_migration_workflows({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_migration_workflows parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_migration_workflows ::Google::Cloud::Bigquery::Migration::V2::ListMigrationWorkflowsRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_migration_workflows({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_migration_workflows(::Google::Cloud::Bigquery::Migration::V2::ListMigrationWorkflowsRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_migration_workflows_client_stub.call_rpc_count
    end
  end

  def test_delete_migration_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_migration_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_migration_workflow, name
      assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::DeleteMigrationWorkflowRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_migration_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_migration_workflow({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_migration_workflow name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::DeleteMigrationWorkflowRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_migration_workflow({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::DeleteMigrationWorkflowRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_migration_workflow_client_stub.call_rpc_count
    end
  end

  def test_start_migration_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    start_migration_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_migration_workflow, name
      assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::StartMigrationWorkflowRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_migration_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_migration_workflow({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_migration_workflow name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::StartMigrationWorkflowRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_migration_workflow({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::StartMigrationWorkflowRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_migration_workflow_client_stub.call_rpc_count
    end
  end

  def test_get_migration_subtask
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Migration::V2::MigrationSubtask.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    read_mask = {}

    get_migration_subtask_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_migration_subtask, name
      assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::GetMigrationSubtaskRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_migration_subtask_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_migration_subtask({ name: name, read_mask: read_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_migration_subtask name: name, read_mask: read_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_migration_subtask ::Google::Cloud::Bigquery::Migration::V2::GetMigrationSubtaskRequest.new(name: name, read_mask: read_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_migration_subtask({ name: name, read_mask: read_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_migration_subtask(::Google::Cloud::Bigquery::Migration::V2::GetMigrationSubtaskRequest.new(name: name, read_mask: read_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_migration_subtask_client_stub.call_rpc_count
    end
  end

  def test_list_migration_subtasks
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Migration::V2::ListMigrationSubtasksResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    read_mask = {}
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_migration_subtasks_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_migration_subtasks, name
      assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::ListMigrationSubtasksRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_migration_subtasks_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_migration_subtasks({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_migration_subtasks parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_migration_subtasks ::Google::Cloud::Bigquery::Migration::V2::ListMigrationSubtasksRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_migration_subtasks({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_migration_subtasks(::Google::Cloud::Bigquery::Migration::V2::ListMigrationSubtasksRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_migration_subtasks_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Client::Configuration, config
  end
end
