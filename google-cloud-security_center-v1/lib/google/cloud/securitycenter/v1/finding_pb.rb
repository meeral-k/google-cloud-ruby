# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/finding.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/securitycenter/v1/access_pb'
require 'google/cloud/securitycenter/v1/application_pb'
require 'google/cloud/securitycenter/v1/attack_exposure_pb'
require 'google/cloud/securitycenter/v1/backup_disaster_recovery_pb'
require 'google/cloud/securitycenter/v1/cloud_armor_pb'
require 'google/cloud/securitycenter/v1/cloud_dlp_data_profile_pb'
require 'google/cloud/securitycenter/v1/cloud_dlp_inspection_pb'
require 'google/cloud/securitycenter/v1/compliance_pb'
require 'google/cloud/securitycenter/v1/connection_pb'
require 'google/cloud/securitycenter/v1/contact_details_pb'
require 'google/cloud/securitycenter/v1/container_pb'
require 'google/cloud/securitycenter/v1/database_pb'
require 'google/cloud/securitycenter/v1/exfiltration_pb'
require 'google/cloud/securitycenter/v1/external_system_pb'
require 'google/cloud/securitycenter/v1/file_pb'
require 'google/cloud/securitycenter/v1/group_membership_pb'
require 'google/cloud/securitycenter/v1/iam_binding_pb'
require 'google/cloud/securitycenter/v1/indicator_pb'
require 'google/cloud/securitycenter/v1/kernel_rootkit_pb'
require 'google/cloud/securitycenter/v1/kubernetes_pb'
require 'google/cloud/securitycenter/v1/load_balancer_pb'
require 'google/cloud/securitycenter/v1/log_entry_pb'
require 'google/cloud/securitycenter/v1/mitre_attack_pb'
require 'google/cloud/securitycenter/v1/notebook_pb'
require 'google/cloud/securitycenter/v1/org_policy_pb'
require 'google/cloud/securitycenter/v1/process_pb'
require 'google/cloud/securitycenter/v1/security_marks_pb'
require 'google/cloud/securitycenter/v1/security_posture_pb'
require 'google/cloud/securitycenter/v1/toxic_combination_pb'
require 'google/cloud/securitycenter/v1/vulnerability_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/securitycenter/v1/finding.proto\x12\x1egoogle.cloud.securitycenter.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a+google/cloud/securitycenter/v1/access.proto\x1a\x30google/cloud/securitycenter/v1/application.proto\x1a\x34google/cloud/securitycenter/v1/attack_exposure.proto\x1a=google/cloud/securitycenter/v1/backup_disaster_recovery.proto\x1a\x30google/cloud/securitycenter/v1/cloud_armor.proto\x1a;google/cloud/securitycenter/v1/cloud_dlp_data_profile.proto\x1a\x39google/cloud/securitycenter/v1/cloud_dlp_inspection.proto\x1a/google/cloud/securitycenter/v1/compliance.proto\x1a/google/cloud/securitycenter/v1/connection.proto\x1a\x34google/cloud/securitycenter/v1/contact_details.proto\x1a.google/cloud/securitycenter/v1/container.proto\x1a-google/cloud/securitycenter/v1/database.proto\x1a\x31google/cloud/securitycenter/v1/exfiltration.proto\x1a\x34google/cloud/securitycenter/v1/external_system.proto\x1a)google/cloud/securitycenter/v1/file.proto\x1a\x35google/cloud/securitycenter/v1/group_membership.proto\x1a\x30google/cloud/securitycenter/v1/iam_binding.proto\x1a.google/cloud/securitycenter/v1/indicator.proto\x1a\x33google/cloud/securitycenter/v1/kernel_rootkit.proto\x1a/google/cloud/securitycenter/v1/kubernetes.proto\x1a\x32google/cloud/securitycenter/v1/load_balancer.proto\x1a.google/cloud/securitycenter/v1/log_entry.proto\x1a\x31google/cloud/securitycenter/v1/mitre_attack.proto\x1a-google/cloud/securitycenter/v1/notebook.proto\x1a/google/cloud/securitycenter/v1/org_policy.proto\x1a,google/cloud/securitycenter/v1/process.proto\x1a\x33google/cloud/securitycenter/v1/security_marks.proto\x1a\x35google/cloud/securitycenter/v1/security_posture.proto\x1a\x36google/cloud/securitycenter/v1/toxic_combination.proto\x1a\x32google/cloud/securitycenter/v1/vulnerability.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8b!\n\x07\x46inding\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0e\n\x06parent\x18\x02 \x01(\t\x12\x15\n\rresource_name\x18\x03 \x01(\t\x12<\n\x05state\x18\x04 \x01(\x0e\x32-.google.cloud.securitycenter.v1.Finding.State\x12\x10\n\x08\x63\x61tegory\x18\x05 \x01(\t\x12\x14\n\x0c\x65xternal_uri\x18\x06 \x01(\t\x12X\n\x11source_properties\x18\x07 \x03(\x0b\x32=.google.cloud.securitycenter.v1.Finding.SourcePropertiesEntry\x12J\n\x0esecurity_marks\x18\x08 \x01(\x0b\x32-.google.cloud.securitycenter.v1.SecurityMarksB\x03\xe0\x41\x03\x12.\n\nevent_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63reate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x42\n\x08severity\x18\x0c \x01(\x0e\x32\x30.google.cloud.securitycenter.v1.Finding.Severity\x12\x16\n\x0e\x63\x61nonical_name\x18\x0e \x01(\t\x12:\n\x04mute\x18\x0f \x01(\x0e\x32,.google.cloud.securitycenter.v1.Finding.Mute\x12K\n\rfinding_class\x18\x11 \x01(\x0e\x32\x34.google.cloud.securitycenter.v1.Finding.FindingClass\x12<\n\tindicator\x18\x12 \x01(\x0b\x32).google.cloud.securitycenter.v1.Indicator\x12\x44\n\rvulnerability\x18\x14 \x01(\x0b\x32-.google.cloud.securitycenter.v1.Vulnerability\x12\x39\n\x10mute_update_time\x18\x15 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12[\n\x10\x65xternal_systems\x18\x16 \x03(\x0b\x32<.google.cloud.securitycenter.v1.Finding.ExternalSystemsEntryB\x03\xe0\x41\x03\x12\x41\n\x0cmitre_attack\x18\x19 \x01(\x0b\x32+.google.cloud.securitycenter.v1.MitreAttack\x12\x36\n\x06\x61\x63\x63\x65ss\x18\x1a \x01(\x0b\x32&.google.cloud.securitycenter.v1.Access\x12?\n\x0b\x63onnections\x18\x1f \x03(\x0b\x32*.google.cloud.securitycenter.v1.Connection\x12\x16\n\x0emute_initiator\x18\x1c \x01(\t\x12H\n\tmute_info\x18= \x01(\x0b\x32\x30.google.cloud.securitycenter.v1.Finding.MuteInfoB\x03\xe0\x41\x03\x12:\n\tprocesses\x18\x1e \x03(\x0b\x32\'.google.cloud.securitycenter.v1.Process\x12L\n\x08\x63ontacts\x18! \x03(\x0b\x32\x35.google.cloud.securitycenter.v1.Finding.ContactsEntryB\x03\xe0\x41\x03\x12?\n\x0b\x63ompliances\x18\" \x03(\x0b\x32*.google.cloud.securitycenter.v1.Compliance\x12 \n\x13parent_display_name\x18$ \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18% \x01(\t\x12\x42\n\x0c\x65xfiltration\x18& \x01(\x0b\x32,.google.cloud.securitycenter.v1.Exfiltration\x12@\n\x0ciam_bindings\x18\' \x03(\x0b\x32*.google.cloud.securitycenter.v1.IamBinding\x12\x12\n\nnext_steps\x18( \x01(\t\x12\x13\n\x0bmodule_name\x18) \x01(\t\x12=\n\ncontainers\x18* \x03(\x0b\x32).google.cloud.securitycenter.v1.Container\x12>\n\nkubernetes\x18+ \x01(\x0b\x32*.google.cloud.securitycenter.v1.Kubernetes\x12:\n\x08\x64\x61tabase\x18, \x01(\x0b\x32(.google.cloud.securitycenter.v1.Database\x12G\n\x0f\x61ttack_exposure\x18- \x01(\x0b\x32..google.cloud.securitycenter.v1.AttackExposure\x12\x33\n\x05\x66iles\x18. \x03(\x0b\x32$.google.cloud.securitycenter.v1.File\x12P\n\x14\x63loud_dlp_inspection\x18\x30 \x01(\x0b\x32\x32.google.cloud.securitycenter.v1.CloudDlpInspection\x12S\n\x16\x63loud_dlp_data_profile\x18\x31 \x01(\x0b\x32\x33.google.cloud.securitycenter.v1.CloudDlpDataProfile\x12\x45\n\x0ekernel_rootkit\x18\x32 \x01(\x0b\x32-.google.cloud.securitycenter.v1.KernelRootkit\x12?\n\x0corg_policies\x18\x33 \x03(\x0b\x32).google.cloud.securitycenter.v1.OrgPolicy\x12@\n\x0b\x61pplication\x18\x35 \x01(\x0b\x32+.google.cloud.securitycenter.v1.Application\x12X\n\x18\x62\x61\x63kup_disaster_recovery\x18\x37 \x01(\x0b\x32\x36.google.cloud.securitycenter.v1.BackupDisasterRecovery\x12I\n\x10security_posture\x18\x38 \x01(\x0b\x32/.google.cloud.securitycenter.v1.SecurityPosture\x12=\n\x0blog_entries\x18\x39 \x03(\x0b\x32(.google.cloud.securitycenter.v1.LogEntry\x12\x44\n\x0eload_balancers\x18: \x03(\x0b\x32,.google.cloud.securitycenter.v1.LoadBalancer\x12?\n\x0b\x63loud_armor\x18; \x01(\x0b\x32*.google.cloud.securitycenter.v1.CloudArmor\x12:\n\x08notebook\x18? \x01(\x0b\x32(.google.cloud.securitycenter.v1.Notebook\x12K\n\x11toxic_combination\x18@ \x01(\x0b\x32\x30.google.cloud.securitycenter.v1.ToxicCombination\x12J\n\x11group_memberships\x18\x41 \x03(\x0b\x32/.google.cloud.securitycenter.v1.GroupMembership\x1a\x93\x03\n\x08MuteInfo\x12P\n\x0bstatic_mute\x18\x01 \x01(\x0b\x32;.google.cloud.securitycenter.v1.Finding.MuteInfo.StaticMute\x12`\n\x14\x64ynamic_mute_records\x18\x02 \x03(\x0b\x32\x42.google.cloud.securitycenter.v1.Finding.MuteInfo.DynamicMuteRecord\x1ay\n\nStaticMute\x12;\n\x05state\x18\x01 \x01(\x0e\x32,.google.cloud.securitycenter.v1.Finding.Mute\x12.\n\napply_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1aX\n\x11\x44ynamicMuteRecord\x12\x13\n\x0bmute_config\x18\x01 \x01(\t\x12.\n\nmatch_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1aO\n\x15SourcePropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x1a\x66\n\x14\x45xternalSystemsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12=\n\x05value\x18\x02 \x01(\x0b\x32..google.cloud.securitycenter.v1.ExternalSystem:\x02\x38\x01\x1a_\n\rContactsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12=\n\x05value\x18\x02 \x01(\x0b\x32..google.cloud.securitycenter.v1.ContactDetails:\x02\x38\x01\"8\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\x0c\n\x08INACTIVE\x10\x02\"Q\n\x08Severity\x12\x18\n\x14SEVERITY_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43RITICAL\x10\x01\x12\x08\n\x04HIGH\x10\x02\x12\n\n\x06MEDIUM\x10\x03\x12\x07\n\x03LOW\x10\x04\"C\n\x04Mute\x12\x14\n\x10MUTE_UNSPECIFIED\x10\x00\x12\t\n\x05MUTED\x10\x01\x12\x0b\n\x07UNMUTED\x10\x02\x12\r\n\tUNDEFINED\x10\x04\"\xb0\x01\n\x0c\x46indingClass\x12\x1d\n\x19\x46INDING_CLASS_UNSPECIFIED\x10\x00\x12\n\n\x06THREAT\x10\x01\x12\x11\n\rVULNERABILITY\x10\x02\x12\x14\n\x10MISCONFIGURATION\x10\x03\x12\x0f\n\x0bOBSERVATION\x10\x04\x12\r\n\tSCC_ERROR\x10\x05\x12\x15\n\x11POSTURE_VIOLATION\x10\x06\x12\x15\n\x11TOXIC_COMBINATION\x10\x07:\xee\x01\xea\x41\xea\x01\n%securitycenter.googleapis.com/Finding\x12@organizations/{organization}/sources/{source}/findings/{finding}\x12\x34\x66olders/{folder}/sources/{source}/findings/{finding}\x12\x36projects/{project}/sources/{source}/findings/{finding}*\x08\x66indings2\x07\x66indingB\xd8\x01\n\"com.google.cloud.securitycenter.v1P\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.securitycenter.v1.SecurityMarks", "google/cloud/securitycenter/v1/security_marks.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.securitycenter.v1.Indicator", "google/cloud/securitycenter/v1/indicator.proto"],
    ["google.cloud.securitycenter.v1.Vulnerability", "google/cloud/securitycenter/v1/vulnerability.proto"],
    ["google.cloud.securitycenter.v1.MitreAttack", "google/cloud/securitycenter/v1/mitre_attack.proto"],
    ["google.cloud.securitycenter.v1.Access", "google/cloud/securitycenter/v1/access.proto"],
    ["google.cloud.securitycenter.v1.Connection", "google/cloud/securitycenter/v1/connection.proto"],
    ["google.cloud.securitycenter.v1.Process", "google/cloud/securitycenter/v1/process.proto"],
    ["google.cloud.securitycenter.v1.Compliance", "google/cloud/securitycenter/v1/compliance.proto"],
    ["google.cloud.securitycenter.v1.Exfiltration", "google/cloud/securitycenter/v1/exfiltration.proto"],
    ["google.cloud.securitycenter.v1.IamBinding", "google/cloud/securitycenter/v1/iam_binding.proto"],
    ["google.cloud.securitycenter.v1.Container", "google/cloud/securitycenter/v1/container.proto"],
    ["google.cloud.securitycenter.v1.Kubernetes", "google/cloud/securitycenter/v1/kubernetes.proto"],
    ["google.cloud.securitycenter.v1.Database", "google/cloud/securitycenter/v1/database.proto"],
    ["google.cloud.securitycenter.v1.AttackExposure", "google/cloud/securitycenter/v1/attack_exposure.proto"],
    ["google.cloud.securitycenter.v1.File", "google/cloud/securitycenter/v1/file.proto"],
    ["google.cloud.securitycenter.v1.CloudDlpInspection", "google/cloud/securitycenter/v1/cloud_dlp_inspection.proto"],
    ["google.cloud.securitycenter.v1.CloudDlpDataProfile", "google/cloud/securitycenter/v1/cloud_dlp_data_profile.proto"],
    ["google.cloud.securitycenter.v1.KernelRootkit", "google/cloud/securitycenter/v1/kernel_rootkit.proto"],
    ["google.cloud.securitycenter.v1.OrgPolicy", "google/cloud/securitycenter/v1/org_policy.proto"],
    ["google.cloud.securitycenter.v1.Application", "google/cloud/securitycenter/v1/application.proto"],
    ["google.cloud.securitycenter.v1.BackupDisasterRecovery", "google/cloud/securitycenter/v1/backup_disaster_recovery.proto"],
    ["google.cloud.securitycenter.v1.SecurityPosture", "google/cloud/securitycenter/v1/security_posture.proto"],
    ["google.cloud.securitycenter.v1.LogEntry", "google/cloud/securitycenter/v1/log_entry.proto"],
    ["google.cloud.securitycenter.v1.LoadBalancer", "google/cloud/securitycenter/v1/load_balancer.proto"],
    ["google.cloud.securitycenter.v1.CloudArmor", "google/cloud/securitycenter/v1/cloud_armor.proto"],
    ["google.cloud.securitycenter.v1.Notebook", "google/cloud/securitycenter/v1/notebook.proto"],
    ["google.cloud.securitycenter.v1.ToxicCombination", "google/cloud/securitycenter/v1/toxic_combination.proto"],
    ["google.cloud.securitycenter.v1.GroupMembership", "google/cloud/securitycenter/v1/group_membership.proto"],
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.securitycenter.v1.ExternalSystem", "google/cloud/securitycenter/v1/external_system.proto"],
    ["google.cloud.securitycenter.v1.ContactDetails", "google/cloud/securitycenter/v1/contact_details.proto"],
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
    module SecurityCenter
      module V1
        Finding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding").msgclass
        Finding::MuteInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.MuteInfo").msgclass
        Finding::MuteInfo::StaticMute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.MuteInfo.StaticMute").msgclass
        Finding::MuteInfo::DynamicMuteRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.MuteInfo.DynamicMuteRecord").msgclass
        Finding::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.State").enummodule
        Finding::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.Severity").enummodule
        Finding::Mute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.Mute").enummodule
        Finding::FindingClass = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.FindingClass").enummodule
      end
    end
  end
end
