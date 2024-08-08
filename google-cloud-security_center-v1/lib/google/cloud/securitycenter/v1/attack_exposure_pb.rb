# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/attack_exposure.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/securitycenter/v1/attack_exposure.proto\x12\x1egoogle.cloud.securitycenter.v1\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8a\x03\n\x0e\x41ttackExposure\x12\r\n\x05score\x18\x01 \x01(\x01\x12;\n\x17latest_calculation_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1e\n\x16\x61ttack_exposure_result\x18\x03 \x01(\t\x12\x43\n\x05state\x18\x04 \x01(\x0e\x32\x34.google.cloud.securitycenter.v1.AttackExposure.State\x12*\n\"exposed_high_value_resources_count\x18\x05 \x01(\x05\x12,\n$exposed_medium_value_resources_count\x18\x06 \x01(\x05\x12)\n!exposed_low_value_resources_count\x18\x07 \x01(\x05\"B\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0e\n\nCALCULATED\x10\x01\x12\x12\n\x0eNOT_CALCULATED\x10\x02\x42\xed\x01\n\"com.google.cloud.securitycenter.v1B\x13\x41ttackExposureProtoP\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

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
        AttackExposure = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.AttackExposure").msgclass
        AttackExposure::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.AttackExposure.State").enummodule
      end
    end
  end
end
