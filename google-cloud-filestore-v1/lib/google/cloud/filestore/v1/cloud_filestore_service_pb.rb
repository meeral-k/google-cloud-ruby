# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/filestore/v1/cloud_filestore_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/common/operation_metadata_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n7google/cloud/filestore/v1/cloud_filestore_service.proto\x12\x19google.cloud.filestore.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/common/operation_metadata.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\x80\x03\n\rNetworkConfig\x12\x0f\n\x07network\x18\x01 \x01(\t\x12\x43\n\x05modes\x18\x03 \x03(\x0e\x32\x34.google.cloud.filestore.v1.NetworkConfig.AddressMode\x12\x19\n\x11reserved_ip_range\x18\x04 \x01(\t\x12\x19\n\x0cip_addresses\x18\x05 \x03(\tB\x03\xe0\x41\x03\x12J\n\x0c\x63onnect_mode\x18\x06 \x01(\x0e\x32\x34.google.cloud.filestore.v1.NetworkConfig.ConnectMode\":\n\x0b\x41\x64\x64ressMode\x12\x1c\n\x18\x41\x44\x44RESS_MODE_UNSPECIFIED\x10\x00\x12\r\n\tMODE_IPV4\x10\x01\"[\n\x0b\x43onnectMode\x12\x1c\n\x18\x43ONNECT_MODE_UNSPECIFIED\x10\x00\x12\x12\n\x0e\x44IRECT_PEERING\x10\x01\x12\x1a\n\x16PRIVATE_SERVICE_ACCESS\x10\x02\"\xc1\x01\n\x0f\x46ileShareConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x0b\x63\x61pacity_gb\x18\x02 \x01(\x03\x12\x38\n\rsource_backup\x18\x08 \x01(\tB\x1f\xfa\x41\x1c\n\x1a\x66ile.googleapis.com/BackupH\x00\x12G\n\x12nfs_export_options\x18\x07 \x03(\x0b\x32+.google.cloud.filestore.v1.NfsExportOptionsB\x08\n\x06source\"\xfd\x02\n\x10NfsExportOptions\x12\x11\n\tip_ranges\x18\x01 \x03(\t\x12K\n\x0b\x61\x63\x63\x65ss_mode\x18\x02 \x01(\x0e\x32\x36.google.cloud.filestore.v1.NfsExportOptions.AccessMode\x12K\n\x0bsquash_mode\x18\x03 \x01(\x0e\x32\x36.google.cloud.filestore.v1.NfsExportOptions.SquashMode\x12\x10\n\x08\x61non_uid\x18\x04 \x01(\x03\x12\x10\n\x08\x61non_gid\x18\x05 \x01(\x03\"H\n\nAccessMode\x12\x1b\n\x17\x41\x43\x43\x45SS_MODE_UNSPECIFIED\x10\x00\x12\r\n\tREAD_ONLY\x10\x01\x12\x0e\n\nREAD_WRITE\x10\x02\"N\n\nSquashMode\x12\x1b\n\x17SQUASH_MODE_UNSPECIFIED\x10\x00\x12\x12\n\x0eNO_ROOT_SQUASH\x10\x01\x12\x0f\n\x0bROOT_SQUASH\x10\x02\"\xa5\t\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12=\n\x05state\x18\x05 \x01(\x0e\x32).google.cloud.filestore.v1.Instance.StateB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x36\n\x04tier\x18\x08 \x01(\x0e\x32(.google.cloud.filestore.v1.Instance.Tier\x12?\n\x06labels\x18\t \x03(\x0b\x32/.google.cloud.filestore.v1.Instance.LabelsEntry\x12?\n\x0b\x66ile_shares\x18\n \x03(\x0b\x32*.google.cloud.filestore.v1.FileShareConfig\x12:\n\x08networks\x18\x0b \x03(\x0b\x32(.google.cloud.filestore.v1.NetworkConfig\x12\x0c\n\x04\x65tag\x18\x0c \x01(\t\x12\x36\n\rsatisfies_pzs\x18\r \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzi\x18\x12 \x01(\x08\x42\x03\xe0\x41\x03\x12\x14\n\x0ckms_key_name\x18\x0e \x01(\t\x12U\n\x12suspension_reasons\x18\x0f \x03(\x0e\x32\x34.google.cloud.filestore.v1.Instance.SuspensionReasonB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xaa\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02\x12\r\n\tREPAIRING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\t\n\x05\x45RROR\x10\x06\x12\r\n\tRESTORING\x10\x07\x12\r\n\tSUSPENDED\x10\x08\x12\x0e\n\nSUSPENDING\x10\t\x12\x0c\n\x08RESUMING\x10\n\x12\r\n\tREVERTING\x10\x0c\"\x92\x01\n\x04Tier\x12\x14\n\x10TIER_UNSPECIFIED\x10\x00\x12\x0c\n\x08STANDARD\x10\x01\x12\x0b\n\x07PREMIUM\x10\x02\x12\r\n\tBASIC_HDD\x10\x03\x12\r\n\tBASIC_SSD\x10\x04\x12\x12\n\x0eHIGH_SCALE_SSD\x10\x05\x12\x0e\n\nENTERPRISE\x10\x06\x12\t\n\x05ZONAL\x10\x07\x12\x0c\n\x08REGIONAL\x10\x08\"H\n\x10SuspensionReason\x12!\n\x1dSUSPENSION_REASON_UNSPECIFIED\x10\x00\x12\x11\n\rKMS_KEY_ISSUE\x10\x01:_\xea\x41\\\n\x1c\x66ile.googleapis.com/Instance\x12<projects/{project}/locations/{location}/instances/{instance}\"\xa8\x01\n\x15\x43reateInstanceRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12:\n\x08instance\x18\x03 \x01(\x0b\x32#.google.cloud.filestore.v1.InstanceB\x03\xe0\x41\x02\"H\n\x12GetInstanceRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Instance\"\x7f\n\x15UpdateInstanceRequest\x12/\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x35\n\x08instance\x18\x02 \x01(\x0b\x32#.google.cloud.filestore.v1.Instance\"\xa9\x01\n\x16RestoreInstanceRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Instance\x12\x17\n\nfile_share\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x38\n\rsource_backup\x18\x03 \x01(\tB\x1f\xfa\x41\x1c\n\x1a\x66ile.googleapis.com/BackupH\x00\x42\x08\n\x06source\"l\n\x15RevertInstanceRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Instance\x12\x1f\n\x12target_snapshot_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"Z\n\x15\x44\x65leteInstanceRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Instance\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\"\x9a\x01\n\x14ListInstancesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"}\n\x15ListInstancesResponse\x12\x36\n\tinstances\x18\x01 \x03(\x0b\x32#.google.cloud.filestore.v1.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xf8\x03\n\x08Snapshot\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12=\n\x05state\x18\x03 \x01(\x0e\x32).google.cloud.filestore.v1.Snapshot.StateB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12?\n\x06labels\x18\x05 \x03(\x0b\x32/.google.cloud.filestore.v1.Snapshot.LabelsEntry\x12\"\n\x15\x66ilesystem_used_bytes\x18\x06 \x01(\x03\x42\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"E\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03:t\xea\x41q\n\x1c\x66ile.googleapis.com/Snapshot\x12Qprojects/{project}/locations/{location}/instances/{instance}/snapshots/{snapshot}\"\xa3\x01\n\x15\x43reateSnapshotRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Instance\x12\x18\n\x0bsnapshot_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12:\n\x08snapshot\x18\x03 \x01(\x0b\x32#.google.cloud.filestore.v1.SnapshotB\x03\xe0\x41\x02\"H\n\x12GetSnapshotRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Snapshot\"K\n\x15\x44\x65leteSnapshotRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Snapshot\"\x89\x01\n\x15UpdateSnapshotRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12:\n\x08snapshot\x18\x02 \x01(\x0b\x32#.google.cloud.filestore.v1.SnapshotB\x03\xe0\x41\x02\"\x95\x01\n\x14ListSnapshotsRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Instance\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"h\n\x15ListSnapshotsResponse\x12\x36\n\tsnapshots\x18\x01 \x03(\x0b\x32#.google.cloud.filestore.v1.Snapshot\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xb1\x06\n\x06\x42\x61\x63kup\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12;\n\x05state\x18\x03 \x01(\x0e\x32\'.google.cloud.filestore.v1.Backup.StateB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12=\n\x06labels\x18\x05 \x03(\x0b\x32-.google.cloud.filestore.v1.Backup.LabelsEntry\x12\x18\n\x0b\x63\x61pacity_gb\x18\x06 \x01(\x03\x42\x03\xe0\x41\x03\x12\x1a\n\rstorage_bytes\x18\x07 \x01(\x03\x42\x03\xe0\x41\x03\x12:\n\x0fsource_instance\x18\x08 \x01(\tB!\xfa\x41\x1e\n\x1c\x66ile.googleapis.com/Instance\x12\x19\n\x11source_file_share\x18\t \x01(\t\x12K\n\x14source_instance_tier\x18\n \x01(\x0e\x32(.google.cloud.filestore.v1.Instance.TierB\x03\xe0\x41\x03\x12\x1b\n\x0e\x64ownload_bytes\x18\x0b \x01(\x03\x42\x03\xe0\x41\x03\x12\x36\n\rsatisfies_pzs\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzi\x18\x0e \x01(\x08\x42\x03\xe0\x41\x03\x12\x14\n\x07kms_key\x18\r \x01(\tB\x03\xe0\x41\x05\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"b\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\x0e\n\nFINALIZING\x10\x02\x12\t\n\x05READY\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x0b\n\x07INVALID\x10\x05:Y\xea\x41V\n\x1a\x66ile.googleapis.com/Backup\x12\x38projects/{project}/locations/{location}/backups/{backup}\"\xa0\x01\n\x13\x43reateBackupRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x36\n\x06\x62\x61\x63kup\x18\x02 \x01(\x0b\x32!.google.cloud.filestore.v1.BackupB\x03\xe0\x41\x02\x12\x16\n\tbackup_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"G\n\x13\x44\x65leteBackupRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1a\x66ile.googleapis.com/Backup\"\x83\x01\n\x13UpdateBackupRequest\x12\x36\n\x06\x62\x61\x63kup\x18\x01 \x01(\x0b\x32!.google.cloud.filestore.v1.BackupB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"D\n\x10GetBackupRequest\x12\x30\n\x04name\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1a\x66ile.googleapis.com/Backup\"\x98\x01\n\x12ListBackupsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"w\n\x13ListBackupsResponse\x12\x32\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32!.google.cloud.filestore.v1.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t2\xa4\x1d\n\x15\x43loudFilestoreManager\x12\xb2\x01\n\rListInstances\x12/.google.cloud.filestore.v1.ListInstancesRequest\x1a\x30.google.cloud.filestore.v1.ListInstancesResponse\">\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/instances\xda\x41\x06parent\x12\x9f\x01\n\x0bGetInstance\x12-.google.cloud.filestore.v1.GetInstanceRequest\x1a#.google.cloud.filestore.v1.Instance\"<\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/instances/*}\xda\x41\x04name\x12\xf5\x01\n\x0e\x43reateInstance\x12\x30.google.cloud.filestore.v1.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x91\x01\x82\xd3\xe4\x93\x02\x39\"-/v1/{parent=projects/*/locations/*}/instances:\x08instance\xda\x41\x1bparent,instance,instance_id\xca\x41\x31\n\x08Instance\x12%google.cloud.common.OperationMetadata\x12\xf7\x01\n\x0eUpdateInstance\x12\x30.google.cloud.filestore.v1.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x93\x01\x82\xd3\xe4\x93\x02\x42\x32\x36/v1/{instance.name=projects/*/locations/*/instances/*}:\x08instance\xda\x41\x14instance,update_mask\xca\x41\x31\n\x08Instance\x12%google.cloud.common.OperationMetadata\x12\xd9\x01\n\x0fRestoreInstance\x12\x31.google.cloud.filestore.v1.RestoreInstanceRequest\x1a\x1d.google.longrunning.Operation\"t\x82\xd3\xe4\x93\x02:\"5/v1/{name=projects/*/locations/*/instances/*}:restore:\x01*\xca\x41\x31\n\x08Instance\x12%google.cloud.common.OperationMetadata\x12\xd6\x01\n\x0eRevertInstance\x12\x30.google.cloud.filestore.v1.RevertInstanceRequest\x1a\x1d.google.longrunning.Operation\"s\x82\xd3\xe4\x93\x02\x39\"4/v1/{name=projects/*/locations/*/instances/*}:revert:\x01*\xca\x41\x31\n\x08Instance\x12%google.cloud.common.OperationMetadata\x12\xe0\x01\n\x0e\x44\x65leteInstance\x12\x30.google.cloud.filestore.v1.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"}\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/instances/*}\xda\x41\x04name\xca\x41>\n\x15google.protobuf.Empty\x12%google.cloud.common.OperationMetadata\x12\xbe\x01\n\rListSnapshots\x12/.google.cloud.filestore.v1.ListSnapshotsRequest\x1a\x30.google.cloud.filestore.v1.ListSnapshotsResponse\"J\x82\xd3\xe4\x93\x02;\x12\x39/v1/{parent=projects/*/locations/*/instances/*}/snapshots\xda\x41\x06parent\x12\xab\x01\n\x0bGetSnapshot\x12-.google.cloud.filestore.v1.GetSnapshotRequest\x1a#.google.cloud.filestore.v1.Snapshot\"H\x82\xd3\xe4\x93\x02;\x12\x39/v1/{name=projects/*/locations/*/instances/*/snapshots/*}\xda\x41\x04name\x12\x81\x02\n\x0e\x43reateSnapshot\x12\x30.google.cloud.filestore.v1.CreateSnapshotRequest\x1a\x1d.google.longrunning.Operation\"\x9d\x01\x82\xd3\xe4\x93\x02\x45\"9/v1/{parent=projects/*/locations/*/instances/*}/snapshots:\x08snapshot\xda\x41\x1bparent,snapshot,snapshot_id\xca\x41\x31\n\x08Snapshot\x12%google.cloud.common.OperationMetadata\x12\xed\x01\n\x0e\x44\x65leteSnapshot\x12\x30.google.cloud.filestore.v1.DeleteSnapshotRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\x82\xd3\xe4\x93\x02;*9/v1/{name=projects/*/locations/*/instances/*/snapshots/*}\xda\x41\x04name\xca\x41>\n\x15google.protobuf.Empty\x12%google.cloud.common.OperationMetadata\x12\x83\x02\n\x0eUpdateSnapshot\x12\x30.google.cloud.filestore.v1.UpdateSnapshotRequest\x1a\x1d.google.longrunning.Operation\"\x9f\x01\x82\xd3\xe4\x93\x02N2B/v1/{snapshot.name=projects/*/locations/*/instances/*/snapshots/*}:\x08snapshot\xda\x41\x14snapshot,update_mask\xca\x41\x31\n\x08Snapshot\x12%google.cloud.common.OperationMetadata\x12\xaa\x01\n\x0bListBackups\x12-.google.cloud.filestore.v1.ListBackupsRequest\x1a..google.cloud.filestore.v1.ListBackupsResponse\"<\x82\xd3\xe4\x93\x02-\x12+/v1/{parent=projects/*/locations/*}/backups\xda\x41\x06parent\x12\x97\x01\n\tGetBackup\x12+.google.cloud.filestore.v1.GetBackupRequest\x1a!.google.cloud.filestore.v1.Backup\":\x82\xd3\xe4\x93\x02-\x12+/v1/{name=projects/*/locations/*/backups/*}\xda\x41\x04name\x12\xe7\x01\n\x0c\x43reateBackup\x12..google.cloud.filestore.v1.CreateBackupRequest\x1a\x1d.google.longrunning.Operation\"\x87\x01\x82\xd3\xe4\x93\x02\x35\"+/v1/{parent=projects/*/locations/*}/backups:\x06\x62\x61\x63kup\xda\x41\x17parent,backup,backup_id\xca\x41/\n\x06\x42\x61\x63kup\x12%google.cloud.common.OperationMetadata\x12\xda\x01\n\x0c\x44\x65leteBackup\x12..google.cloud.filestore.v1.DeleteBackupRequest\x1a\x1d.google.longrunning.Operation\"{\x82\xd3\xe4\x93\x02-*+/v1/{name=projects/*/locations/*/backups/*}\xda\x41\x04name\xca\x41>\n\x15google.protobuf.Empty\x12%google.cloud.common.OperationMetadata\x12\xe9\x01\n\x0cUpdateBackup\x12..google.cloud.filestore.v1.UpdateBackupRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\x82\xd3\xe4\x93\x02<22/v1/{backup.name=projects/*/locations/*/backups/*}:\x06\x62\x61\x63kup\xda\x41\x12\x62\x61\x63kup,update_mask\xca\x41/\n\x06\x42\x61\x63kup\x12%google.cloud.common.OperationMetadata\x1aG\xca\x41\x13\x66ile.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xb2\x01\n\x1d\x63om.google.cloud.filestore.v1B\x1a\x43loudFilestoreServiceProtoP\x01Z;cloud.google.com/go/filestore/apiv1/filestorepb;filestorepb\xaa\x02\x19Google.Cloud.Filestore.V1\xca\x02\x19Google\\Cloud\\Filestore\\V1b\x06proto3"

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
    ["google.protobuf.BoolValue", "google/protobuf/wrappers.proto"],
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
    module Filestore
      module V1
        NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.NetworkConfig").msgclass
        NetworkConfig::AddressMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.NetworkConfig.AddressMode").enummodule
        NetworkConfig::ConnectMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.NetworkConfig.ConnectMode").enummodule
        FileShareConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.FileShareConfig").msgclass
        NfsExportOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.NfsExportOptions").msgclass
        NfsExportOptions::AccessMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.NfsExportOptions.AccessMode").enummodule
        NfsExportOptions::SquashMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.NfsExportOptions.SquashMode").enummodule
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Instance").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Instance.State").enummodule
        Instance::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Instance.Tier").enummodule
        Instance::SuspensionReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Instance.SuspensionReason").enummodule
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.CreateInstanceRequest").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.GetInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.UpdateInstanceRequest").msgclass
        RestoreInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.RestoreInstanceRequest").msgclass
        RevertInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.RevertInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.DeleteInstanceRequest").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.ListInstancesResponse").msgclass
        Snapshot = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Snapshot").msgclass
        Snapshot::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Snapshot.State").enummodule
        CreateSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.CreateSnapshotRequest").msgclass
        GetSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.GetSnapshotRequest").msgclass
        DeleteSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.DeleteSnapshotRequest").msgclass
        UpdateSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.UpdateSnapshotRequest").msgclass
        ListSnapshotsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.ListSnapshotsRequest").msgclass
        ListSnapshotsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.ListSnapshotsResponse").msgclass
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Backup").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.Backup.State").enummodule
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.CreateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.DeleteBackupRequest").msgclass
        UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.UpdateBackupRequest").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.GetBackupRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.filestore.v1.ListBackupsResponse").msgclass
      end
    end
  end
end
