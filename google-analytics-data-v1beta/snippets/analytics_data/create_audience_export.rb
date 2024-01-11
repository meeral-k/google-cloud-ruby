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

# [START analyticsdata_v1beta_generated_AnalyticsData_CreateAudienceExport_sync]
require "google/analytics/data/v1beta"

##
# Snippet for the create_audience_export call in the AnalyticsData service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Analytics::Data::V1beta::AnalyticsData::Client#create_audience_export.
#
def create_audience_export
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Analytics::Data::V1beta::AnalyticsData::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Analytics::Data::V1beta::CreateAudienceExportRequest.new

  # Call the create_audience_export method.
  result = client.create_audience_export request

  # The returned object is of type Gapic::Operation. You can use it to
  # check the status of an operation, cancel it, or wait for results.
  # Here is how to wait for a response.
  result.wait_until_done! timeout: 60
  if result.response?
    p result.response
  else
    puts "No response received."
  end
end
# [END analyticsdata_v1beta_generated_AnalyticsData_CreateAudienceExport_sync]