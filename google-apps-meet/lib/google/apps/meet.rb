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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/apps/meet/version"

require "googleauth"

module Google
  module Apps
    module Meet
      ##
      # Create a new client object for SpacesService.
      #
      # By default, this returns an instance of
      # [Google::Apps::Meet::V2beta::SpacesService::Client](https://cloud.google.com/ruby/docs/reference/google-apps-meet-v2beta/latest/Google-Apps-Meet-V2beta-SpacesService-Client)
      # for a gRPC client for version V2beta of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the SpacesService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About SpacesService
      #
      # REST API for services dealing with spaces.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2beta`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.spaces_service version: :v2beta, transport: :grpc, &block
        require "google/apps/meet/#{version.to_s.downcase}"

        package_name = Google::Apps::Meet
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Apps::Meet.const_get(package_name).const_get(:SpacesService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ConferenceRecordsService.
      #
      # By default, this returns an instance of
      # [Google::Apps::Meet::V2beta::ConferenceRecordsService::Client](https://cloud.google.com/ruby/docs/reference/google-apps-meet-v2beta/latest/Google-Apps-Meet-V2beta-ConferenceRecordsService-Client)
      # for a gRPC client for version V2beta of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ConferenceRecordsService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ConferenceRecordsService
      #
      # REST API for services dealing with conference records.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2beta`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.conference_records_service version: :v2beta, transport: :grpc, &block
        require "google/apps/meet/#{version.to_s.downcase}"

        package_name = Google::Apps::Meet
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Apps::Meet.const_get(package_name).const_get(:ConferenceRecordsService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end
    end
  end
end

helper_path = ::File.join __dir__, "meet", "helpers.rb"
require "google/apps/meet/helpers" if ::File.file? helper_path