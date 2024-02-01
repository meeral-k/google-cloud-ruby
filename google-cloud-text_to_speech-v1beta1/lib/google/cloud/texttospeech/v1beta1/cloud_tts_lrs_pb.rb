# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/texttospeech/v1beta1/cloud_tts_lrs.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/cloud/texttospeech/v1beta1/cloud_tts_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n5google/cloud/texttospeech/v1beta1/cloud_tts_lrs.proto\x12!google.cloud.texttospeech.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x31google/cloud/texttospeech/v1beta1/cloud_tts.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xac\x02\n\x1aSynthesizeLongAudioRequest\x12\x0e\n\x06parent\x18\x01 \x01(\t\x12\x46\n\x05input\x18\x02 \x01(\x0b\x32\x31.google.cloud.texttospeech.v1beta1.SynthesisInputB\x04\xe2\x41\x01\x02\x12J\n\x0c\x61udio_config\x18\x03 \x01(\x0b\x32..google.cloud.texttospeech.v1beta1.AudioConfigB\x04\xe2\x41\x01\x02\x12\x1c\n\x0eoutput_gcs_uri\x18\x04 \x01(\tB\x04\xe2\x41\x01\x02\x12L\n\x05voice\x18\x05 \x01(\x0b\x32\x37.google.cloud.texttospeech.v1beta1.VoiceSelectionParamsB\x04\xe2\x41\x01\x02\"\x1d\n\x1bSynthesizeLongAudioResponse\"\xa4\x01\n\x1bSynthesizeLongAudioMetadata\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x38\n\x10last_update_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x02\x18\x01\x12\x1b\n\x13progress_percentage\x18\x03 \x01(\x01\x32\xb3\x03\n\x1fTextToSpeechLongAudioSynthesize\x12\xbe\x02\n\x13SynthesizeLongAudio\x12=.google.cloud.texttospeech.v1beta1.SynthesizeLongAudioRequest\x1a\x1d.google.longrunning.Operation\"\xc8\x01\xca\x41~\n=google.cloud.texttospeech.v1beta1.SynthesizeLongAudioResponse\x12=google.cloud.texttospeech.v1beta1.SynthesizeLongAudioMetadata\x82\xd3\xe4\x93\x02\x41\"</v1beta1/{parent=projects/*/locations/*}:synthesizeLongAudio:\x01*\x1aO\xca\x41\x1btexttospeech.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x8b\x02\n%com.google.cloud.texttospeech.v1beta1B#TextToSpeechLongAudioSynthesisProtoP\x01ZIcloud.google.com/go/texttospeech/apiv1beta1/texttospeechpb;texttospeechpb\xf8\x01\x01\xaa\x02!Google.Cloud.TextToSpeech.V1Beta1\xca\x02!Google\\Cloud\\TextToSpeech\\V1beta1\xea\x02$Google::Cloud::TextToSpeech::V1beta1b\x06proto3"

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
    ["google.cloud.texttospeech.v1beta1.SynthesisInput", "google/cloud/texttospeech/v1beta1/cloud_tts.proto"],
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
    module TextToSpeech
      module V1beta1
        SynthesizeLongAudioRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeLongAudioRequest").msgclass
        SynthesizeLongAudioResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeLongAudioResponse").msgclass
        SynthesizeLongAudioMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeLongAudioMetadata").msgclass
      end
    end
  end
end
