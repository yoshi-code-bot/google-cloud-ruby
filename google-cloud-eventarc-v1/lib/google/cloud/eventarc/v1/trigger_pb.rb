# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/trigger.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/eventarc/v1/network_config_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/code_pb'


descriptor_data = "\n&google/cloud/eventarc/v1/trigger.proto\x12\x18google.cloud.eventarc.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/eventarc/v1/network_config.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x15google/rpc/code.proto\"\x9e\x07\n\x07Trigger\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x44\n\revent_filters\x18\x08 \x03(\x0b\x32%.google.cloud.eventarc.v1.EventFilterB\x06\xe0\x41\x06\xe0\x41\x02\x12\x42\n\x0fservice_account\x18\t \x01(\tB)\xe0\x41\x01\xfa\x41#\n!iam.googleapis.com/ServiceAccount\x12?\n\x0b\x64\x65stination\x18\n \x01(\x0b\x32%.google.cloud.eventarc.v1.DestinationB\x03\xe0\x41\x02\x12;\n\ttransport\x18\x0b \x01(\x0b\x32#.google.cloud.eventarc.v1.TransportB\x03\xe0\x41\x01\x12\x42\n\x06labels\x18\x0c \x03(\x0b\x32-.google.cloud.eventarc.v1.Trigger.LabelsEntryB\x03\xe0\x41\x01\x12\x14\n\x07\x63hannel\x18\r \x01(\tB\x03\xe0\x41\x01\x12J\n\nconditions\x18\x0f \x03(\x0b\x32\x31.google.cloud.eventarc.v1.Trigger.ConditionsEntryB\x03\xe0\x41\x03\x12$\n\x17\x65vent_data_content_type\x18\x10 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rsatisfies_pzs\x18\x13 \x01(\x08\x42\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x63 \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a[\n\x0f\x43onditionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x37\n\x05value\x18\x02 \x01(\x0b\x32(.google.cloud.eventarc.v1.StateCondition:\x02\x38\x01:s\xea\x41p\n\x1f\x65ventarc.googleapis.com/Trigger\x12:projects/{project}/locations/{location}/triggers/{trigger}*\x08triggers2\x07trigger\"P\n\x0b\x45ventFilter\x12\x16\n\tattribute\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05value\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08operator\x18\x03 \x01(\tB\x03\xe0\x41\x01\"A\n\x0eStateCondition\x12\x1e\n\x04\x63ode\x18\x01 \x01(\x0e\x32\x10.google.rpc.Code\x12\x0f\n\x07message\x18\x02 \x01(\t\"\x91\x03\n\x0b\x44\x65stination\x12\x37\n\tcloud_run\x18\x01 \x01(\x0b\x32\".google.cloud.eventarc.v1.CloudRunH\x00\x12J\n\x0e\x63loud_function\x18\x02 \x01(\tB0\xfa\x41-\n+cloudfunctions.googleapis.com/CloudFunctionH\x00\x12,\n\x03gke\x18\x03 \x01(\x0b\x32\x1d.google.cloud.eventarc.v1.GKEH\x00\x12:\n\x08workflow\x18\x04 \x01(\tB&\xfa\x41#\n!workflows.googleapis.com/WorkflowH\x00\x12?\n\rhttp_endpoint\x18\x05 \x01(\x0b\x32&.google.cloud.eventarc.v1.HttpEndpointH\x00\x12\x44\n\x0enetwork_config\x18\x06 \x01(\x0b\x32\'.google.cloud.eventarc.v1.NetworkConfigB\x03\xe0\x41\x01\x42\x0c\n\ndescriptor\"O\n\tTransport\x12\x32\n\x06pubsub\x18\x01 \x01(\x0b\x32 .google.cloud.eventarc.v1.PubsubH\x00\x42\x0e\n\x0cintermediary\"g\n\x08\x43loudRun\x12\x33\n\x07service\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1arun.googleapis.com/Service\x12\x11\n\x04path\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06region\x18\x03 \x01(\tB\x03\xe0\x41\x02\"s\n\x03GKE\x12\x14\n\x07\x63luster\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08location\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tnamespace\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x07service\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04path\x18\x05 \x01(\tB\x03\xe0\x41\x01\"7\n\x06Pubsub\x12\x12\n\x05topic\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0csubscription\x18\x02 \x01(\tB\x03\xe0\x41\x03\" \n\x0cHttpEndpoint\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\x42\xb1\x04\n\x1c\x63om.google.cloud.eventarc.v1B\x0cTriggerProtoP\x01Z8cloud.google.com/go/eventarc/apiv1/eventarcpb;eventarcpb\xea\x41k\n+cloudfunctions.googleapis.com/CloudFunction\x12<projects/{project}/locations/{location}/functions/{function}\xea\x41Y\n!iam.googleapis.com/ServiceAccount\x12\x34projects/{project}/serviceAccounts/{service_account}\xea\x41\x1f\n\x1arun.googleapis.com/Service\x12\x01*\xea\x41\x61\n!workflows.googleapis.com/Workflow\x12<projects/{project}/locations/{location}/workflows/{workflow}\xea\x41v\n(compute.googleapis.com/NetworkAttachment\x12Jprojects/{project}/regions/{region}/networkAttachments/{networkattachment}b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.eventarc.v1.NetworkConfig", "google/cloud/eventarc/v1/network_config.proto"],
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
    module Eventarc
      module V1
        Trigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Trigger").msgclass
        EventFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.EventFilter").msgclass
        StateCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.StateCondition").msgclass
        Destination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Destination").msgclass
        Transport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Transport").msgclass
        CloudRun = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CloudRun").msgclass
        GKE = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GKE").msgclass
        Pubsub = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Pubsub").msgclass
        HttpEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.HttpEndpoint").msgclass
      end
    end
  end
end
