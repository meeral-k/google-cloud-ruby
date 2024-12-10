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

require "google/datastore/admin/v1/datastore_admin_pb"

module Google
  module Cloud
    module Datastore
      module Admin
        module V1
          module DatastoreAdmin
            module Rest
              ##
              # REST service stub for the DatastoreAdmin service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                # @private
                def initialize endpoint:, endpoint_template:, universe_domain:, credentials:, logger:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                               endpoint_template: endpoint_template,
                                                               universe_domain: universe_domain,
                                                               credentials: credentials,
                                                               numeric_enums: true,
                                                               service_name: self.class,
                                                               raise_faraday_errors: false,
                                                               logger: logger
                end

                ##
                # The effective universe domain
                #
                # @return [String]
                #
                def universe_domain
                  @client_stub.universe_domain
                end

                ##
                # The effective endpoint
                #
                # @return [String]
                #
                def endpoint
                  @client_stub.endpoint
                end

                ##
                # The logger used for request/response debug logging.
                #
                # @return [Logger]
                #
                def logger stub: false
                  stub ? @client_stub.stub_logger : @client_stub.logger
                end

                ##
                # Baseline implementation for the export_entities REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::ExportEntitiesRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def export_entities request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_export_entities_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "export_entities",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the import_entities REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::ImportEntitiesRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def import_entities request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_import_entities_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "import_entities",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the create_index REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::CreateIndexRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def create_index request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_index_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "create_index",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the delete_index REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::DeleteIndexRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def delete_index request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_delete_index_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "delete_index",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the get_index REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::GetIndexRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Datastore::Admin::V1::Index]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Datastore::Admin::V1::Index]
                #   A result object deserialized from the server's reply
                def get_index request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_index_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "get_index",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Datastore::Admin::V1::Index.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the list_indexes REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::ListIndexesRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Datastore::Admin::V1::ListIndexesResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Datastore::Admin::V1::ListIndexesResponse]
                #   A result object deserialized from the server's reply
                def list_indexes request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_indexes_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "list_indexes",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Datastore::Admin::V1::ListIndexesResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the export_entities REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::ExportEntitiesRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_export_entities_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/projects/{project_id}:export",
                                                            body: "*",
                                                            matches: [
                                                              ["project_id", %r{^[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the import_entities REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::ImportEntitiesRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_import_entities_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/projects/{project_id}:import",
                                                            body: "*",
                                                            matches: [
                                                              ["project_id", %r{^[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_index REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::CreateIndexRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_index_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/projects/{project_id}/indexes",
                                                            body: "index",
                                                            matches: [
                                                              ["project_id", %r{^[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the delete_index REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::DeleteIndexRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_delete_index_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :delete,
                                                            uri_template: "/v1/projects/{project_id}/indexes/{index_id}",
                                                            matches: [
                                                              ["project_id", %r{^[^/]+/?$}, false],
                                                              ["index_id", %r{^[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_index REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::GetIndexRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_index_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/projects/{project_id}/indexes/{index_id}",
                                                            matches: [
                                                              ["project_id", %r{^[^/]+/?$}, false],
                                                              ["index_id", %r{^[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_indexes REST call
                #
                # @param request_pb [::Google::Cloud::Datastore::Admin::V1::ListIndexesRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_indexes_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/projects/{project_id}/indexes",
                                                            matches: [
                                                              ["project_id", %r{^[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
