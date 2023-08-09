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


module Google
  module Cloud
    module BareMetalSolution
      module V2
        # An SSH key, used for authorizing with the interactive serial console feature.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The name of this SSH key.
        #     Currently, the only valid value for the location is "global".
        # @!attribute [rw] public_key
        #   @return [::String]
        #     The public SSH key. This must be in OpenSSH .authorized_keys format.
        class SSHKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for listing the public SSH keys in a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent containing the SSH keys.
        #     Currently, the only valid value for the location is "global".
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous List request, if any.
        class ListSSHKeysRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response of ListSSHKeys.
        # @!attribute [rw] ssh_keys
        #   @return [::Array<::Google::Cloud::BareMetalSolution::V2::SSHKey>]
        #     The SSH keys registered in the project.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListSSHKeysResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for registering a public SSH key in a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent containing the SSH keys.
        # @!attribute [rw] ssh_key
        #   @return [::Google::Cloud::BareMetalSolution::V2::SSHKey]
        #     Required. The SSH key to register.
        # @!attribute [rw] ssh_key_id
        #   @return [::String]
        #     Required. The ID to use for the key, which will become the final component
        #     of the key's resource name.
        #
        #     This value must match the regex:
        #       [a-zA-Z0-9@.\-_]\\{1,64}
        class CreateSSHKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting an SSH key from a project.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the SSH key to delete.
        #     Currently, the only valid value for the location is "global".
        class DeleteSSHKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
