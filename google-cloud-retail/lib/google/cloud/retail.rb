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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/retail/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :retail do |config|
  config.add_field! :endpoint,      "retail.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module Retail
      ##
      # Create a new client object for CatalogService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::CatalogService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-CatalogService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the CatalogService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About CatalogService
      #
      # Service for managing catalog configuration.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.catalog_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:CatalogService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for CompletionService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::CompletionService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-CompletionService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the CompletionService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About CompletionService
      #
      # Autocomplete service for retail.
      #
      # This feature is only available for users who have Retail Search enabled.
      # Enable Retail Search on Cloud Console before using this feature.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.completion_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:CompletionService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ControlService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::ControlService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-ControlService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ControlService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ControlService
      #
      # Service for modifying Control.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.control_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:ControlService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ModelService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::ModelService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-ModelService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ModelService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ModelService
      #
      # Service for performing CRUD operations on models.
      # Recommendation models contain all the metadata necessary to generate a set of
      # models for the `Predict()` API. A model is queried
      # indirectly via a ServingConfig, which associates a model with a
      # given Placement (e.g. Frequently Bought Together on Home Page).
      #
      # This service allows you to do the following:
      #
      # * Initiate training of a model.
      # * Pause training of an existing model.
      # * List all the available models along with their metadata.
      # * Control their tuning schedule.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.model_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:ModelService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for PredictionService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::PredictionService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-PredictionService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the PredictionService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About PredictionService
      #
      # Service for making recommendation prediction.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.prediction_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:PredictionService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ProductService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::ProductService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-ProductService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ProductService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ProductService
      #
      # Service for ingesting Product information
      # of the customer's website.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.product_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:ProductService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for SearchService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::SearchService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-SearchService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the SearchService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About SearchService
      #
      # Service for search.
      #
      # This feature is only available for users who have Retail Search enabled.
      # Enable Retail Search on Cloud Console before using this feature.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.search_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:SearchService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ServingConfigService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::ServingConfigService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-ServingConfigService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ServingConfigService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About ServingConfigService
      #
      # Service for modifying ServingConfig.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.serving_config_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:ServingConfigService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for UserEventService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Retail::V2::UserEventService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-retail-v2/latest/Google-Cloud-Retail-V2-UserEventService-Client)
      # for a gRPC client for version V2 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the UserEventService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # ## About UserEventService
      #
      # Service for ingesting end user actions on the customer website.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.user_event_service version: :v2, transport: :grpc, &block
        require "google/cloud/retail/#{version.to_s.downcase}"

        package_name = Google::Cloud::Retail
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Retail.const_get(package_name).const_get(:UserEventService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-retail library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.retail if block_given?

        ::Google::Cloud.configure.retail
      end
    end
  end
end

helper_path = ::File.join __dir__, "retail", "helpers.rb"
require "google/cloud/retail/helpers" if ::File.file? helper_path
