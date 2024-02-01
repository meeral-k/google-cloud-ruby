# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/translate/v3/adaptive_mt.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/translate/v3/common_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n+google/cloud/translate/v3/adaptive_mt.proto\x12\x1bgoogle.cloud.translation.v3\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/translate/v3/common.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa4\x03\n\x11\x41\x64\x61ptiveMtDataset\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*translate.googleapis.com/AdaptiveMtDataset\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x1c\n\x14source_language_code\x18\x03 \x01(\t\x12\x1c\n\x14target_language_code\x18\x04 \x01(\t\x12\x15\n\rexample_count\x18\x05 \x01(\x05\x12\x35\n\x0b\x63reate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03:u\xea\x41r\n*translate.googleapis.com/AdaptiveMtDataset\x12\x44projects/{project}/locations/{location}/adaptiveMtDatasets/{dataset}\"\xaf\x01\n\x1e\x43reateAdaptiveMtDatasetRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12Q\n\x13\x61\x64\x61ptive_mt_dataset\x18\x02 \x01(\x0b\x32..google.cloud.translation.v3.AdaptiveMtDatasetB\x04\xe2\x41\x01\x02\"c\n\x1e\x44\x65leteAdaptiveMtDatasetRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*translate.googleapis.com/AdaptiveMtDataset\"`\n\x1bGetAdaptiveMtDatasetRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*translate.googleapis.com/AdaptiveMtDataset\"\xa4\x01\n\x1dListAdaptiveMtDatasetsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\"\x93\x01\n\x1eListAdaptiveMtDatasetsResponse\x12R\n\x14\x61\x64\x61ptive_mt_datasets\x18\x01 \x03(\x0b\x32..google.cloud.translation.v3.AdaptiveMtDatasetB\x04\xe2\x41\x01\x03\x12\x1d\n\x0fnext_page_token\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"\xb5\x01\n\x1a\x41\x64\x61ptiveMtTranslateRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x44\n\x07\x64\x61taset\x18\x02 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*translate.googleapis.com/AdaptiveMtDataset\x12\x15\n\x07\x63ontent\x18\x03 \x03(\tB\x04\xe2\x41\x01\x02\"6\n\x15\x41\x64\x61ptiveMtTranslation\x12\x1d\n\x0ftranslated_text\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\"\x8a\x01\n\x1b\x41\x64\x61ptiveMtTranslateResponse\x12N\n\x0ctranslations\x18\x01 \x03(\x0b\x32\x32.google.cloud.translation.v3.AdaptiveMtTranslationB\x04\xe2\x41\x01\x03\x12\x1b\n\rlanguage_code\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\"\xf6\x02\n\x0e\x41\x64\x61ptiveMtFile\x12>\n\x04name\x18\x01 \x01(\tB0\xe2\x41\x01\x02\xfa\x41)\n\'translate.googleapis.com/AdaptiveMtFile\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x65ntry_count\x18\x03 \x01(\x05\x12\x35\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03:\x8a\x01\xea\x41\x86\x01\n\'translate.googleapis.com/AdaptiveMtFile\x12[projects/{project}/locations/{location}/adaptiveMtDatasets/{dataset}/adaptiveMtFiles/{file}\"Z\n\x18GetAdaptiveMtFileRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe2\x41\x01\x02\xfa\x41)\n\'translate.googleapis.com/AdaptiveMtFile\"]\n\x1b\x44\x65leteAdaptiveMtFileRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe2\x41\x01\x02\xfa\x41)\n\'translate.googleapis.com/AdaptiveMtFile\"\x80\x02\n\x1bImportAdaptiveMtFileRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*translate.googleapis.com/AdaptiveMtDataset\x12I\n\x11\x66ile_input_source\x18\x02 \x01(\x0b\x32,.google.cloud.translation.v3.FileInputSourceH\x00\x12G\n\x10gcs_input_source\x18\x03 \x01(\x0b\x32+.google.cloud.translation.v3.GcsInputSourceH\x00\x42\x08\n\x06source\"k\n\x1cImportAdaptiveMtFileResponse\x12K\n\x10\x61\x64\x61ptive_mt_file\x18\x01 \x01(\x0b\x32+.google.cloud.translation.v3.AdaptiveMtFileB\x04\xe2\x41\x01\x03\"\x94\x01\n\x1aListAdaptiveMtFilesRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*translate.googleapis.com/AdaptiveMtDataset\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"\x8a\x01\n\x1bListAdaptiveMtFilesResponse\x12L\n\x11\x61\x64\x61ptive_mt_files\x18\x01 \x03(\x0b\x32+.google.cloud.translation.v3.AdaptiveMtFileB\x04\xe2\x41\x01\x03\x12\x1d\n\x0fnext_page_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"\xb4\x03\n\x12\x41\x64\x61ptiveMtSentence\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe2\x41\x01\x02\xfa\x41-\n+translate.googleapis.com/AdaptiveMtSentence\x12\x1d\n\x0fsource_sentence\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1d\n\x0ftarget_sentence\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x35\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03:\xad\x01\xea\x41\xa9\x01\n+translate.googleapis.com/AdaptiveMtSentence\x12zprojects/{project}/locations/{location}/adaptiveMtDatasets/{dataset}/adaptiveMtFiles/{file}/adaptiveMtSentences/{sentence}\"\x89\x01\n\x1eListAdaptiveMtSentencesRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe2\x41\x01\x02\xfa\x41)\n\'translate.googleapis.com/AdaptiveMtFile\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x96\x01\n\x1fListAdaptiveMtSentencesResponse\x12T\n\x15\x61\x64\x61ptive_mt_sentences\x18\x01 \x03(\x0b\x32/.google.cloud.translation.v3.AdaptiveMtSentenceB\x04\xe2\x41\x01\x03\x12\x1d\n\x0fnext_page_token\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x42\xc9\x01\n\x1d\x63om.google.cloud.translate.v3B\x0f\x41\x64\x61ptiveMtProtoP\x01Z;cloud.google.com/go/translate/apiv3/translatepb;translatepb\xf8\x01\x01\xaa\x02\x19Google.Cloud.Translate.V3\xca\x02\x19Google\\Cloud\\Translate\\V3\xea\x02\x1cGoogle::Cloud::Translate::V3b\x06proto3"

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
    ["google.cloud.translation.v3.FileInputSource", "google/cloud/translate/v3/common.proto"],
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
    module Translate
      module V3
        AdaptiveMtDataset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.AdaptiveMtDataset").msgclass
        CreateAdaptiveMtDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateAdaptiveMtDatasetRequest").msgclass
        DeleteAdaptiveMtDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteAdaptiveMtDatasetRequest").msgclass
        GetAdaptiveMtDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GetAdaptiveMtDatasetRequest").msgclass
        ListAdaptiveMtDatasetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListAdaptiveMtDatasetsRequest").msgclass
        ListAdaptiveMtDatasetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListAdaptiveMtDatasetsResponse").msgclass
        AdaptiveMtTranslateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.AdaptiveMtTranslateRequest").msgclass
        AdaptiveMtTranslation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.AdaptiveMtTranslation").msgclass
        AdaptiveMtTranslateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.AdaptiveMtTranslateResponse").msgclass
        AdaptiveMtFile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.AdaptiveMtFile").msgclass
        GetAdaptiveMtFileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GetAdaptiveMtFileRequest").msgclass
        DeleteAdaptiveMtFileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteAdaptiveMtFileRequest").msgclass
        ImportAdaptiveMtFileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ImportAdaptiveMtFileRequest").msgclass
        ImportAdaptiveMtFileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ImportAdaptiveMtFileResponse").msgclass
        ListAdaptiveMtFilesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListAdaptiveMtFilesRequest").msgclass
        ListAdaptiveMtFilesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListAdaptiveMtFilesResponse").msgclass
        AdaptiveMtSentence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.AdaptiveMtSentence").msgclass
        ListAdaptiveMtSentencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListAdaptiveMtSentencesRequest").msgclass
        ListAdaptiveMtSentencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListAdaptiveMtSentencesResponse").msgclass
      end
    end
  end
end
