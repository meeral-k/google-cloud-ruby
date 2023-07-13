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

# [START alloydb_v1alpha_generated_AlloyDBAdmin_GetConnectionInfo_sync]
require "google/cloud/alloy_db/v1alpha"

##
# Snippet for the get_connection_info call in the AlloyDBAdmin service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::AlloyDB::V1alpha::AlloyDBAdmin::Client#get_connection_info. It
# may require modification in order to execute successfully.
#
def get_connection_info
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AlloyDB::V1alpha::AlloyDBAdmin::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AlloyDB::V1alpha::GetConnectionInfoRequest.new

  # Call the get_connection_info method.
  result = client.get_connection_info request

  # The returned object is of type Google::Cloud::AlloyDB::V1alpha::ConnectionInfo.
  p result
end
# [END alloydb_v1alpha_generated_AlloyDBAdmin_GetConnectionInfo_sync]
