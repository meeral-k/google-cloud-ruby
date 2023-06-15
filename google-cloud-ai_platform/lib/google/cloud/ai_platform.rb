# frozen_string_literal: true

# Copyright 2022 Google LLC
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
require "google/cloud/ai_platform/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :ai_platform do |config|
  config.add_field! :endpoint,      "aiplatform.googleapis.com", match: ::String
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
    module AIPlatform
      ##
      # Create a new client object for DatasetService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::DatasetService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-DatasetService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the DatasetService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About DatasetService
      #
      # The service that handles the CRUD of Vertex AI Dataset and its child
      # resources.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.dataset_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:DatasetService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for EndpointService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::EndpointService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-EndpointService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the EndpointService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About EndpointService
      #
      # A service for managing Vertex AI's Endpoints.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.endpoint_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:EndpointService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for FeaturestoreOnlineServingService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-FeaturestoreOnlineServingService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the FeaturestoreOnlineServingService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About FeaturestoreOnlineServingService
      #
      # A service for serving online feature values.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.featurestore_online_serving_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:FeaturestoreOnlineServingService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for FeaturestoreService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::FeaturestoreService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-FeaturestoreService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the FeaturestoreService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About FeaturestoreService
      #
      # The service that handles CRUD and List for resources for Featurestore.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.featurestore_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:FeaturestoreService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for IndexEndpointService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::IndexEndpointService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-IndexEndpointService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the IndexEndpointService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About IndexEndpointService
      #
      # A service for managing Vertex AI's IndexEndpoints.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.index_endpoint_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:IndexEndpointService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for IndexService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::IndexService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-IndexService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the IndexService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About IndexService
      #
      # A service for creating and managing Vertex AI's Index resources.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.index_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:IndexService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for JobService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::JobService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-JobService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the JobService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About JobService
      #
      # A service for creating and managing Vertex AI's jobs.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.job_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:JobService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for MatchService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::MatchService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-MatchService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the MatchService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About MatchService
      #
      # MatchService is a Google managed service for efficient vector similarity
      # search at scale.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.match_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:MatchService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for MetadataService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::MetadataService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-MetadataService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the MetadataService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About MetadataService
      #
      # Service for reading and writing metadata entries.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.metadata_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:MetadataService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for MigrationService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::MigrationService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-MigrationService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the MigrationService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About MigrationService
      #
      # A service that migrates resources from automl.googleapis.com,
      # datalabeling.googleapis.com and ml.googleapis.com to Vertex AI.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.migration_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:MigrationService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ModelService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::ModelService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-ModelService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ModelService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About ModelService
      #
      # A service for managing Vertex AI's machine learning Models.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.model_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:ModelService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ModelGardenService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::ModelGardenService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-ModelGardenService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ModelGardenService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About ModelGardenService
      #
      # The interface of Model Garden Service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.model_garden_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:ModelGardenService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for PipelineService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::PipelineService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-PipelineService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the PipelineService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PipelineService
      #
      # A service for creating and managing Vertex AI's pipelines. This includes both
      # `TrainingPipeline` resources (used for AutoML and custom training) and
      # `PipelineJob` resources (used for Vertex AI Pipelines).
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.pipeline_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:PipelineService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for PredictionService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::PredictionService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-PredictionService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the PredictionService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PredictionService
      #
      # A service for online predictions and explanations.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.prediction_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:PredictionService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for SpecialistPoolService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::SpecialistPoolService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-SpecialistPoolService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the SpecialistPoolService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About SpecialistPoolService
      #
      # A service for creating and managing Customer SpecialistPools.
      # When customers start Data Labeling jobs, they can reuse/create Specialist
      # Pools to bring their own Specialists to label the data.
      # Customers can add/remove Managers for the Specialist Pool on Cloud console,
      # then Managers will get email notifications to manage Specialists and tasks on
      # CrowdCompute console.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.specialist_pool_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:SpecialistPoolService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for TensorboardService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::TensorboardService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-TensorboardService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the TensorboardService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About TensorboardService
      #
      # TensorboardService
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.tensorboard_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:TensorboardService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for VizierService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AIPlatform::V1::VizierService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-ai_platform-v1/latest/Google-Cloud-AIPlatform-V1-VizierService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the VizierService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About VizierService
      #
      # Vertex AI Vizier API.
      #
      # Vertex AI Vizier is a service to solve blackbox optimization problems,
      # such as tuning machine learning hyperparameters and searching over deep
      # learning architectures.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [::Object] A client object for the specified version.
      #
      def self.vizier_service version: :v1, &block
        require "google/cloud/ai_platform/#{version.to_s.downcase}"

        package_name = Google::Cloud::AIPlatform
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::AIPlatform.const_get(package_name).const_get(:VizierService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-ai_platform library.
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
        yield ::Google::Cloud.configure.ai_platform if block_given?

        ::Google::Cloud.configure.ai_platform
      end
    end
  end
end

helper_path = ::File.join __dir__, "ai_platform", "helpers.rb"
require "google/cloud/ai_platform/helpers" if ::File.file? helper_path
