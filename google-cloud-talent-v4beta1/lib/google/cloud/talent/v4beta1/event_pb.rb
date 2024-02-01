# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/event.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\'google/cloud/talent/v4beta1/event.proto\x12\x1bgoogle.cloud.talent.v4beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xca\x01\n\x0b\x43lientEvent\x12\x12\n\nrequest_id\x18\x01 \x01(\t\x12\x16\n\x08\x65vent_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x35\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x02\x12:\n\tjob_event\x18\x05 \x01(\x0b\x32%.google.cloud.talent.v4beta1.JobEventH\x00\x12\x13\n\x0b\x65vent_notes\x18\t \x01(\tB\x07\n\x05\x65vent\"\xf8\x03\n\x08JobEvent\x12\x46\n\x04type\x18\x01 \x01(\x0e\x32\x32.google.cloud.talent.v4beta1.JobEvent.JobEventTypeB\x04\xe2\x41\x01\x02\x12\x12\n\x04jobs\x18\x02 \x03(\tB\x04\xe2\x41\x01\x02\x12\x0f\n\x07profile\x18\x03 \x01(\t\"\xfe\x02\n\x0cJobEventType\x12\x1e\n\x1aJOB_EVENT_TYPE_UNSPECIFIED\x10\x00\x12\x0e\n\nIMPRESSION\x10\x01\x12\x08\n\x04VIEW\x10\x02\x12\x11\n\rVIEW_REDIRECT\x10\x03\x12\x15\n\x11\x41PPLICATION_START\x10\x04\x12\x16\n\x12\x41PPLICATION_FINISH\x10\x05\x12 \n\x1c\x41PPLICATION_QUICK_SUBMISSION\x10\x06\x12\x18\n\x14\x41PPLICATION_REDIRECT\x10\x07\x12!\n\x1d\x41PPLICATION_START_FROM_SEARCH\x10\x08\x12$\n APPLICATION_REDIRECT_FROM_SEARCH\x10\t\x12\x1e\n\x1a\x41PPLICATION_COMPANY_SUBMIT\x10\n\x12\x0c\n\x08\x42OOKMARK\x10\x0b\x12\x10\n\x0cNOTIFICATION\x10\x0c\x12\t\n\x05HIRED\x10\r\x12\x0b\n\x07SENT_CV\x10\x0e\x12\x15\n\x11INTERVIEW_GRANTED\x10\x0f\x42n\n\x1f\x63om.google.cloud.talent.v4beta1B\nEventProtoP\x01Z7cloud.google.com/go/talent/apiv4beta1/talentpb;talentpb\xa2\x02\x03\x43TSb\x06proto3"

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
    module Talent
      module V4beta1
        ClientEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ClientEvent").msgclass
        JobEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobEvent").msgclass
        JobEvent::JobEventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobEvent.JobEventType").enummodule
      end
    end
  end
end
