# frozen_string_literal: true

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/commerce/consumer/procurement/v1/license_management_service_pb"
require "google/cloud/commerce/consumer/procurement/v1/license_management_service_services_pb"
require "google/cloud/commerce/consumer/procurement/v1/license_management_service"

class ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_get_license_pool
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicensePool.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_license_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_license_pool, name
      assert_kind_of ::Google::Cloud::Commerce::Consumer::Procurement::V1::GetLicensePoolRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_license_pool_client_stub do
      # Create client
      client = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_license_pool({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_license_pool name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_license_pool ::Google::Cloud::Commerce::Consumer::Procurement::V1::GetLicensePoolRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_license_pool({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_license_pool(::Google::Cloud::Commerce::Consumer::Procurement::V1::GetLicensePoolRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_license_pool_client_stub.call_rpc_count
    end
  end

  def test_update_license_pool
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicensePool.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    license_pool = {}
    update_mask = {}

    update_license_pool_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_license_pool, name
      assert_kind_of ::Google::Cloud::Commerce::Consumer::Procurement::V1::UpdateLicensePoolRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicensePool), request["license_pool"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_license_pool_client_stub do
      # Create client
      client = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_license_pool({ license_pool: license_pool, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_license_pool license_pool: license_pool, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_license_pool ::Google::Cloud::Commerce::Consumer::Procurement::V1::UpdateLicensePoolRequest.new(license_pool: license_pool, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_license_pool({ license_pool: license_pool, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_license_pool(::Google::Cloud::Commerce::Consumer::Procurement::V1::UpdateLicensePoolRequest.new(license_pool: license_pool, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_license_pool_client_stub.call_rpc_count
    end
  end

  def test_assign
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Commerce::Consumer::Procurement::V1::AssignResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    usernames = ["hello world"]

    assign_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :assign, name
      assert_kind_of ::Google::Cloud::Commerce::Consumer::Procurement::V1::AssignRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal ["hello world"], request["usernames"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, assign_client_stub do
      # Create client
      client = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.assign({ parent: parent, usernames: usernames }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.assign parent: parent, usernames: usernames do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.assign ::Google::Cloud::Commerce::Consumer::Procurement::V1::AssignRequest.new(parent: parent, usernames: usernames) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.assign({ parent: parent, usernames: usernames }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.assign(::Google::Cloud::Commerce::Consumer::Procurement::V1::AssignRequest.new(parent: parent, usernames: usernames), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, assign_client_stub.call_rpc_count
    end
  end

  def test_unassign
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Commerce::Consumer::Procurement::V1::UnassignResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    usernames = ["hello world"]

    unassign_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :unassign, name
      assert_kind_of ::Google::Cloud::Commerce::Consumer::Procurement::V1::UnassignRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal ["hello world"], request["usernames"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, unassign_client_stub do
      # Create client
      client = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.unassign({ parent: parent, usernames: usernames }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.unassign parent: parent, usernames: usernames do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.unassign ::Google::Cloud::Commerce::Consumer::Procurement::V1::UnassignRequest.new(parent: parent, usernames: usernames) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.unassign({ parent: parent, usernames: usernames }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.unassign(::Google::Cloud::Commerce::Consumer::Procurement::V1::UnassignRequest.new(parent: parent, usernames: usernames), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, unassign_client_stub.call_rpc_count
    end
  end

  def test_enumerate_licensed_users
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Commerce::Consumer::Procurement::V1::EnumerateLicensedUsersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    enumerate_licensed_users_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :enumerate_licensed_users, name
      assert_kind_of ::Google::Cloud::Commerce::Consumer::Procurement::V1::EnumerateLicensedUsersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, enumerate_licensed_users_client_stub do
      # Create client
      client = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.enumerate_licensed_users({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.enumerate_licensed_users parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.enumerate_licensed_users ::Google::Cloud::Commerce::Consumer::Procurement::V1::EnumerateLicensedUsersRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.enumerate_licensed_users({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.enumerate_licensed_users(::Google::Cloud::Commerce::Consumer::Procurement::V1::EnumerateLicensedUsersRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, enumerate_licensed_users_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Commerce::Consumer::Procurement::V1::LicenseManagementService::Client::Configuration, config
  end
end
