# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/completion_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/discoveryengine/v1beta/completion_service.proto", :syntax => :proto3) do
    add_message "google.cloud.discoveryengine.v1beta.CompleteQueryRequest" do
      optional :data_store, :string, 1
      optional :query, :string, 2
      optional :query_model, :string, 3
      optional :user_pseudo_id, :string, 4
    end
    add_message "google.cloud.discoveryengine.v1beta.CompleteQueryResponse" do
      repeated :query_suggestions, :message, 1, "google.cloud.discoveryengine.v1beta.CompleteQueryResponse.QuerySuggestion"
    end
    add_message "google.cloud.discoveryengine.v1beta.CompleteQueryResponse.QuerySuggestion" do
      optional :suggestion, :string, 1
    end
  end
end

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        CompleteQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CompleteQueryRequest").msgclass
        CompleteQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CompleteQueryResponse").msgclass
        CompleteQueryResponse::QuerySuggestion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CompleteQueryResponse.QuerySuggestion").msgclass
      end
    end
  end
end