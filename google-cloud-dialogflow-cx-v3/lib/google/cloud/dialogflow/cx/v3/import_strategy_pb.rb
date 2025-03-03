# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/import_strategy.proto

require 'google/protobuf'


descriptor_data = "\n3google/cloud/dialogflow/cx/v3/import_strategy.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3*\xc4\x01\n\x0eImportStrategy\x12\x1f\n\x1bIMPORT_STRATEGY_UNSPECIFIED\x10\x00\x12\x1e\n\x1aIMPORT_STRATEGY_CREATE_NEW\x10\x01\x12\x1b\n\x17IMPORT_STRATEGY_REPLACE\x10\x02\x12\x18\n\x14IMPORT_STRATEGY_KEEP\x10\x03\x12\x19\n\x15IMPORT_STRATEGY_MERGE\x10\x04\x12\x1f\n\x1bIMPORT_STRATEGY_THROW_ERROR\x10\x05\x42\xb6\x01\n!com.google.cloud.dialogflow.cx.v3B\x13ImportStrategyProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          ImportStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ImportStrategy").enummodule
        end
      end
    end
  end
end
