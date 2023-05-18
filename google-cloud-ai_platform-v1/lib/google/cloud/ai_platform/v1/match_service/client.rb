# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/errors"
require "google/cloud/aiplatform/v1/match_service_pb"
require "google/cloud/location"
require "google/iam/v1"

module Google
  module Cloud
    module AIPlatform
      module V1
        module MatchService
          ##
          # Client for the MatchService service.
          #
          # MatchService is a Google managed service for efficient vector similarity
          # search at scale.
          #
          class Client
            include Paths

            # @private
            attr_reader :match_service_stub

            ##
            # Configure the MatchService Client class.
            #
            # See {::Google::Cloud::AIPlatform::V1::MatchService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all MatchService clients
            #   ::Google::Cloud::AIPlatform::V1::MatchService::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "AIPlatform", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the MatchService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::AIPlatform::V1::MatchService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new MatchService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::AIPlatform::V1::MatchService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::AIPlatform::V1::MatchService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the MatchService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/aiplatform/v1/match_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @location_client = Google::Cloud::Location::Locations::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @iam_policy_client = Google::Iam::V1::IAMPolicy::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @match_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::AIPlatform::V1::MatchService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            ##
            # Get the associated client for mix-in of the Locations.
            #
            # @return [Google::Cloud::Location::Locations::Client]
            #
            attr_reader :location_client

            ##
            # Get the associated client for mix-in of the IAMPolicy.
            #
            # @return [Google::Iam::V1::IAMPolicy::Client]
            #
            attr_reader :iam_policy_client

            # Service calls

            ##
            # Finds the nearest neighbors of each vector within the request.
            #
            # @overload find_neighbors(request, options = nil)
            #   Pass arguments to `find_neighbors` via a request object, either of type
            #   {::Google::Cloud::AIPlatform::V1::FindNeighborsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::AIPlatform::V1::FindNeighborsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload find_neighbors(index_endpoint: nil, deployed_index_id: nil, queries: nil, return_full_datapoint: nil)
            #   Pass arguments to `find_neighbors` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param index_endpoint [::String]
            #     Required. The name of the index endpoint.
            #     Format:
            #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
            #   @param deployed_index_id [::String]
            #     The ID of the DeployedIndex that will serve the request. This request is
            #     sent to a specific IndexEndpoint, as per the IndexEndpoint.network. That
            #     IndexEndpoint also has IndexEndpoint.deployed_indexes, and each such index
            #     has a DeployedIndex.id field.
            #     The value of the field below must equal one of the DeployedIndex.id
            #     fields of the IndexEndpoint that is being called for this request.
            #   @param queries [::Array<::Google::Cloud::AIPlatform::V1::FindNeighborsRequest::Query, ::Hash>]
            #     The list of queries.
            #   @param return_full_datapoint [::Boolean]
            #     If set to true, the full datapoints (including all vector values and
            #     restricts) of the nearest neighbors are returned.
            #     Note that returning full datapoint will significantly increase the
            #     latency and cost of the query.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::AIPlatform::V1::FindNeighborsResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::AIPlatform::V1::FindNeighborsResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/ai_platform/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::AIPlatform::V1::MatchService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::AIPlatform::V1::FindNeighborsRequest.new
            #
            #   # Call the find_neighbors method.
            #   result = client.find_neighbors request
            #
            #   # The returned object is of type Google::Cloud::AIPlatform::V1::FindNeighborsResponse.
            #   p result
            #
            def find_neighbors request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AIPlatform::V1::FindNeighborsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.find_neighbors.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::AIPlatform::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.index_endpoint
                header_params["index_endpoint"] = request.index_endpoint
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.find_neighbors.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.find_neighbors.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @match_service_stub.call_rpc :find_neighbors, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Reads the datapoints/vectors of the given IDs.
            # A maximum of 1000 datapoints can be retrieved in a batch.
            #
            # @overload read_index_datapoints(request, options = nil)
            #   Pass arguments to `read_index_datapoints` via a request object, either of type
            #   {::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload read_index_datapoints(index_endpoint: nil, deployed_index_id: nil, ids: nil)
            #   Pass arguments to `read_index_datapoints` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param index_endpoint [::String]
            #     Required. The name of the index endpoint.
            #     Format:
            #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
            #   @param deployed_index_id [::String]
            #     The ID of the DeployedIndex that will serve the request.
            #   @param ids [::Array<::String>]
            #     IDs of the datapoints to be searched for.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/ai_platform/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::AIPlatform::V1::MatchService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest.new
            #
            #   # Call the read_index_datapoints method.
            #   result = client.read_index_datapoints request
            #
            #   # The returned object is of type Google::Cloud::AIPlatform::V1::ReadIndexDatapointsResponse.
            #   p result
            #
            def read_index_datapoints request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.read_index_datapoints.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::AIPlatform::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.index_endpoint
                header_params["index_endpoint"] = request.index_endpoint
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.read_index_datapoints.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.read_index_datapoints.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @match_service_stub.call_rpc :read_index_datapoints, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the MatchService API.
            #
            # This class represents the configuration for MatchService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::AIPlatform::V1::MatchService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # find_neighbors to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::AIPlatform::V1::MatchService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.find_neighbors.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::AIPlatform::V1::MatchService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.find_neighbors.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"aiplatform.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "aiplatform.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the MatchService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `find_neighbors`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :find_neighbors
                ##
                # RPC-specific configuration for `read_index_datapoints`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :read_index_datapoints

                # @private
                def initialize parent_rpcs = nil
                  find_neighbors_config = parent_rpcs.find_neighbors if parent_rpcs.respond_to? :find_neighbors
                  @find_neighbors = ::Gapic::Config::Method.new find_neighbors_config
                  read_index_datapoints_config = parent_rpcs.read_index_datapoints if parent_rpcs.respond_to? :read_index_datapoints
                  @read_index_datapoints = ::Gapic::Config::Method.new read_index_datapoints_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
