# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/live_configs.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'


descriptor_data = "\n1google/cloud/video/stitcher/v1/live_configs.proto\x12\x1egoogle.cloud.video.stitcher.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\"\x92\x06\n\nLiveConfig\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x18\n\nsource_uri\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x12\n\nad_tag_uri\x18\x03 \x01(\t\x12\x46\n\x0fgam_live_config\x18\x04 \x01(\x0b\x32-.google.cloud.video.stitcher.v1.GamLiveConfig\x12\x45\n\x05state\x18\x05 \x01(\x0e\x32\x30.google.cloud.video.stitcher.v1.LiveConfig.StateB\x04\xe2\x41\x01\x03\x12\x45\n\x0b\x61\x64_tracking\x18\x06 \x01(\x0e\x32*.google.cloud.video.stitcher.v1.AdTrackingB\x04\xe2\x41\x01\x02\x12>\n\rdefault_slate\x18\x07 \x01(\tB\'\xfa\x41$\n\"videostitcher.googleapis.com/Slate\x12T\n\x10stitching_policy\x18\x08 \x01(\x0e\x32:.google.cloud.video.stitcher.v1.LiveConfig.StitchingPolicy\x12G\n\x0fprefetch_config\x18\n \x01(\x0b\x32..google.cloud.video.stitcher.v1.PrefetchConfig\"E\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\"U\n\x0fStitchingPolicy\x12 \n\x1cSTITCHING_POLICY_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x43UT_CURRENT\x10\x01\x12\x0f\n\x0b\x43OMPLETE_AD\x10\x02:o\xea\x41l\n\'videostitcher.googleapis.com/LiveConfig\x12\x41projects/{project}/locations/{location}/liveConfigs/{live_config}\"g\n\x0ePrefetchConfig\x12\x15\n\x07\x65nabled\x18\x01 \x01(\x08\x42\x04\xe2\x41\x01\x02\x12>\n\x1binitial_ad_request_duration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"d\n\rGamLiveConfig\x12\x1a\n\x0cnetwork_code\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x17\n\tasset_key\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1e\n\x10\x63ustom_asset_key\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03*A\n\nAdTracking\x12\x1b\n\x17\x41\x44_TRACKING_UNSPECIFIED\x10\x00\x12\n\n\x06\x43LIENT\x10\x01\x12\n\n\x06SERVER\x10\x02\x42x\n\"com.google.cloud.video.stitcher.v1B\x10LiveConfigsProtoP\x01Z>cloud.google.com/go/video/stitcher/apiv1/stitcherpb;stitcherpbb\x06proto3"

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
          LiveConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.LiveConfig").msgclass
          LiveConfig::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.LiveConfig.State").enummodule
          LiveConfig::StitchingPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.LiveConfig.StitchingPolicy").enummodule
          PrefetchConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.PrefetchConfig").msgclass
          GamLiveConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.GamLiveConfig").msgclass
          AdTracking = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.AdTracking").enummodule
        end
      end
    end
  end
end
