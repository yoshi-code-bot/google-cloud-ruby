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
require "gapic/rest"
require "google/cloud/dialogflow/cx/v3/intent_pb"
require "google/cloud/dialogflow/cx/v3/intents/rest"


class ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ClientTest < Minitest::Test
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

  def test_list_intents
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::ListIntentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    language_code = "hello world"
    intent_view = :INTENT_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"

    list_intents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ServiceStub.stub :transcode_list_intents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_intents_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_intents({ parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_intents parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_intents ::Google::Cloud::Dialogflow::CX::V3::ListIntentsRequest.new(parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_intents({ parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_intents(::Google::Cloud::Dialogflow::CX::V3::ListIntentsRequest.new(parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_intents_client_stub.call_count
      end
    end
  end

  def test_get_intent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::Intent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_intent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ServiceStub.stub :transcode_get_intent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_intent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_intent({ name: name, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_intent name: name, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_intent ::Google::Cloud::Dialogflow::CX::V3::GetIntentRequest.new(name: name, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_intent({ name: name, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_intent(::Google::Cloud::Dialogflow::CX::V3::GetIntentRequest.new(name: name, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_intent_client_stub.call_count
      end
    end
  end

  def test_create_intent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::Intent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    intent = {}
    language_code = "hello world"

    create_intent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ServiceStub.stub :transcode_create_intent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_intent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_intent({ parent: parent, intent: intent, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_intent parent: parent, intent: intent, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_intent ::Google::Cloud::Dialogflow::CX::V3::CreateIntentRequest.new(parent: parent, intent: intent, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_intent({ parent: parent, intent: intent, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_intent(::Google::Cloud::Dialogflow::CX::V3::CreateIntentRequest.new(parent: parent, intent: intent, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_intent_client_stub.call_count
      end
    end
  end

  def test_update_intent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::Intent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    intent = {}
    language_code = "hello world"
    update_mask = {}

    update_intent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ServiceStub.stub :transcode_update_intent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_intent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_intent({ intent: intent, language_code: language_code, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_intent intent: intent, language_code: language_code, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_intent ::Google::Cloud::Dialogflow::CX::V3::UpdateIntentRequest.new(intent: intent, language_code: language_code, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_intent({ intent: intent, language_code: language_code, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_intent(::Google::Cloud::Dialogflow::CX::V3::UpdateIntentRequest.new(intent: intent, language_code: language_code, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_intent_client_stub.call_count
      end
    end
  end

  def test_delete_intent
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_intent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ServiceStub.stub :transcode_delete_intent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_intent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_intent({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_intent name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_intent ::Google::Cloud::Dialogflow::CX::V3::DeleteIntentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_intent({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_intent(::Google::Cloud::Dialogflow::CX::V3::DeleteIntentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_intent_client_stub.call_count
      end
    end
  end

  def test_import_intents
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    intents_uri = "hello world"
    merge_option = :MERGE_OPTION_UNSPECIFIED

    import_intents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ServiceStub.stub :transcode_import_intents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_intents_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_intents({ parent: parent, intents_uri: intents_uri, merge_option: merge_option }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_intents parent: parent, intents_uri: intents_uri, merge_option: merge_option do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_intents ::Google::Cloud::Dialogflow::CX::V3::ImportIntentsRequest.new(parent: parent, intents_uri: intents_uri, merge_option: merge_option) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_intents({ parent: parent, intents_uri: intents_uri, merge_option: merge_option }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_intents(::Google::Cloud::Dialogflow::CX::V3::ImportIntentsRequest.new(parent: parent, intents_uri: intents_uri, merge_option: merge_option), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_intents_client_stub.call_count
      end
    end
  end

  def test_export_intents
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    intents = ["hello world"]
    intents_uri = "hello world"
    data_format = :DATA_FORMAT_UNSPECIFIED

    export_intents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::ServiceStub.stub :transcode_export_intents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, export_intents_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.export_intents({ parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.export_intents parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.export_intents ::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest.new(parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.export_intents({ parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.export_intents(::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest.new(parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, export_intents_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Intents::Rest::Client::Configuration, config
  end
end
