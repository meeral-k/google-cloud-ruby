# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/match_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/index_pb'


descriptor_data = "\n.google/cloud/aiplatform/v1/match_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/aiplatform/v1/index.proto\"\xcb\x03\n\x14\x46indNeighborsRequest\x12G\n\x0eindex_endpoint\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'aiplatform.googleapis.com/IndexEndpoint\x12\x19\n\x11\x64\x65ployed_index_id\x18\x02 \x01(\t\x12G\n\x07queries\x18\x03 \x03(\x0b\x32\x36.google.cloud.aiplatform.v1.FindNeighborsRequest.Query\x12\x1d\n\x15return_full_datapoint\x18\x04 \x01(\x08\x1a\xe6\x01\n\x05Query\x12\x42\n\tdatapoint\x18\x01 \x01(\x0b\x32*.google.cloud.aiplatform.v1.IndexDatapointB\x03\xe0\x41\x02\x12\x16\n\x0eneighbor_count\x18\x02 \x01(\x05\x12-\n%per_crowding_attribute_neighbor_count\x18\x03 \x01(\x05\x12\"\n\x1a\x61pproximate_neighbor_count\x18\x04 \x01(\x05\x12.\n&fraction_leaf_nodes_to_search_override\x18\x05 \x01(\x01\"\xc2\x02\n\x15\x46indNeighborsResponse\x12]\n\x11nearest_neighbors\x18\x01 \x03(\x0b\x32\x42.google.cloud.aiplatform.v1.FindNeighborsResponse.NearestNeighbors\x1a[\n\x08Neighbor\x12=\n\tdatapoint\x18\x01 \x01(\x0b\x32*.google.cloud.aiplatform.v1.IndexDatapoint\x12\x10\n\x08\x64istance\x18\x02 \x01(\x01\x1am\n\x10NearestNeighbors\x12\n\n\x02id\x18\x01 \x01(\t\x12M\n\tneighbors\x18\x02 \x03(\x0b\x32:.google.cloud.aiplatform.v1.FindNeighborsResponse.Neighbor\"\x8d\x01\n\x1aReadIndexDatapointsRequest\x12G\n\x0eindex_endpoint\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'aiplatform.googleapis.com/IndexEndpoint\x12\x19\n\x11\x64\x65ployed_index_id\x18\x02 \x01(\t\x12\x0b\n\x03ids\x18\x03 \x03(\t\"]\n\x1bReadIndexDatapointsResponse\x12>\n\ndatapoints\x18\x01 \x03(\x0b\x32*.google.cloud.aiplatform.v1.IndexDatapoint2\x91\x04\n\x0cMatchService\x12\xcb\x01\n\rFindNeighbors\x12\x30.google.cloud.aiplatform.v1.FindNeighborsRequest\x1a\x31.google.cloud.aiplatform.v1.FindNeighborsResponse\"U\x82\xd3\xe4\x93\x02O\"J/v1/{index_endpoint=projects/*/locations/*/indexEndpoints/*}:findNeighbors:\x01*\x12\xe3\x01\n\x13ReadIndexDatapoints\x12\x36.google.cloud.aiplatform.v1.ReadIndexDatapointsRequest\x1a\x37.google.cloud.aiplatform.v1.ReadIndexDatapointsResponse\"[\x82\xd3\xe4\x93\x02U\"P/v1/{index_endpoint=projects/*/locations/*/indexEndpoints/*}:readIndexDatapoints:\x01*\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xcf\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x11MatchServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.cloud.aiplatform.v1.IndexDatapoint", "google/cloud/aiplatform/v1/index.proto"],
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
    module AIPlatform
      module V1
        FindNeighborsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FindNeighborsRequest").msgclass
        FindNeighborsRequest::Query = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FindNeighborsRequest.Query").msgclass
        FindNeighborsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FindNeighborsResponse").msgclass
        FindNeighborsResponse::Neighbor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FindNeighborsResponse.Neighbor").msgclass
        FindNeighborsResponse::NearestNeighbors = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FindNeighborsResponse.NearestNeighbors").msgclass
        ReadIndexDatapointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadIndexDatapointsRequest").msgclass
        ReadIndexDatapointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadIndexDatapointsResponse").msgclass
      end
    end
  end
end