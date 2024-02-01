# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/stitch_details.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n3google/cloud/video/stitcher/v1/stitch_details.proto\x12\x1egoogle.cloud.video.stitcher.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1cgoogle/protobuf/struct.proto\"\x87\x02\n\x0fVodStitchDetail\x12\x0c\n\x04name\x18\x01 \x01(\t\x12I\n\x11\x61\x64_stitch_details\x18\x03 \x03(\x0b\x32..google.cloud.video.stitcher.v1.AdStitchDetail:\x9a\x01\xea\x41\x96\x01\n,videostitcher.googleapis.com/VodStitchDetail\x12\x66projects/{project}/locations/{location}/vodSessions/{vod_session}/vodStitchDetails/{vod_stitch_detail}\"\xaa\x02\n\x0e\x41\x64StitchDetail\x12\x19\n\x0b\x61\x64_break_id\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x13\n\x05\x61\x64_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x37\n\x0e\x61\x64_time_offset\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\xe2\x41\x01\x02\x12\x19\n\x0bskip_reason\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12N\n\x05media\x18\x05 \x03(\x0b\x32\x39.google.cloud.video.stitcher.v1.AdStitchDetail.MediaEntryB\x04\xe2\x41\x01\x01\x1a\x44\n\nMediaEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x42z\n\"com.google.cloud.video.stitcher.v1B\x12StitchDetailsProtoP\x01Z>cloud.google.com/go/video/stitcher/apiv1/stitcherpb;stitcherpbb\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
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
    module Video
      module Stitcher
        module V1
          VodStitchDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.VodStitchDetail").msgclass
          AdStitchDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.AdStitchDetail").msgclass
        end
      end
    end
  end
end
