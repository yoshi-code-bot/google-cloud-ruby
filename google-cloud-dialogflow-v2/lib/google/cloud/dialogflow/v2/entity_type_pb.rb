# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/entity_type.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n,google/cloud/dialogflow/v2/entity_type.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xc3\x05\n\nEntityType\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12>\n\x04kind\x18\x03 \x01(\x0e\x32+.google.cloud.dialogflow.v2.EntityType.KindB\x03\xe0\x41\x02\x12Z\n\x13\x61uto_expansion_mode\x18\x04 \x01(\x0e\x32\x38.google.cloud.dialogflow.v2.EntityType.AutoExpansionModeB\x03\xe0\x41\x01\x12\x44\n\x08\x65ntities\x18\x06 \x03(\x0b\x32-.google.cloud.dialogflow.v2.EntityType.EntityB\x03\xe0\x41\x01\x12$\n\x17\x65nable_fuzzy_extraction\x18\x07 \x01(\x08\x42\x03\xe0\x41\x01\x1a\x33\n\x06\x45ntity\x12\x12\n\x05value\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08synonyms\x18\x02 \x03(\tB\x03\xe0\x41\x02\"J\n\x04Kind\x12\x14\n\x10KIND_UNSPECIFIED\x10\x00\x12\x0c\n\x08KIND_MAP\x10\x01\x12\r\n\tKIND_LIST\x10\x02\x12\x0f\n\x0bKIND_REGEXP\x10\x03\"Y\n\x11\x41utoExpansionMode\x12#\n\x1f\x41UTO_EXPANSION_MODE_UNSPECIFIED\x10\x00\x12\x1f\n\x1b\x41UTO_EXPANSION_MODE_DEFAULT\x10\x01:\xa7\x01\xea\x41\xa3\x01\n$dialogflow.googleapis.com/EntityType\x12\x32projects/{project}/agent/entityTypes/{entity_type}\x12Gprojects/{project}/locations/{location}/agent/entityTypes/{entity_type}\"\xa3\x01\n\x16ListEntityTypesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$dialogflow.googleapis.com/EntityType\x12\x1a\n\rlanguage_code\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tpage_size\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x04 \x01(\tB\x03\xe0\x41\x01\"p\n\x17ListEntityTypesResponse\x12<\n\x0c\x65ntity_types\x18\x01 \x03(\x0b\x32&.google.cloud.dialogflow.v2.EntityType\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"n\n\x14GetEntityTypeRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/EntityType\x12\x1a\n\rlanguage_code\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xb5\x01\n\x17\x43reateEntityTypeRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$dialogflow.googleapis.com/EntityType\x12@\n\x0b\x65ntity_type\x18\x02 \x01(\x0b\x32&.google.cloud.dialogflow.v2.EntityTypeB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xad\x01\n\x17UpdateEntityTypeRequest\x12@\n\x0b\x65ntity_type\x18\x01 \x01(\x0b\x32&.google.cloud.dialogflow.v2.EntityTypeB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\"U\n\x17\x44\x65leteEntityTypeRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/EntityType\"\xb6\x02\n\x1d\x42\x61tchUpdateEntityTypesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$dialogflow.googleapis.com/EntityType\x12\x1f\n\x15\x65ntity_type_batch_uri\x18\x02 \x01(\tH\x00\x12O\n\x18\x65ntity_type_batch_inline\x18\x03 \x01(\x0b\x32+.google.cloud.dialogflow.v2.EntityTypeBatchH\x00\x12\x1a\n\rlanguage_code\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0bupdate_mask\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x42\x13\n\x11\x65ntity_type_batch\"^\n\x1e\x42\x61tchUpdateEntityTypesResponse\x12<\n\x0c\x65ntity_types\x18\x01 \x03(\x0b\x32&.google.cloud.dialogflow.v2.EntityType\"}\n\x1d\x42\x61tchDeleteEntityTypesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$dialogflow.googleapis.com/EntityType\x12\x1e\n\x11\x65ntity_type_names\x18\x02 \x03(\tB\x03\xe0\x41\x02\"\xbc\x01\n\x1a\x42\x61tchCreateEntitiesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/EntityType\x12\x44\n\x08\x65ntities\x18\x02 \x03(\x0b\x32-.google.cloud.dialogflow.v2.EntityType.EntityB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xf2\x01\n\x1a\x42\x61tchUpdateEntitiesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/EntityType\x12\x44\n\x08\x65ntities\x18\x02 \x03(\x0b\x32-.google.cloud.dialogflow.v2.EntityType.EntityB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0bupdate_mask\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\"\x92\x01\n\x1a\x42\x61tchDeleteEntitiesRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/EntityType\x12\x1a\n\rentity_values\x18\x02 \x03(\tB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x03 \x01(\tB\x03\xe0\x41\x01\"O\n\x0f\x45ntityTypeBatch\x12<\n\x0c\x65ntity_types\x18\x01 \x03(\x0b\x32&.google.cloud.dialogflow.v2.EntityType2\xd6\x19\n\x0b\x45ntityTypes\x12\x87\x02\n\x0fListEntityTypes\x12\x32.google.cloud.dialogflow.v2.ListEntityTypesRequest\x1a\x33.google.cloud.dialogflow.v2.ListEntityTypesResponse\"\x8a\x01\xda\x41\x06parent\xda\x41\x14parent,language_code\x82\xd3\xe4\x93\x02\x64\x12)/v2/{parent=projects/*/agent}/entityTypesZ7\x12\x35/v2/{parent=projects/*/locations/*/agent}/entityTypes\x12\xf2\x01\n\rGetEntityType\x12\x30.google.cloud.dialogflow.v2.GetEntityTypeRequest\x1a&.google.cloud.dialogflow.v2.EntityType\"\x86\x01\xda\x41\x04name\xda\x41\x12name,language_code\x82\xd3\xe4\x93\x02\x64\x12)/v2/{name=projects/*/agent/entityTypes/*}Z7\x12\x35/v2/{name=projects/*/locations/*/agent/entityTypes/*}\x12\xae\x02\n\x10\x43reateEntityType\x12\x33.google.cloud.dialogflow.v2.CreateEntityTypeRequest\x1a&.google.cloud.dialogflow.v2.EntityType\"\xbc\x01\xda\x41\x12parent,entity_type\xda\x41 parent,entity_type,language_code\x82\xd3\xe4\x93\x02~\")/v2/{parent=projects/*/agent}/entityTypes:\x0b\x65ntity_typeZD\"5/v2/{parent=projects/*/locations/*/agent}/entityTypes:\x0b\x65ntity_type\x12\xb9\x02\n\x10UpdateEntityType\x12\x33.google.cloud.dialogflow.v2.UpdateEntityTypeRequest\x1a&.google.cloud.dialogflow.v2.EntityType\"\xc7\x01\xda\x41\x0b\x65ntity_type\xda\x41\x19\x65ntity_type,language_code\x82\xd3\xe4\x93\x02\x96\x01\x32\x35/v2/{entity_type.name=projects/*/agent/entityTypes/*}:\x0b\x65ntity_typeZP2A/v2/{entity_type.name=projects/*/locations/*/agent/entityTypes/*}:\x0b\x65ntity_type\x12\xd2\x01\n\x10\x44\x65leteEntityType\x12\x33.google.cloud.dialogflow.v2.DeleteEntityTypeRequest\x1a\x16.google.protobuf.Empty\"q\xda\x41\x04name\x82\xd3\xe4\x93\x02\x64*)/v2/{name=projects/*/agent/entityTypes/*}Z7*5/v2/{name=projects/*/locations/*/agent/entityTypes/*}\x12\xd4\x02\n\x16\x42\x61tchUpdateEntityTypes\x12\x39.google.cloud.dialogflow.v2.BatchUpdateEntityTypesRequest\x1a\x1d.google.longrunning.Operation\"\xdf\x01\xca\x41S\n9google.cloud.dialogflow.v2.BatchUpdateEntityTypesResponse\x12\x16google.protobuf.Struct\x82\xd3\xe4\x93\x02\x82\x01\"5/v2/{parent=projects/*/agent}/entityTypes:batchUpdate:\x01*ZF\"A/v2/{parent=projects/*/locations/*/agent}/entityTypes:batchUpdate:\x01*\x12\xcb\x02\n\x16\x42\x61tchDeleteEntityTypes\x12\x39.google.cloud.dialogflow.v2.BatchDeleteEntityTypesRequest\x1a\x1d.google.longrunning.Operation\"\xd6\x01\xca\x41/\n\x15google.protobuf.Empty\x12\x16google.protobuf.Struct\xda\x41\x18parent,entity_type_names\x82\xd3\xe4\x93\x02\x82\x01\"5/v2/{parent=projects/*/agent}/entityTypes:batchDelete:\x01*ZF\"A/v2/{parent=projects/*/locations/*/agent}/entityTypes:batchDelete:\x01*\x12\xf2\x02\n\x13\x42\x61tchCreateEntities\x12\x36.google.cloud.dialogflow.v2.BatchCreateEntitiesRequest\x1a\x1d.google.longrunning.Operation\"\x83\x02\xca\x41/\n\x15google.protobuf.Empty\x12\x16google.protobuf.Struct\xda\x41\x0fparent,entities\xda\x41\x1dparent,entities,language_code\x82\xd3\xe4\x93\x02\x98\x01\"@/v2/{parent=projects/*/agent/entityTypes/*}/entities:batchCreate:\x01*ZQ\"L/v2/{parent=projects/*/locations/*/agent/entityTypes/*}/entities:batchCreate:\x01*\x12\xf2\x02\n\x13\x42\x61tchUpdateEntities\x12\x36.google.cloud.dialogflow.v2.BatchUpdateEntitiesRequest\x1a\x1d.google.longrunning.Operation\"\x83\x02\xca\x41/\n\x15google.protobuf.Empty\x12\x16google.protobuf.Struct\xda\x41\x0fparent,entities\xda\x41\x1dparent,entities,language_code\x82\xd3\xe4\x93\x02\x98\x01\"@/v2/{parent=projects/*/agent/entityTypes/*}/entities:batchUpdate:\x01*ZQ\"L/v2/{parent=projects/*/locations/*/agent/entityTypes/*}/entities:batchUpdate:\x01*\x12\xfc\x02\n\x13\x42\x61tchDeleteEntities\x12\x36.google.cloud.dialogflow.v2.BatchDeleteEntitiesRequest\x1a\x1d.google.longrunning.Operation\"\x8d\x02\xca\x41/\n\x15google.protobuf.Empty\x12\x16google.protobuf.Struct\xda\x41\x14parent,entity_values\xda\x41\"parent,entity_values,language_code\x82\xd3\xe4\x93\x02\x98\x01\"@/v2/{parent=projects/*/agent/entityTypes/*}/entities:batchDelete:\x01*ZQ\"L/v2/{parent=projects/*/locations/*/agent/entityTypes/*}/entities:batchDelete:\x01*\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\x95\x01\n\x1e\x63om.google.cloud.dialogflow.v2B\x0f\x45ntityTypeProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
      module V2
        EntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.EntityType").msgclass
        EntityType::Entity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.EntityType.Entity").msgclass
        EntityType::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.EntityType.Kind").enummodule
        EntityType::AutoExpansionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.EntityType.AutoExpansionMode").enummodule
        ListEntityTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListEntityTypesRequest").msgclass
        ListEntityTypesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListEntityTypesResponse").msgclass
        GetEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetEntityTypeRequest").msgclass
        CreateEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateEntityTypeRequest").msgclass
        UpdateEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateEntityTypeRequest").msgclass
        DeleteEntityTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteEntityTypeRequest").msgclass
        BatchUpdateEntityTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchUpdateEntityTypesRequest").msgclass
        BatchUpdateEntityTypesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchUpdateEntityTypesResponse").msgclass
        BatchDeleteEntityTypesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchDeleteEntityTypesRequest").msgclass
        BatchCreateEntitiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchCreateEntitiesRequest").msgclass
        BatchUpdateEntitiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchUpdateEntitiesRequest").msgclass
        BatchDeleteEntitiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchDeleteEntitiesRequest").msgclass
        EntityTypeBatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.EntityTypeBatch").msgclass
      end
    end
  end
end
