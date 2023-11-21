# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/deploy/v1/rollout_update_payload.proto

require 'google/protobuf'

require 'google/cloud/deploy/v1/log_enums_pb'


descriptor_data = "\n3google/cloud/deploy/v1/rollout_update_payload.proto\x12\x16google.cloud.deploy.v1\x1a&google/cloud/deploy/v1/log_enums.proto\"\x86\x04\n\x12RolloutUpdateEvent\x12\x14\n\x0cpipeline_uid\x18\x01 \x01(\t\x12\x13\n\x0brelease_uid\x18\x02 \x01(\t\x12\x0f\n\x07rollout\x18\x03 \x01(\t\x12\x11\n\ttarget_id\x18\x04 \x01(\t\x12Y\n\x13rollout_update_type\x18\x05 \x01(\x0e\x32<.google.cloud.deploy.v1.RolloutUpdateEvent.RolloutUpdateType\x12\x0f\n\x07message\x18\x06 \x01(\t\x12*\n\x04type\x18\x07 \x01(\x0e\x32\x1c.google.cloud.deploy.v1.Type\"\x88\x02\n\x11RolloutUpdateType\x12#\n\x1fROLLOUT_UPDATE_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x13\n\x0fPENDING_RELEASE\x10\x02\x12\x0f\n\x0bIN_PROGRESS\x10\x03\x12\x0e\n\nCANCELLING\x10\x04\x12\r\n\tCANCELLED\x10\x05\x12\n\n\x06HALTED\x10\x06\x12\r\n\tSUCCEEDED\x10\x07\x12\n\n\x06\x46\x41ILED\x10\x08\x12\x15\n\x11\x41PPROVAL_REQUIRED\x10\t\x12\x0c\n\x08\x41PPROVED\x10\n\x12\x0c\n\x08REJECTED\x10\x0b\x12\x14\n\x10\x41\x44VANCE_REQUIRED\x10\x0c\x12\x0c\n\x08\x41\x44VANCED\x10\rBm\n\x1a\x63om.google.cloud.deploy.v1B\x19RolloutUpdatePayloadProtoP\x01Z2cloud.google.com/go/deploy/apiv1/deploypb;deploypbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
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
    module Deploy
      module V1
        RolloutUpdateEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.RolloutUpdateEvent").msgclass
        RolloutUpdateEvent::RolloutUpdateType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.RolloutUpdateEvent.RolloutUpdateType").enummodule
      end
    end
  end
end