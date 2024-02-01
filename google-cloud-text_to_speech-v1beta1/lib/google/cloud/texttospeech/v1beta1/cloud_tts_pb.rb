# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/texttospeech/v1beta1/cloud_tts.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n1google/cloud/texttospeech/v1beta1/cloud_tts.proto\x12!google.cloud.texttospeech.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"0\n\x11ListVoicesRequest\x12\x1b\n\rlanguage_code\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\"N\n\x12ListVoicesResponse\x12\x38\n\x06voices\x18\x01 \x03(\x0b\x32(.google.cloud.texttospeech.v1beta1.Voice\"\x99\x01\n\x05Voice\x12\x16\n\x0elanguage_codes\x18\x01 \x03(\t\x12\x0c\n\x04name\x18\x02 \x01(\t\x12G\n\x0bssml_gender\x18\x03 \x01(\x0e\x32\x32.google.cloud.texttospeech.v1beta1.SsmlVoiceGender\x12!\n\x19natural_sample_rate_hertz\x18\x04 \x01(\x05\"\xa3\x03\n\x17SynthesizeSpeechRequest\x12\x46\n\x05input\x18\x01 \x01(\x0b\x32\x31.google.cloud.texttospeech.v1beta1.SynthesisInputB\x04\xe2\x41\x01\x02\x12L\n\x05voice\x18\x02 \x01(\x0b\x32\x37.google.cloud.texttospeech.v1beta1.VoiceSelectionParamsB\x04\xe2\x41\x01\x02\x12J\n\x0c\x61udio_config\x18\x03 \x01(\x0b\x32..google.cloud.texttospeech.v1beta1.AudioConfigB\x04\xe2\x41\x01\x02\x12\x66\n\x14\x65nable_time_pointing\x18\x04 \x03(\x0e\x32H.google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest.TimepointType\">\n\rTimepointType\x12\x1e\n\x1aTIMEPOINT_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tSSML_MARK\x10\x01\"@\n\x0eSynthesisInput\x12\x0e\n\x04text\x18\x01 \x01(\tH\x00\x12\x0e\n\x04ssml\x18\x02 \x01(\tH\x00\x42\x0e\n\x0cinput_source\"\xd6\x01\n\x14VoiceSelectionParams\x12\x1b\n\rlanguage_code\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x0c\n\x04name\x18\x02 \x01(\t\x12G\n\x0bssml_gender\x18\x03 \x01(\x0e\x32\x32.google.cloud.texttospeech.v1beta1.SsmlVoiceGender\x12J\n\x0c\x63ustom_voice\x18\x04 \x01(\x0b\x32\x34.google.cloud.texttospeech.v1beta1.CustomVoiceParams\"\xf4\x01\n\x0b\x41udioConfig\x12N\n\x0e\x61udio_encoding\x18\x01 \x01(\x0e\x32\x30.google.cloud.texttospeech.v1beta1.AudioEncodingB\x04\xe2\x41\x01\x02\x12\x1c\n\rspeaking_rate\x18\x02 \x01(\x01\x42\x05\xe2\x41\x02\x04\x01\x12\x14\n\x05pitch\x18\x03 \x01(\x01\x42\x05\xe2\x41\x02\x04\x01\x12\x1d\n\x0evolume_gain_db\x18\x04 \x01(\x01\x42\x05\xe2\x41\x02\x04\x01\x12\x1f\n\x11sample_rate_hertz\x18\x05 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12!\n\x12\x65\x66\x66\x65\x63ts_profile_id\x18\x06 \x03(\tB\x05\xe2\x41\x02\x04\x01\"\xf8\x01\n\x11\x43ustomVoiceParams\x12\x33\n\x05model\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\x12\x62\n\x0ereported_usage\x18\x03 \x01(\x0e\x32\x42.google.cloud.texttospeech.v1beta1.CustomVoiceParams.ReportedUsageB\x06\x18\x01\xe2\x41\x01\x01\"J\n\rReportedUsage\x12\x1e\n\x1aREPORTED_USAGE_UNSPECIFIED\x10\x00\x12\x0c\n\x08REALTIME\x10\x01\x12\x0b\n\x07OFFLINE\x10\x02\"\xb9\x01\n\x18SynthesizeSpeechResponse\x12\x15\n\raudio_content\x18\x01 \x01(\x0c\x12@\n\ntimepoints\x18\x02 \x03(\x0b\x32,.google.cloud.texttospeech.v1beta1.Timepoint\x12\x44\n\x0c\x61udio_config\x18\x04 \x01(\x0b\x32..google.cloud.texttospeech.v1beta1.AudioConfig\"4\n\tTimepoint\x12\x11\n\tmark_name\x18\x04 \x01(\t\x12\x14\n\x0ctime_seconds\x18\x03 \x01(\x01*W\n\x0fSsmlVoiceGender\x12!\n\x1dSSML_VOICE_GENDER_UNSPECIFIED\x10\x00\x12\x08\n\x04MALE\x10\x01\x12\n\n\x06\x46\x45MALE\x10\x02\x12\x0b\n\x07NEUTRAL\x10\x03*z\n\rAudioEncoding\x12\x1e\n\x1a\x41UDIO_ENCODING_UNSPECIFIED\x10\x00\x12\x0c\n\x08LINEAR16\x10\x01\x12\x07\n\x03MP3\x10\x02\x12\x0f\n\x0bMP3_64_KBPS\x10\x04\x12\x0c\n\x08OGG_OPUS\x10\x03\x12\t\n\x05MULAW\x10\x05\x12\x08\n\x04\x41LAW\x10\x06\x32\xd2\x03\n\x0cTextToSpeech\x12\xa2\x01\n\nListVoices\x12\x34.google.cloud.texttospeech.v1beta1.ListVoicesRequest\x1a\x35.google.cloud.texttospeech.v1beta1.ListVoicesResponse\"\'\xda\x41\rlanguage_code\x82\xd3\xe4\x93\x02\x11\x12\x0f/v1beta1/voices\x12\xcb\x01\n\x10SynthesizeSpeech\x12:.google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest\x1a;.google.cloud.texttospeech.v1beta1.SynthesizeSpeechResponse\">\xda\x41\x18input,voice,audio_config\x82\xd3\xe4\x93\x02\x1d\"\x18/v1beta1/text:synthesize:\x01*\x1aO\xca\x41\x1btexttospeech.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xd1\x02\n%com.google.cloud.texttospeech.v1beta1B\x11TextToSpeechProtoP\x01ZIcloud.google.com/go/texttospeech/apiv1beta1/texttospeechpb;texttospeechpb\xf8\x01\x01\xaa\x02!Google.Cloud.TextToSpeech.V1Beta1\xca\x02!Google\\Cloud\\TextToSpeech\\V1beta1\xea\x02$Google::Cloud::TextToSpeech::V1beta1\xea\x41U\n\x1b\x61utoml.googleapis.com/Model\x12\x36projects/{project}/locations/{location}/models/{model}b\x06proto3"

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
    module TextToSpeech
      module V1beta1
        ListVoicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.ListVoicesRequest").msgclass
        ListVoicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.ListVoicesResponse").msgclass
        Voice = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.Voice").msgclass
        SynthesizeSpeechRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest").msgclass
        SynthesizeSpeechRequest::TimepointType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeSpeechRequest.TimepointType").enummodule
        SynthesisInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesisInput").msgclass
        VoiceSelectionParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.VoiceSelectionParams").msgclass
        AudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.AudioConfig").msgclass
        CustomVoiceParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.CustomVoiceParams").msgclass
        CustomVoiceParams::ReportedUsage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.CustomVoiceParams.ReportedUsage").enummodule
        SynthesizeSpeechResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SynthesizeSpeechResponse").msgclass
        Timepoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.Timepoint").msgclass
        SsmlVoiceGender = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.SsmlVoiceGender").enummodule
        AudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.texttospeech.v1beta1.AudioEncoding").enummodule
      end
    end
  end
end
