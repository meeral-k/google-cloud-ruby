# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/provisioning.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/baremetalsolution/v2/common_pb'
require 'google/cloud/baremetalsolution/v2/network_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/baremetalsolution/v2/provisioning.proto\x12!google.cloud.baremetalsolution.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a.google/cloud/baremetalsolution/v2/common.proto\x1a/google/cloud/baremetalsolution/v2/network.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd8\x06\n\x12ProvisioningConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x44\n\tinstances\x18\x02 \x03(\x0b\x32\x31.google.cloud.baremetalsolution.v2.InstanceConfig\x12\x42\n\x08networks\x18\x03 \x03(\x0b\x32\x30.google.cloud.baremetalsolution.v2.NetworkConfig\x12@\n\x07volumes\x18\x04 \x03(\x0b\x32/.google.cloud.baremetalsolution.v2.VolumeConfig\x12\x11\n\tticket_id\x18\x05 \x01(\t\x12 \n\x18handover_service_account\x18\x06 \x01(\t\x12\x11\n\x05\x65mail\x18\x07 \x01(\tB\x02\x18\x01\x12O\n\x05state\x18\x08 \x01(\x0e\x32;.google.cloud.baremetalsolution.v2.ProvisioningConfig.StateB\x03\xe0\x41\x03\x12\x15\n\x08location\x18\t \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0bupdate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x1e\n\x11\x63loud_console_uri\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x16\n\x0evpc_sc_enabled\x18\x0c \x01(\x08\x12\x16\n\x0estatus_message\x18\r \x01(\t\x12\x16\n\tcustom_id\x18\x0e \x01(\tB\x03\xe0\x41\x01\"\x85\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05\x44RAFT\x10\x01\x12\r\n\tSUBMITTED\x10\x02\x12\x10\n\x0cPROVISIONING\x10\x03\x12\x0f\n\x0bPROVISIONED\x10\x04\x12\r\n\tVALIDATED\x10\x05\x12\r\n\tCANCELLED\x10\x06\x12\n\n\x06\x46\x41ILED\x10\x07:\x8c\x01\xea\x41\x88\x01\n3baremetalsolution.googleapis.com/ProvisioningConfig\x12Qprojects/{project}/locations/{location}/provisioningConfigs/{provisioning_config}\"\xc9\x01\n\x1fSubmitProvisioningConfigRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12W\n\x13provisioning_config\x18\x02 \x01(\x0b\x32\x35.google.cloud.baremetalsolution.v2.ProvisioningConfigB\x03\xe0\x41\x02\x12\x12\n\x05\x65mail\x18\x03 \x01(\tB\x03\xe0\x41\x01\"v\n SubmitProvisioningConfigResponse\x12R\n\x13provisioning_config\x18\x01 \x01(\x0b\x32\x35.google.cloud.baremetalsolution.v2.ProvisioningConfig\"\xe7\x04\n\x11ProvisioningQuota\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12R\n\nasset_type\x18\x02 \x01(\x0e\x32>.google.cloud.baremetalsolution.v2.ProvisioningQuota.AssetType\x12\x13\n\x0bgcp_service\x18\x03 \x01(\t\x12\x10\n\x08location\x18\x04 \x01(\t\x12\x17\n\x0f\x61vailable_count\x18\x05 \x01(\x05\x12J\n\x0einstance_quota\x18\x06 \x01(\x0b\x32\x30.google.cloud.baremetalsolution.v2.InstanceQuotaH\x00\x12\x16\n\x0cserver_count\x18\x07 \x01(\x03H\x01\x12\x1b\n\x11network_bandwidth\x18\x08 \x01(\x03H\x01\x12\x15\n\x0bstorage_gib\x18\t \x01(\x03H\x01\"n\n\tAssetType\x12\x1a\n\x16\x41SSET_TYPE_UNSPECIFIED\x10\x00\x12\x15\n\x11\x41SSET_TYPE_SERVER\x10\x01\x12\x16\n\x12\x41SSET_TYPE_STORAGE\x10\x02\x12\x16\n\x12\x41SSET_TYPE_NETWORK\x10\x03:\x89\x01\xea\x41\x85\x01\n2baremetalsolution.googleapis.com/ProvisioningQuota\x12Oprojects/{project}/locations/{location}/provisioningQuotas/{provisioning_quota}B\x07\n\x05quotaB\x0e\n\x0c\x61vailability\"\x81\x01\n\x1dListProvisioningQuotasRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x8c\x01\n\x1eListProvisioningQuotasResponse\x12Q\n\x13provisioning_quotas\x18\x01 \x03(\x0b\x32\x34.google.cloud.baremetalsolution.v2.ProvisioningQuota\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xe3\x06\n\x0eInstanceConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\n\n\x02id\x18\x02 \x01(\t\x12\x15\n\rinstance_type\x18\x03 \x01(\t\x12\x16\n\x0ehyperthreading\x18\x04 \x01(\x08\x12\x10\n\x08os_image\x18\x05 \x01(\t\x12\\\n\x0e\x63lient_network\x18\x06 \x01(\x0b\x32@.google.cloud.baremetalsolution.v2.InstanceConfig.NetworkAddressB\x02\x18\x01\x12]\n\x0fprivate_network\x18\x07 \x01(\x0b\x32@.google.cloud.baremetalsolution.v2.InstanceConfig.NetworkAddressB\x02\x18\x01\x12\x11\n\tuser_note\x18\x08 \x01(\t\x12 \n\x18\x61\x63\x63ount_networks_enabled\x18\t \x01(\x08\x12W\n\x0enetwork_config\x18\n \x01(\x0e\x32?.google.cloud.baremetalsolution.v2.InstanceConfig.NetworkConfig\x12\x18\n\x10network_template\x18\x0b \x01(\t\x12O\n\x12logical_interfaces\x18\x0c \x03(\x0b\x32\x33.google.cloud.baremetalsolution.v2.LogicalInterface\x12\x15\n\rssh_key_names\x18\r \x03(\t\x1aR\n\x0eNetworkAddress\x12\x12\n\nnetwork_id\x18\x01 \x01(\t\x12\x0f\n\x07\x61\x64\x64ress\x18\x02 \x01(\t\x12\x1b\n\x13\x65xisting_network_id\x18\x03 \x01(\t\"O\n\rNetworkConfig\x12\x1d\n\x19NETWORKCONFIG_UNSPECIFIED\x10\x00\x12\x0f\n\x0bSINGLE_VLAN\x10\x01\x12\x0e\n\nMULTI_VLAN\x10\x02:\x7f\xea\x41|\n/baremetalsolution.googleapis.com/InstanceConfig\x12Iprojects/{project}/locations/{location}/instanceConfigs/{instance_config}\"\xf6\x08\n\x0cVolumeConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\n\n\x02id\x18\x02 \x01(\t\x12\x19\n\x11snapshots_enabled\x18\x03 \x01(\x08\x12\x42\n\x04type\x18\x04 \x01(\x0e\x32\x34.google.cloud.baremetalsolution.v2.VolumeConfig.Type\x12J\n\x08protocol\x18\x05 \x01(\x0e\x32\x38.google.cloud.baremetalsolution.v2.VolumeConfig.Protocol\x12\x0f\n\x07size_gb\x18\x06 \x01(\x05\x12L\n\nlun_ranges\x18\x07 \x03(\x0b\x32\x38.google.cloud.baremetalsolution.v2.VolumeConfig.LunRange\x12\x13\n\x0bmachine_ids\x18\x08 \x03(\t\x12N\n\x0bnfs_exports\x18\t \x03(\x0b\x32\x39.google.cloud.baremetalsolution.v2.VolumeConfig.NfsExport\x12\x11\n\tuser_note\x18\n \x01(\t\x12\x13\n\x0bgcp_service\x18\x0b \x01(\t\x12R\n\x10performance_tier\x18\x0c \x01(\x0e\x32\x38.google.cloud.baremetalsolution.v2.VolumePerformanceTier\x1a-\n\x08LunRange\x12\x10\n\x08quantity\x18\x01 \x01(\x05\x12\x0f\n\x07size_gb\x18\x02 \x01(\x05\x1a\xb5\x02\n\tNfsExport\x12\x12\n\nnetwork_id\x18\x01 \x01(\t\x12\x14\n\nmachine_id\x18\x02 \x01(\tH\x00\x12\x0e\n\x04\x63idr\x18\x03 \x01(\tH\x00\x12Z\n\x0bpermissions\x18\x04 \x01(\x0e\x32\x45.google.cloud.baremetalsolution.v2.VolumeConfig.NfsExport.Permissions\x12\x16\n\x0eno_root_squash\x18\x05 \x01(\x08\x12\x12\n\nallow_suid\x18\x06 \x01(\x08\x12\x11\n\tallow_dev\x18\x07 \x01(\x08\"I\n\x0bPermissions\x12\x1b\n\x17PERMISSIONS_UNSPECIFIED\x10\x00\x12\r\n\tREAD_ONLY\x10\x01\x12\x0e\n\nREAD_WRITE\x10\x02\x42\x08\n\x06\x63lient\"1\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x46LASH\x10\x01\x12\x08\n\x04\x44ISK\x10\x02\"G\n\x08Protocol\x12\x18\n\x14PROTOCOL_UNSPECIFIED\x10\x00\x12\x0f\n\x0bPROTOCOL_FC\x10\x01\x12\x10\n\x0cPROTOCOL_NFS\x10\x02:y\xea\x41v\n-baremetalsolution.googleapis.com/VolumeConfig\x12\x45projects/{project}/locations/{location}/volumeConfigs/{volume_config}\"\x9b\x07\n\rNetworkConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\n\n\x02id\x18\x02 \x01(\t\x12\x43\n\x04type\x18\x03 \x01(\x0e\x32\x35.google.cloud.baremetalsolution.v2.NetworkConfig.Type\x12M\n\tbandwidth\x18\x04 \x01(\x0e\x32:.google.cloud.baremetalsolution.v2.NetworkConfig.Bandwidth\x12_\n\x10vlan_attachments\x18\x05 \x03(\x0b\x32\x45.google.cloud.baremetalsolution.v2.NetworkConfig.IntakeVlanAttachment\x12\x0c\n\x04\x63idr\x18\x06 \x01(\t\x12R\n\x0cservice_cidr\x18\x07 \x01(\x0e\x32<.google.cloud.baremetalsolution.v2.NetworkConfig.ServiceCidr\x12\x11\n\tuser_note\x18\x08 \x01(\t\x12\x13\n\x0bgcp_service\x18\t \x01(\t\x12\x19\n\x11vlan_same_project\x18\n \x01(\x08\x12\x1c\n\x14jumbo_frames_enabled\x18\x0b \x01(\x08\x1a\x37\n\x14IntakeVlanAttachment\x12\n\n\x02id\x18\x01 \x01(\t\x12\x13\n\x0bpairing_key\x18\x02 \x01(\t\"5\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x43LIENT\x10\x01\x12\x0b\n\x07PRIVATE\x10\x02\"c\n\tBandwidth\x12\x19\n\x15\x42\x41NDWIDTH_UNSPECIFIED\x10\x00\x12\r\n\tBW_1_GBPS\x10\x01\x12\r\n\tBW_2_GBPS\x10\x02\x12\r\n\tBW_5_GBPS\x10\x03\x12\x0e\n\nBW_10_GBPS\x10\x04\"`\n\x0bServiceCidr\x12\x1c\n\x18SERVICE_CIDR_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\x0b\n\x07HIGH_26\x10\x02\x12\x0b\n\x07HIGH_27\x10\x03\x12\x0b\n\x07HIGH_28\x10\x04:|\xea\x41y\n.baremetalsolution.googleapis.com/NetworkConfig\x12Gprojects/{project}/locations/{location}/networkConfigs/{network_config}\"\x83\x02\n\rInstanceQuota\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\rinstance_type\x18\x02 \x01(\tB\x02\x18\x01\x12\x13\n\x0bgcp_service\x18\x05 \x01(\t\x12\x10\n\x08location\x18\x03 \x01(\t\x12\x1f\n\x17\x61vailable_machine_count\x18\x04 \x01(\x05:|\xea\x41y\n.baremetalsolution.googleapis.com/InstanceQuota\x12Gprojects/{project}/locations/{location}/instanceQuotas/{instance_quota}\"i\n\x1cGetProvisioningConfigRequest\x12I\n\x04name\x18\x01 \x01(\tB;\xe0\x41\x02\xfa\x41\x35\n3baremetalsolution.googleapis.com/ProvisioningConfig\"\xc9\x01\n\x1f\x43reateProvisioningConfigRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12W\n\x13provisioning_config\x18\x02 \x01(\x0b\x32\x35.google.cloud.baremetalsolution.v2.ProvisioningConfigB\x03\xe0\x41\x02\x12\x12\n\x05\x65mail\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xc4\x01\n\x1fUpdateProvisioningConfigRequest\x12W\n\x13provisioning_config\x18\x01 \x01(\x0b\x32\x35.google.cloud.baremetalsolution.v2.ProvisioningConfigB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x12\n\x05\x65mail\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xac\x04\n\x15ServerNetworkTemplate\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12!\n\x19\x61pplicable_instance_types\x18\x02 \x03(\t\x12\x65\n\x12logical_interfaces\x18\x03 \x03(\x0b\x32I.google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface\x1a\xdd\x01\n\x10LogicalInterface\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x65\n\x04type\x18\x02 \x01(\x0e\x32W.google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface.InterfaceType\x12\x10\n\x08required\x18\x03 \x01(\x08\"B\n\rInterfaceType\x12\x1e\n\x1aINTERFACE_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04\x42OND\x10\x01\x12\x07\n\x03NIC\x10\x02:\x95\x01\xea\x41\x91\x01\n6baremetalsolution.googleapis.com/ServerNetworkTemplate\x12Wprojects/{project}/locations/{location}/serverNetworkTemplate/{server_network_template}B\x80\x02\n%com.google.cloud.baremetalsolution.v2B\x11ProvisioningProtoP\x01ZScloud.google.com/go/baremetalsolution/apiv2/baremetalsolutionpb;baremetalsolutionpb\xaa\x02!Google.Cloud.BareMetalSolution.V2\xca\x02!Google\\Cloud\\BareMetalSolution\\V2\xea\x02$Google::Cloud::BareMetalSolution::V2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.baremetalsolution.v2.LogicalInterface", "google/cloud/baremetalsolution/v2/network.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module BareMetalSolution
      module V2
        ProvisioningConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ProvisioningConfig").msgclass
        ProvisioningConfig::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ProvisioningConfig.State").enummodule
        SubmitProvisioningConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.SubmitProvisioningConfigRequest").msgclass
        SubmitProvisioningConfigResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.SubmitProvisioningConfigResponse").msgclass
        ProvisioningQuota = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ProvisioningQuota").msgclass
        ProvisioningQuota::AssetType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ProvisioningQuota.AssetType").enummodule
        ListProvisioningQuotasRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListProvisioningQuotasRequest").msgclass
        ListProvisioningQuotasResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListProvisioningQuotasResponse").msgclass
        InstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.InstanceConfig").msgclass
        InstanceConfig::NetworkAddress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.InstanceConfig.NetworkAddress").msgclass
        InstanceConfig::NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.InstanceConfig.NetworkConfig").enummodule
        VolumeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeConfig").msgclass
        VolumeConfig::LunRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeConfig.LunRange").msgclass
        VolumeConfig::NfsExport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeConfig.NfsExport").msgclass
        VolumeConfig::NfsExport::Permissions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeConfig.NfsExport.Permissions").enummodule
        VolumeConfig::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeConfig.Type").enummodule
        VolumeConfig::Protocol = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeConfig.Protocol").enummodule
        NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.NetworkConfig").msgclass
        NetworkConfig::IntakeVlanAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.NetworkConfig.IntakeVlanAttachment").msgclass
        NetworkConfig::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.NetworkConfig.Type").enummodule
        NetworkConfig::Bandwidth = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.NetworkConfig.Bandwidth").enummodule
        NetworkConfig::ServiceCidr = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.NetworkConfig.ServiceCidr").enummodule
        InstanceQuota = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.InstanceQuota").msgclass
        GetProvisioningConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.GetProvisioningConfigRequest").msgclass
        CreateProvisioningConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.CreateProvisioningConfigRequest").msgclass
        UpdateProvisioningConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.UpdateProvisioningConfigRequest").msgclass
        ServerNetworkTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ServerNetworkTemplate").msgclass
        ServerNetworkTemplate::LogicalInterface = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface").msgclass
        ServerNetworkTemplate::LogicalInterface::InterfaceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ServerNetworkTemplate.LogicalInterface.InterfaceType").enummodule
      end
    end
  end
end
