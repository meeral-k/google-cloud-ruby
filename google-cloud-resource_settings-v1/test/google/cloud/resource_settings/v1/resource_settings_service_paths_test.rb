# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/resource_settings/v1/resource_settings_service"

class ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_setting_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.setting_path project_number: "value0", setting_name: "value1"
      assert_equal "projects/value0/settings/value1", path

      path = client.setting_path folder: "value0", setting_name: "value1"
      assert_equal "folders/value0/settings/value1", path

      path = client.setting_path organization: "value0", setting_name: "value1"
      assert_equal "organizations/value0/settings/value1", path
    end
  end
end
