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

# [START baremetalsolution_v2_generated_BareMetalSolution_RestoreVolumeSnapshot_sync]
require "google/cloud/bare_metal_solution/v2"

##
# Snippet for the restore_volume_snapshot call in the BareMetalSolution service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client#restore_volume_snapshot.
# It may require modification in order to execute successfully.
#
def restore_volume_snapshot
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BareMetalSolution::V2::RestoreVolumeSnapshotRequest.new

  # Call the restore_volume_snapshot method.
  result = client.restore_volume_snapshot request

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
# [END baremetalsolution_v2_generated_BareMetalSolution_RestoreVolumeSnapshot_sync]
