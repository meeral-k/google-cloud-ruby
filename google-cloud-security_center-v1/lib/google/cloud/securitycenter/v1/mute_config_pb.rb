# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/mute_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n0google/cloud/securitycenter/v1/mute_config.proto\x12\x1egoogle.cloud.securitycenter.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe9\x06\n\nMuteConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x18\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x02\x18\x01\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x1f\n\x12most_recent_editor\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12L\n\x04type\x18\x08 \x01(\x0e\x32\x39.google.cloud.securitycenter.v1.MuteConfig.MuteConfigTypeB\x03\xe0\x41\x01\x12\x34\n\x0b\x65xpiry_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"K\n\x0eMuteConfigType\x12 \n\x1cMUTE_CONFIG_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06STATIC\x10\x01\x12\x0b\n\x07\x44YNAMIC\x10\x02:\xaa\x03\xea\x41\xa6\x03\n(securitycenter.googleapis.com/MuteConfig\x12\x36organizations/{organization}/muteConfigs/{mute_config}\x12*folders/{folder}/muteConfigs/{mute_config}\x12,projects/{project}/muteConfigs/{mute_config}\x12Korganizations/{organization}/locations/{location}/muteConfigs/{mute_config}\x12?folders/{folder}/locations/{location}/muteConfigs/{mute_config}\x12\x41projects/{project}/locations/{location}/muteConfigs/{mute_config}*\x0bmuteConfigs2\nmuteConfigB\xe9\x01\n\"com.google.cloud.securitycenter.v1B\x0fMuteConfigProtoP\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

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
    module SecurityCenter
      module V1
        MuteConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.MuteConfig").msgclass
        MuteConfig::MuteConfigType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.MuteConfig.MuteConfigType").enummodule
      end
    end
  end
end
