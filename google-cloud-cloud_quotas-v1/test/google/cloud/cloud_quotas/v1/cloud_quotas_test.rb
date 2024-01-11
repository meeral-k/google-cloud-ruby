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

require "google/api/cloudquotas/v1/cloudquotas_pb"
require "google/api/cloudquotas/v1/cloudquotas_services_pb"
require "google/cloud/cloud_quotas/v1/cloud_quotas"

class ::Google::Cloud::CloudQuotas::V1::CloudQuotas::ClientTest < Minitest::Test
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
  end

  def test_list_quota_infos
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudQuotas::V1::ListQuotaInfosResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_quota_infos_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_quota_infos, name
      assert_kind_of ::Google::Cloud::CloudQuotas::V1::ListQuotaInfosRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_quota_infos_client_stub do
      # Create client
      client = ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_quota_infos({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_quota_infos parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_quota_infos ::Google::Cloud::CloudQuotas::V1::ListQuotaInfosRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_quota_infos({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_quota_infos(::Google::Cloud::CloudQuotas::V1::ListQuotaInfosRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_quota_infos_client_stub.call_rpc_count
    end
  end

  def test_get_quota_info
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudQuotas::V1::QuotaInfo.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_quota_info_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_quota_info, name
      assert_kind_of ::Google::Cloud::CloudQuotas::V1::GetQuotaInfoRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_quota_info_client_stub do
      # Create client
      client = ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_quota_info({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_quota_info name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_quota_info ::Google::Cloud::CloudQuotas::V1::GetQuotaInfoRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_quota_info({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_quota_info(::Google::Cloud::CloudQuotas::V1::GetQuotaInfoRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_quota_info_client_stub.call_rpc_count
    end
  end

  def test_list_quota_preferences
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_quota_preferences_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_quota_preferences, name
      assert_kind_of ::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_quota_preferences_client_stub do
      # Create client
      client = ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_quota_preferences({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_quota_preferences parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_quota_preferences ::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_quota_preferences({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_quota_preferences(::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_quota_preferences_client_stub.call_rpc_count
    end
  end

  def test_get_quota_preference
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudQuotas::V1::QuotaPreference.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_quota_preference_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_quota_preference, name
      assert_kind_of ::Google::Cloud::CloudQuotas::V1::GetQuotaPreferenceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_quota_preference_client_stub do
      # Create client
      client = ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_quota_preference({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_quota_preference name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_quota_preference ::Google::Cloud::CloudQuotas::V1::GetQuotaPreferenceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_quota_preference({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_quota_preference(::Google::Cloud::CloudQuotas::V1::GetQuotaPreferenceRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_quota_preference_client_stub.call_rpc_count
    end
  end

  def test_create_quota_preference
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudQuotas::V1::QuotaPreference.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    quota_preference_id = "hello world"
    quota_preference = {}
    ignore_safety_checks = [:QUOTA_SAFETY_CHECK_UNSPECIFIED]

    create_quota_preference_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_quota_preference, name
      assert_kind_of ::Google::Cloud::CloudQuotas::V1::CreateQuotaPreferenceRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["quota_preference_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::CloudQuotas::V1::QuotaPreference), request["quota_preference"]
      assert_equal [:QUOTA_SAFETY_CHECK_UNSPECIFIED], request["ignore_safety_checks"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_quota_preference_client_stub do
      # Create client
      client = ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_quota_preference({ parent: parent, quota_preference_id: quota_preference_id, quota_preference: quota_preference, ignore_safety_checks: ignore_safety_checks }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_quota_preference parent: parent, quota_preference_id: quota_preference_id, quota_preference: quota_preference, ignore_safety_checks: ignore_safety_checks do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_quota_preference ::Google::Cloud::CloudQuotas::V1::CreateQuotaPreferenceRequest.new(parent: parent, quota_preference_id: quota_preference_id, quota_preference: quota_preference, ignore_safety_checks: ignore_safety_checks) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_quota_preference({ parent: parent, quota_preference_id: quota_preference_id, quota_preference: quota_preference, ignore_safety_checks: ignore_safety_checks }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_quota_preference(::Google::Cloud::CloudQuotas::V1::CreateQuotaPreferenceRequest.new(parent: parent, quota_preference_id: quota_preference_id, quota_preference: quota_preference, ignore_safety_checks: ignore_safety_checks), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_quota_preference_client_stub.call_rpc_count
    end
  end

  def test_update_quota_preference
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudQuotas::V1::QuotaPreference.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    quota_preference = {}
    allow_missing = true
    validate_only = true
    ignore_safety_checks = [:QUOTA_SAFETY_CHECK_UNSPECIFIED]

    update_quota_preference_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_quota_preference, name
      assert_kind_of ::Google::Cloud::CloudQuotas::V1::UpdateQuotaPreferenceRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::CloudQuotas::V1::QuotaPreference), request["quota_preference"]
      assert_equal true, request["allow_missing"]
      assert_equal true, request["validate_only"]
      assert_equal [:QUOTA_SAFETY_CHECK_UNSPECIFIED], request["ignore_safety_checks"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_quota_preference_client_stub do
      # Create client
      client = ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_quota_preference({ update_mask: update_mask, quota_preference: quota_preference, allow_missing: allow_missing, validate_only: validate_only, ignore_safety_checks: ignore_safety_checks }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_quota_preference update_mask: update_mask, quota_preference: quota_preference, allow_missing: allow_missing, validate_only: validate_only, ignore_safety_checks: ignore_safety_checks do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_quota_preference ::Google::Cloud::CloudQuotas::V1::UpdateQuotaPreferenceRequest.new(update_mask: update_mask, quota_preference: quota_preference, allow_missing: allow_missing, validate_only: validate_only, ignore_safety_checks: ignore_safety_checks) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_quota_preference({ update_mask: update_mask, quota_preference: quota_preference, allow_missing: allow_missing, validate_only: validate_only, ignore_safety_checks: ignore_safety_checks }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_quota_preference(::Google::Cloud::CloudQuotas::V1::UpdateQuotaPreferenceRequest.new(update_mask: update_mask, quota_preference: quota_preference, allow_missing: allow_missing, validate_only: validate_only, ignore_safety_checks: ignore_safety_checks), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_quota_preference_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::CloudQuotas::V1::CloudQuotas::Client::Configuration, config
  end
end