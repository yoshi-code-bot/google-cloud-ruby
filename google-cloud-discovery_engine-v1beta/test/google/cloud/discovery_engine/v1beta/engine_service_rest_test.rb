# frozen_string_literal: true

# Copyright 2024 Google LLC
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
require "gapic/rest"
require "google/cloud/discoveryengine/v1beta/engine_service_pb"
require "google/cloud/discovery_engine/v1beta/engine_service/rest"


class ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
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

  def test_create_engine
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    engine = {}
    engine_id = "hello world"

    create_engine_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_create_engine_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_engine_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_engine({ parent: parent, engine: engine, engine_id: engine_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_engine parent: parent, engine: engine, engine_id: engine_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_engine ::Google::Cloud::DiscoveryEngine::V1beta::CreateEngineRequest.new(parent: parent, engine: engine, engine_id: engine_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_engine({ parent: parent, engine: engine, engine_id: engine_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_engine(::Google::Cloud::DiscoveryEngine::V1beta::CreateEngineRequest.new(parent: parent, engine: engine, engine_id: engine_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_engine_client_stub.call_count
      end
    end
  end

  def test_delete_engine
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_engine_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_delete_engine_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_engine_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_engine({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_engine name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_engine ::Google::Cloud::DiscoveryEngine::V1beta::DeleteEngineRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_engine({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_engine(::Google::Cloud::DiscoveryEngine::V1beta::DeleteEngineRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_engine_client_stub.call_count
      end
    end
  end

  def test_update_engine
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Engine.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    engine = {}
    update_mask = {}

    update_engine_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_update_engine_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_engine_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_engine({ engine: engine, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_engine engine: engine, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_engine ::Google::Cloud::DiscoveryEngine::V1beta::UpdateEngineRequest.new(engine: engine, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_engine({ engine: engine, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_engine(::Google::Cloud::DiscoveryEngine::V1beta::UpdateEngineRequest.new(engine: engine, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_engine_client_stub.call_count
      end
    end
  end

  def test_get_engine
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Engine.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_engine_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_get_engine_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_engine_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_engine({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_engine name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_engine ::Google::Cloud::DiscoveryEngine::V1beta::GetEngineRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_engine({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_engine(::Google::Cloud::DiscoveryEngine::V1beta::GetEngineRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_engine_client_stub.call_count
      end
    end
  end

  def test_list_engines
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::ListEnginesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_engines_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_list_engines_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_engines_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_engines({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_engines parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_engines ::Google::Cloud::DiscoveryEngine::V1beta::ListEnginesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_engines({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_engines(::Google::Cloud::DiscoveryEngine::V1beta::ListEnginesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_engines_client_stub.call_count
      end
    end
  end

  def test_pause_engine
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Engine.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_engine_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_pause_engine_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, pause_engine_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.pause_engine({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.pause_engine name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.pause_engine ::Google::Cloud::DiscoveryEngine::V1beta::PauseEngineRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.pause_engine({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.pause_engine(::Google::Cloud::DiscoveryEngine::V1beta::PauseEngineRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, pause_engine_client_stub.call_count
      end
    end
  end

  def test_resume_engine
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Engine.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    resume_engine_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_resume_engine_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, resume_engine_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.resume_engine({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.resume_engine name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.resume_engine ::Google::Cloud::DiscoveryEngine::V1beta::ResumeEngineRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.resume_engine({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.resume_engine(::Google::Cloud::DiscoveryEngine::V1beta::ResumeEngineRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, resume_engine_client_stub.call_count
      end
    end
  end

  def test_tune_engine
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    tune_engine_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::ServiceStub.stub :transcode_tune_engine_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, tune_engine_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.tune_engine({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.tune_engine name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.tune_engine ::Google::Cloud::DiscoveryEngine::V1beta::TuneEngineRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.tune_engine({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.tune_engine(::Google::Cloud::DiscoveryEngine::V1beta::TuneEngineRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, tune_engine_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::EngineService::Rest::Client::Configuration, config
  end
end
