# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/support/v2/actor.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/support/v2/actor.proto", :syntax => :proto3) do
    add_message "google.cloud.support.v2.Actor" do
      optional :display_name, :string, 1
      optional :email, :string, 2
      optional :google_support, :bool, 4
    end
  end
end

module Google
  module Cloud
    module Support
      module V2
        Actor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.support.v2.Actor").msgclass
      end
    end
  end
end