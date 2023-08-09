# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/baremetalsolution.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/cloud/baremetalsolution/v2/common_pb'
require 'google/cloud/baremetalsolution/v2/instance_pb'
require 'google/cloud/baremetalsolution/v2/lun_pb'
require 'google/cloud/baremetalsolution/v2/network_pb'
require 'google/cloud/baremetalsolution/v2/nfs_share_pb'
require 'google/cloud/baremetalsolution/v2/osimage_pb'
require 'google/cloud/baremetalsolution/v2/provisioning_pb'
require 'google/cloud/baremetalsolution/v2/ssh_key_pb'
require 'google/cloud/baremetalsolution/v2/volume_pb'
require 'google/cloud/baremetalsolution/v2/volume_snapshot_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n9google/cloud/baremetalsolution/v2/baremetalsolution.proto\x12!google.cloud.baremetalsolution.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a.google/cloud/baremetalsolution/v2/common.proto\x1a\x30google/cloud/baremetalsolution/v2/instance.proto\x1a+google/cloud/baremetalsolution/v2/lun.proto\x1a/google/cloud/baremetalsolution/v2/network.proto\x1a\x31google/cloud/baremetalsolution/v2/nfs_share.proto\x1a/google/cloud/baremetalsolution/v2/osimage.proto\x1a\x34google/cloud/baremetalsolution/v2/provisioning.proto\x1a/google/cloud/baremetalsolution/v2/ssh_key.proto\x1a.google/cloud/baremetalsolution/v2/volume.proto\x1a\x37google/cloud/baremetalsolution/v2/volume_snapshot.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto2\xbaK\n\x11\x42\x61reMetalSolution\x12\xc2\x01\n\rListInstances\x12\x37.google.cloud.baremetalsolution.v2.ListInstancesRequest\x1a\x38.google.cloud.baremetalsolution.v2.ListInstancesResponse\">\x82\xd3\xe4\x93\x02/\x12-/v2/{parent=projects/*/locations/*}/instances\xda\x41\x06parent\x12\xaf\x01\n\x0bGetInstance\x12\x35.google.cloud.baremetalsolution.v2.GetInstanceRequest\x1a+.google.cloud.baremetalsolution.v2.Instance\"<\x82\xd3\xe4\x93\x02/\x12-/v2/{name=projects/*/locations/*/instances/*}\xda\x41\x04name\x12\xea\x01\n\x0eUpdateInstance\x12\x38.google.cloud.baremetalsolution.v2.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x7f\x82\xd3\xe4\x93\x02\x42\x32\x36/v2/{instance.name=projects/*/locations/*/instances/*}:\x08instance\xda\x41\x14instance,update_mask\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\xcf\x01\n\x0eRenameInstance\x12\x38.google.cloud.baremetalsolution.v2.RenameInstanceRequest\x1a+.google.cloud.baremetalsolution.v2.Instance\"V\x82\xd3\xe4\x93\x02\x39\"4/v2/{name=projects/*/locations/*/instances/*}:rename:\x01*\xda\x41\x14name,new_instance_id\x12\xdb\x01\n\rResetInstance\x12\x37.google.cloud.baremetalsolution.v2.ResetInstanceRequest\x1a\x1d.google.longrunning.Operation\"r\x82\xd3\xe4\x93\x02\x38\"3/v2/{name=projects/*/locations/*/instances/*}:reset:\x01*\xda\x41\x04name\xca\x41*\n\x15ResetInstanceResponse\x12\x11OperationMetadata\x12\xdb\x01\n\rStartInstance\x12\x37.google.cloud.baremetalsolution.v2.StartInstanceRequest\x1a\x1d.google.longrunning.Operation\"r\x82\xd3\xe4\x93\x02\x38\"3/v2/{name=projects/*/locations/*/instances/*}:start:\x01*\xda\x41\x04name\xca\x41*\n\x15StartInstanceResponse\x12\x11OperationMetadata\x12\xd7\x01\n\x0cStopInstance\x12\x36.google.cloud.baremetalsolution.v2.StopInstanceRequest\x1a\x1d.google.longrunning.Operation\"p\x82\xd3\xe4\x93\x02\x37\"2/v2/{name=projects/*/locations/*/instances/*}:stop:\x01*\xda\x41\x04name\xca\x41)\n\x14StopInstanceResponse\x12\x11OperationMetadata\x12\xa8\x02\n\x1e\x45nableInteractiveSerialConsole\x12H.google.cloud.baremetalsolution.v2.EnableInteractiveSerialConsoleRequest\x1a\x1d.google.longrunning.Operation\"\x9c\x01\x82\xd3\xe4\x93\x02Q\"L/v2/{name=projects/*/locations/*/instances/*}:enableInteractiveSerialConsole:\x01*\xda\x41\x04name\xca\x41;\n&EnableInteractiveSerialConsoleResponse\x12\x11OperationMetadata\x12\xac\x02\n\x1f\x44isableInteractiveSerialConsole\x12I.google.cloud.baremetalsolution.v2.DisableInteractiveSerialConsoleRequest\x1a\x1d.google.longrunning.Operation\"\x9e\x01\x82\xd3\xe4\x93\x02R\"M/v2/{name=projects/*/locations/*/instances/*}:disableInteractiveSerialConsole:\x01*\xda\x41\x04name\xca\x41<\n\'DisableInteractiveSerialConsoleResponse\x12\x11OperationMetadata\x12\xd6\x01\n\tDetachLun\x12\x33.google.cloud.baremetalsolution.v2.DetachLunRequest\x1a\x1d.google.longrunning.Operation\"u\x82\xd3\xe4\x93\x02@\";/v2/{instance=projects/*/locations/*/instances/*}:detachLun:\x01*\xda\x41\x0cinstance,lun\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\xba\x01\n\x0bListSSHKeys\x12\x35.google.cloud.baremetalsolution.v2.ListSSHKeysRequest\x1a\x36.google.cloud.baremetalsolution.v2.ListSSHKeysResponse\"<\x82\xd3\xe4\x93\x02-\x12+/v2/{parent=projects/*/locations/*}/sshKeys\xda\x41\x06parent\x12\xcb\x01\n\x0c\x43reateSSHKey\x12\x36.google.cloud.baremetalsolution.v2.CreateSSHKeyRequest\x1a).google.cloud.baremetalsolution.v2.SSHKey\"X\x82\xd3\xe4\x93\x02\x36\"+/v2/{parent=projects/*/locations/*}/sshKeys:\x07ssh_key\xda\x41\x19parent,ssh_key,ssh_key_id\x12\x9a\x01\n\x0c\x44\x65leteSSHKey\x12\x36.google.cloud.baremetalsolution.v2.DeleteSSHKeyRequest\x1a\x16.google.protobuf.Empty\":\x82\xd3\xe4\x93\x02-*+/v2/{name=projects/*/locations/*/sshKeys/*}\xda\x41\x04name\x12\xba\x01\n\x0bListVolumes\x12\x35.google.cloud.baremetalsolution.v2.ListVolumesRequest\x1a\x36.google.cloud.baremetalsolution.v2.ListVolumesResponse\"<\x82\xd3\xe4\x93\x02-\x12+/v2/{parent=projects/*/locations/*}/volumes\xda\x41\x06parent\x12\xa7\x01\n\tGetVolume\x12\x33.google.cloud.baremetalsolution.v2.GetVolumeRequest\x1a).google.cloud.baremetalsolution.v2.Volume\":\x82\xd3\xe4\x93\x02-\x12+/v2/{name=projects/*/locations/*/volumes/*}\xda\x41\x04name\x12\xdc\x01\n\x0cUpdateVolume\x12\x36.google.cloud.baremetalsolution.v2.UpdateVolumeRequest\x1a\x1d.google.longrunning.Operation\"u\x82\xd3\xe4\x93\x02<22/v2/{volume.name=projects/*/locations/*/volumes/*}:\x06volume\xda\x41\x12volume,update_mask\xca\x41\x1b\n\x06Volume\x12\x11OperationMetadata\x12\xc5\x01\n\x0cRenameVolume\x12\x36.google.cloud.baremetalsolution.v2.RenameVolumeRequest\x1a).google.cloud.baremetalsolution.v2.Volume\"R\x82\xd3\xe4\x93\x02\x37\"2/v2/{name=projects/*/locations/*/volumes/*}:rename:\x01*\xda\x41\x12name,new_volume_id\x12\xd5\x01\n\x0b\x45victVolume\x12\x35.google.cloud.baremetalsolution.v2.EvictVolumeRequest\x1a\x1d.google.longrunning.Operation\"p\x82\xd3\xe4\x93\x02\x36\"1/v2/{name=projects/*/locations/*/volumes/*}:evict:\x01*\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xd6\x01\n\x0cResizeVolume\x12\x36.google.cloud.baremetalsolution.v2.ResizeVolumeRequest\x1a\x1d.google.longrunning.Operation\"o\x82\xd3\xe4\x93\x02\x39\"4/v2/{volume=projects/*/locations/*/volumes/*}:resize:\x01*\xda\x41\x0fvolume,size_gib\xca\x41\x1b\n\x06Volume\x12\x11OperationMetadata\x12\xbe\x01\n\x0cListNetworks\x12\x36.google.cloud.baremetalsolution.v2.ListNetworksRequest\x1a\x37.google.cloud.baremetalsolution.v2.ListNetworksResponse\"=\x82\xd3\xe4\x93\x02.\x12,/v2/{parent=projects/*/locations/*}/networks\xda\x41\x06parent\x12\xdf\x01\n\x10ListNetworkUsage\x12:.google.cloud.baremetalsolution.v2.ListNetworkUsageRequest\x1a;.google.cloud.baremetalsolution.v2.ListNetworkUsageResponse\"R\x82\xd3\xe4\x93\x02\x41\x12?/v2/{location=projects/*/locations/*}/networks:listNetworkUsage\xda\x41\x08location\x12\xab\x01\n\nGetNetwork\x12\x34.google.cloud.baremetalsolution.v2.GetNetworkRequest\x1a*.google.cloud.baremetalsolution.v2.Network\";\x82\xd3\xe4\x93\x02.\x12,/v2/{name=projects/*/locations/*/networks/*}\xda\x41\x04name\x12\xe3\x01\n\rUpdateNetwork\x12\x37.google.cloud.baremetalsolution.v2.UpdateNetworkRequest\x1a\x1d.google.longrunning.Operation\"z\x82\xd3\xe4\x93\x02?24/v2/{network.name=projects/*/locations/*/networks/*}:\x07network\xda\x41\x13network,update_mask\xca\x41\x1c\n\x07Network\x12\x11OperationMetadata\x12\xf4\x01\n\x14\x43reateVolumeSnapshot\x12>.google.cloud.baremetalsolution.v2.CreateVolumeSnapshotRequest\x1a\x31.google.cloud.baremetalsolution.v2.VolumeSnapshot\"i\x82\xd3\xe4\x93\x02J\"7/v2/{parent=projects/*/locations/*/volumes/*}/snapshots:\x0fvolume_snapshot\xda\x41\x16parent,volume_snapshot\x12\x95\x02\n\x15RestoreVolumeSnapshot\x12?.google.cloud.baremetalsolution.v2.RestoreVolumeSnapshotRequest\x1a\x1d.google.longrunning.Operation\"\x9b\x01\x82\xd3\xe4\x93\x02]\"X/v2/{volume_snapshot=projects/*/locations/*/volumes/*/snapshots/*}:restoreVolumeSnapshot:\x01*\xda\x41\x0fvolume_snapshot\xca\x41#\n\x0eVolumeSnapshot\x12\x11OperationMetadata\x12\xb6\x01\n\x14\x44\x65leteVolumeSnapshot\x12>.google.cloud.baremetalsolution.v2.DeleteVolumeSnapshotRequest\x1a\x16.google.protobuf.Empty\"F\x82\xd3\xe4\x93\x02\x39*7/v2/{name=projects/*/locations/*/volumes/*/snapshots/*}\xda\x41\x04name\x12\xcb\x01\n\x11GetVolumeSnapshot\x12;.google.cloud.baremetalsolution.v2.GetVolumeSnapshotRequest\x1a\x31.google.cloud.baremetalsolution.v2.VolumeSnapshot\"F\x82\xd3\xe4\x93\x02\x39\x12\x37/v2/{name=projects/*/locations/*/volumes/*/snapshots/*}\xda\x41\x04name\x12\xde\x01\n\x13ListVolumeSnapshots\x12=.google.cloud.baremetalsolution.v2.ListVolumeSnapshotsRequest\x1a>.google.cloud.baremetalsolution.v2.ListVolumeSnapshotsResponse\"H\x82\xd3\xe4\x93\x02\x39\x12\x37/v2/{parent=projects/*/locations/*/volumes/*}/snapshots\xda\x41\x06parent\x12\xa5\x01\n\x06GetLun\x12\x30.google.cloud.baremetalsolution.v2.GetLunRequest\x1a&.google.cloud.baremetalsolution.v2.Lun\"A\x82\xd3\xe4\x93\x02\x34\x12\x32/v2/{name=projects/*/locations/*/volumes/*/luns/*}\xda\x41\x04name\x12\xb8\x01\n\x08ListLuns\x12\x32.google.cloud.baremetalsolution.v2.ListLunsRequest\x1a\x33.google.cloud.baremetalsolution.v2.ListLunsResponse\"C\x82\xd3\xe4\x93\x02\x34\x12\x32/v2/{parent=projects/*/locations/*/volumes/*}/luns\xda\x41\x06parent\x12\xd6\x01\n\x08\x45victLun\x12\x32.google.cloud.baremetalsolution.v2.EvictLunRequest\x1a\x1d.google.longrunning.Operation\"w\x82\xd3\xe4\x93\x02=\"8/v2/{name=projects/*/locations/*/volumes/*/luns/*}:evict:\x01*\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xaf\x01\n\x0bGetNfsShare\x12\x35.google.cloud.baremetalsolution.v2.GetNfsShareRequest\x1a+.google.cloud.baremetalsolution.v2.NfsShare\"<\x82\xd3\xe4\x93\x02/\x12-/v2/{name=projects/*/locations/*/nfsShares/*}\xda\x41\x04name\x12\xc2\x01\n\rListNfsShares\x12\x37.google.cloud.baremetalsolution.v2.ListNfsSharesRequest\x1a\x38.google.cloud.baremetalsolution.v2.ListNfsSharesResponse\">\x82\xd3\xe4\x93\x02/\x12-/v2/{parent=projects/*/locations/*}/nfsShares\xda\x41\x06parent\x12\xee\x01\n\x0eUpdateNfsShare\x12\x38.google.cloud.baremetalsolution.v2.UpdateNfsShareRequest\x1a\x1d.google.longrunning.Operation\"\x82\x01\x82\xd3\xe4\x93\x02\x44\x32\x37/v2/{nfs_share.name=projects/*/locations/*/nfsShares/*}:\tnfs_share\xda\x41\x15nfs_share,update_mask\xca\x41\x1d\n\x08NfsShare\x12\x11OperationMetadata\x12\xde\x01\n\x0e\x43reateNfsShare\x12\x38.google.cloud.baremetalsolution.v2.CreateNfsShareRequest\x1a\x1d.google.longrunning.Operation\"s\x82\xd3\xe4\x93\x02:\"-/v2/{parent=projects/*/locations/*}/nfsShares:\tnfs_share\xda\x41\x10parent,nfs_share\xca\x41\x1d\n\x08NfsShare\x12\x11OperationMetadata\x12\xcf\x01\n\x0eRenameNfsShare\x12\x38.google.cloud.baremetalsolution.v2.RenameNfsShareRequest\x1a+.google.cloud.baremetalsolution.v2.NfsShare\"V\x82\xd3\xe4\x93\x02\x39\"4/v2/{name=projects/*/locations/*/nfsShares/*}:rename:\x01*\xda\x41\x14name,new_nfsshare_id\x12\xd4\x01\n\x0e\x44\x65leteNfsShare\x12\x38.google.cloud.baremetalsolution.v2.DeleteNfsShareRequest\x1a\x1d.google.longrunning.Operation\"i\x82\xd3\xe4\x93\x02/*-/v2/{name=projects/*/locations/*/nfsShares/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xe6\x01\n\x16ListProvisioningQuotas\x12@.google.cloud.baremetalsolution.v2.ListProvisioningQuotasRequest\x1a\x41.google.cloud.baremetalsolution.v2.ListProvisioningQuotasResponse\"G\x82\xd3\xe4\x93\x02\x38\x12\x36/v2/{parent=projects/*/locations/*}/provisioningQuotas\xda\x41\x06parent\x12\x8b\x02\n\x18SubmitProvisioningConfig\x12\x42.google.cloud.baremetalsolution.v2.SubmitProvisioningConfigRequest\x1a\x43.google.cloud.baremetalsolution.v2.SubmitProvisioningConfigResponse\"f\x82\xd3\xe4\x93\x02\x43\">/v2/{parent=projects/*/locations/*}/provisioningConfigs:submit:\x01*\xda\x41\x1aparent,provisioning_config\x12\xd7\x01\n\x15GetProvisioningConfig\x12?.google.cloud.baremetalsolution.v2.GetProvisioningConfigRequest\x1a\x35.google.cloud.baremetalsolution.v2.ProvisioningConfig\"F\x82\xd3\xe4\x93\x02\x39\x12\x37/v2/{name=projects/*/locations/*/provisioningConfigs/*}\xda\x41\x04name\x12\x88\x02\n\x18\x43reateProvisioningConfig\x12\x42.google.cloud.baremetalsolution.v2.CreateProvisioningConfigRequest\x1a\x35.google.cloud.baremetalsolution.v2.ProvisioningConfig\"q\x82\xd3\xe4\x93\x02N\"7/v2/{parent=projects/*/locations/*}/provisioningConfigs:\x13provisioning_config\xda\x41\x1aparent,provisioning_config\x12\xa2\x02\n\x18UpdateProvisioningConfig\x12\x42.google.cloud.baremetalsolution.v2.UpdateProvisioningConfigRequest\x1a\x35.google.cloud.baremetalsolution.v2.ProvisioningConfig\"\x8a\x01\x82\xd3\xe4\x93\x02\x62\x32K/v2/{provisioning_config.name=projects/*/locations/*/provisioningConfigs/*}:\x13provisioning_config\xda\x41\x1fprovisioning_config,update_mask\x12\xca\x01\n\rRenameNetwork\x12\x37.google.cloud.baremetalsolution.v2.RenameNetworkRequest\x1a*.google.cloud.baremetalsolution.v2.Network\"T\x82\xd3\xe4\x93\x02\x38\"3/v2/{name=projects/*/locations/*/networks/*}:rename:\x01*\xda\x41\x13name,new_network_id\x12\xbe\x01\n\x0cListOSImages\x12\x36.google.cloud.baremetalsolution.v2.ListOSImagesRequest\x1a\x37.google.cloud.baremetalsolution.v2.ListOSImagesResponse\"=\x82\xd3\xe4\x93\x02.\x12,/v2/{parent=projects/*/locations/*}/osImages\xda\x41\x06parent\x1aT\xca\x41 baremetalsolution.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x85\x02\n%com.google.cloud.baremetalsolution.v2B\x16\x42\x61reMetalSolutionProtoP\x01ZScloud.google.com/go/baremetalsolution/apiv2/baremetalsolutionpb;baremetalsolutionpb\xaa\x02!Google.Cloud.BareMetalSolution.V2\xca\x02!Google\\Cloud\\BareMetalSolution\\V2\xea\x02$Google::Cloud::BareMetalSolution::V2b\x06proto3"

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
      end
    end
  end
end
