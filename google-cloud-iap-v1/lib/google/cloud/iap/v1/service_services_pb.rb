# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/iap/v1/service.proto for package 'Google.Cloud.Iap.V1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/iap/v1/service_pb'

module Google
  module Cloud
    module Iap
      module V1
        module IdentityAwareProxyAdminService
          # The Cloud Identity-Aware Proxy API.
          #
          # APIs for Identity-Aware Proxy Admin configurations.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.iap.v1.IdentityAwareProxyAdminService'

            # Sets the access control policy for an Identity-Aware Proxy protected
            # resource. Replaces any existing policy.
            # More information about managing access via IAP can be found at:
            # https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Gets the access control policy for an Identity-Aware Proxy protected
            # resource.
            # More information about managing access via IAP can be found at:
            # https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Returns permissions that a caller has on the Identity-Aware Proxy protected
            # resource.
            # More information about managing access via IAP can be found at:
            # https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
            # Gets the IAP settings on a particular IAP protected resource.
            rpc :GetIapSettings, ::Google::Cloud::Iap::V1::GetIapSettingsRequest, ::Google::Cloud::Iap::V1::IapSettings
            # Updates the IAP settings on a particular IAP protected resource. It
            # replaces all fields unless the `update_mask` is set.
            rpc :UpdateIapSettings, ::Google::Cloud::Iap::V1::UpdateIapSettingsRequest, ::Google::Cloud::Iap::V1::IapSettings
            # Lists the existing TunnelDestGroups. To group across all locations, use a
            # `-` as the location ID. For example:
            # `/v1/projects/123/iap_tunnel/locations/-/destGroups`
            rpc :ListTunnelDestGroups, ::Google::Cloud::Iap::V1::ListTunnelDestGroupsRequest, ::Google::Cloud::Iap::V1::ListTunnelDestGroupsResponse
            # Creates a new TunnelDestGroup.
            rpc :CreateTunnelDestGroup, ::Google::Cloud::Iap::V1::CreateTunnelDestGroupRequest, ::Google::Cloud::Iap::V1::TunnelDestGroup
            # Retrieves an existing TunnelDestGroup.
            rpc :GetTunnelDestGroup, ::Google::Cloud::Iap::V1::GetTunnelDestGroupRequest, ::Google::Cloud::Iap::V1::TunnelDestGroup
            # Deletes a TunnelDestGroup.
            rpc :DeleteTunnelDestGroup, ::Google::Cloud::Iap::V1::DeleteTunnelDestGroupRequest, ::Google::Protobuf::Empty
            # Updates a TunnelDestGroup.
            rpc :UpdateTunnelDestGroup, ::Google::Cloud::Iap::V1::UpdateTunnelDestGroupRequest, ::Google::Cloud::Iap::V1::TunnelDestGroup
          end

          Stub = Service.rpc_stub_class
        end
        module IdentityAwareProxyOAuthService
          # API to programmatically create, list and retrieve Identity Aware Proxy (IAP)
          # OAuth brands; and create, retrieve, delete and reset-secret of IAP OAuth
          # clients.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.iap.v1.IdentityAwareProxyOAuthService'

            # Lists the existing brands for the project.
            rpc :ListBrands, ::Google::Cloud::Iap::V1::ListBrandsRequest, ::Google::Cloud::Iap::V1::ListBrandsResponse
            # Constructs a new OAuth brand for the project if one does not exist.
            # The created brand is "internal only", meaning that OAuth clients created
            # under it only accept requests from users who belong to the same Google
            # Workspace organization as the project. The brand is created in an
            # un-reviewed status. NOTE: The "internal only" status can be manually
            # changed in the Google Cloud Console. Requires that a brand does not already
            # exist for the project, and that the specified support email is owned by the
            # caller.
            rpc :CreateBrand, ::Google::Cloud::Iap::V1::CreateBrandRequest, ::Google::Cloud::Iap::V1::Brand
            # Retrieves the OAuth brand of the project.
            rpc :GetBrand, ::Google::Cloud::Iap::V1::GetBrandRequest, ::Google::Cloud::Iap::V1::Brand
            # Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned
            # by IAP. Requires that the brand for the project exists and that it is
            # set for internal-only use.
            rpc :CreateIdentityAwareProxyClient, ::Google::Cloud::Iap::V1::CreateIdentityAwareProxyClientRequest, ::Google::Cloud::Iap::V1::IdentityAwareProxyClient
            # Lists the existing clients for the brand.
            rpc :ListIdentityAwareProxyClients, ::Google::Cloud::Iap::V1::ListIdentityAwareProxyClientsRequest, ::Google::Cloud::Iap::V1::ListIdentityAwareProxyClientsResponse
            # Retrieves an Identity Aware Proxy (IAP) OAuth client.
            # Requires that the client is owned by IAP.
            rpc :GetIdentityAwareProxyClient, ::Google::Cloud::Iap::V1::GetIdentityAwareProxyClientRequest, ::Google::Cloud::Iap::V1::IdentityAwareProxyClient
            # Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the
            # secret was compromised. Requires that the client is owned by IAP.
            rpc :ResetIdentityAwareProxyClientSecret, ::Google::Cloud::Iap::V1::ResetIdentityAwareProxyClientSecretRequest, ::Google::Cloud::Iap::V1::IdentityAwareProxyClient
            # Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing
            # obsolete clients, managing the number of clients in a given project, and
            # cleaning up after tests. Requires that the client is owned by IAP.
            rpc :DeleteIdentityAwareProxyClient, ::Google::Cloud::Iap::V1::DeleteIdentityAwareProxyClientRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
