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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/service_health/v1/version"
require "google/cloud/service_health/v1/bindings_override"

require "google/cloud/service_health/v1/service_health/credentials"
require "google/cloud/service_health/v1/service_health/paths"
require "google/cloud/service_health/v1/service_health/rest/client"

module Google
  module Cloud
    module ServiceHealth
      module V1
        ##
        # Request service health events relevant to your Google Cloud project.
        #
        # To load this service and instantiate a REST client:
        #
        #     require "google/cloud/service_health/v1/service_health/rest"
        #     client = ::Google::Cloud::ServiceHealth::V1::ServiceHealth::Rest::Client.new
        #
        module ServiceHealth
          # Client for the REST transport
          module Rest
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/service_health/v1/service_health/rest/helpers" if ::File.file? helper_path