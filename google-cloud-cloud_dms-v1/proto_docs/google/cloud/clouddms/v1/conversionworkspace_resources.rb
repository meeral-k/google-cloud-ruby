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
    module CloudDMS
      module V1
        # The type and version of a source or destination database.
        # @!attribute [rw] engine
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEngine]
        #     Required. Engine type.
        # @!attribute [rw] version
        #   @return [::String]
        #     Required. Engine named version, for example 12.c.1.
        class DatabaseEngineInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The main conversion workspace resource entity.
        # @!attribute [rw] name
        #   @return [::String]
        #     Full name of the workspace resource, in the form of:
        #     projects/\\{project}/locations/\\{location}/conversionWorkspaces/\\{conversion_workspace}.
        # @!attribute [rw] source
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEngineInfo]
        #     Required. The source engine details.
        # @!attribute [rw] destination
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEngineInfo]
        #     Required. The destination engine details.
        # @!attribute [rw] global_settings
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A generic list of settings for the workspace.
        #     The settings are database pair dependant and can indicate default behavior
        #     for the mapping rules engine or turn on or off specific features.
        #     Such examples can be: convert_foreign_key_to_interleave=true,
        #     skip_triggers=false, ignore_non_table_synonyms=true
        # @!attribute [r] has_uncommitted_changes
        #   @return [::Boolean]
        #     Output only. Whether the workspace has uncommitted changes (changes which
        #     were made after the workspace was committed).
        # @!attribute [r] latest_commit_id
        #   @return [::String]
        #     Output only. The latest commit ID.
        # @!attribute [r] latest_commit_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the workspace was committed.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the workspace resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the workspace resource was last updated.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name for the workspace.
        class ConversionWorkspace
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class GlobalSettingsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Execution log of a background job.
        # @!attribute [rw] id
        #   @return [::String]
        #     The background job log entry ID.
        # @!attribute [rw] job_type
        #   @return [::Google::Cloud::CloudDMS::V1::BackgroundJobType]
        #     The type of job that was executed.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp when the background job was started.
        # @!attribute [rw] finish_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp when the background job was finished.
        # @!attribute [rw] completion_state
        #   @return [::Google::Cloud::CloudDMS::V1::BackgroundJobLogEntry::JobCompletionState]
        #     Job completion state, i.e. the final state after the job completed.
        # @!attribute [rw] completion_comment
        #   @return [::String]
        #     Job completion comment, such as how many entities were seeded,
        #     how many warnings were found during conversion, and similar information.
        # @!attribute [rw] request_autocommit
        #   @return [::Boolean]
        #     Whether the client requested the conversion workspace to be committed after
        #     a successful completion of the job.
        # @!attribute [rw] seed_job_details
        #   @return [::Google::Cloud::CloudDMS::V1::BackgroundJobLogEntry::SeedJobDetails]
        #     Seed job details.
        # @!attribute [rw] import_rules_job_details
        #   @return [::Google::Cloud::CloudDMS::V1::BackgroundJobLogEntry::ImportRulesJobDetails]
        #     Import rules job details.
        # @!attribute [rw] convert_job_details
        #   @return [::Google::Cloud::CloudDMS::V1::BackgroundJobLogEntry::ConvertJobDetails]
        #     Convert job details.
        # @!attribute [rw] apply_job_details
        #   @return [::Google::Cloud::CloudDMS::V1::BackgroundJobLogEntry::ApplyJobDetails]
        #     Apply job details.
        class BackgroundJobLogEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Details regarding a Seed background job.
          # @!attribute [rw] connection_profile
          #   @return [::String]
          #     The connection profile which was used for the seed job.
          class SeedJobDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Details regarding an Import Rules background job.
          # @!attribute [rw] files
          #   @return [::Array<::String>]
          #     File names used for the import rules job.
          # @!attribute [rw] file_format
          #   @return [::Google::Cloud::CloudDMS::V1::ImportRulesFileFormat]
          #     The requested file format.
          class ImportRulesJobDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Details regarding a Convert background job.
          # @!attribute [rw] filter
          #   @return [::String]
          #     AIP-160 based filter used to specify the entities to convert
          class ConvertJobDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Details regarding an Apply background job.
          # @!attribute [rw] connection_profile
          #   @return [::String]
          #     The connection profile which was used for the apply job.
          # @!attribute [rw] filter
          #   @return [::String]
          #     AIP-160 based filter used to specify the entities to apply
          class ApplyJobDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Final state after a job completes.
          module JobCompletionState
            # The status is not specified. This state is used when job is not yet
            # finished.
            JOB_COMPLETION_STATE_UNSPECIFIED = 0

            # Success.
            SUCCEEDED = 1

            # Error.
            FAILED = 2
          end
        end

        # The base entity type for all the database related entities.
        # The message contains the entity name, the name of its parent, the entity
        # type, and the specific details per entity type.
        # @!attribute [rw] short_name
        #   @return [::String]
        #     The short name (e.g. table name) of the entity.
        # @!attribute [rw] parent_entity
        #   @return [::String]
        #     The full name of the parent entity (e.g. schema name).
        # @!attribute [rw] tree
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEntity::TreeType]
        #     The type of tree the entity belongs to.
        # @!attribute [rw] entity_type
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEntityType]
        #     The type of the database entity (table, view, index, ...).
        # @!attribute [rw] mappings
        #   @return [::Array<::Google::Cloud::CloudDMS::V1::EntityMapping>]
        #     Details about entity mappings.
        #     For source tree entities, this holds the draft entities which were
        #     generated by the mapping rules.
        #     For draft tree entities, this holds the source entities which were
        #     converted to form the draft entity.
        #     Destination entities will have no mapping details.
        # @!attribute [rw] schema
        #   @return [::Google::Cloud::CloudDMS::V1::SchemaEntity]
        #     Schema.
        # @!attribute [rw] table
        #   @return [::Google::Cloud::CloudDMS::V1::TableEntity]
        #     Table.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::CloudDMS::V1::ViewEntity]
        #     View.
        # @!attribute [rw] sequence
        #   @return [::Google::Cloud::CloudDMS::V1::SequenceEntity]
        #     Sequence.
        # @!attribute [rw] stored_procedure
        #   @return [::Google::Cloud::CloudDMS::V1::StoredProcedureEntity]
        #     Stored procedure.
        # @!attribute [rw] database_function
        #   @return [::Google::Cloud::CloudDMS::V1::FunctionEntity]
        #     Function.
        # @!attribute [rw] synonym
        #   @return [::Google::Cloud::CloudDMS::V1::SynonymEntity]
        #     Synonym.
        # @!attribute [rw] database_package
        #   @return [::Google::Cloud::CloudDMS::V1::PackageEntity]
        #     Package.
        class DatabaseEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of database entities tree.
          module TreeType
            # Tree type unspecified.
            TREE_TYPE_UNSPECIFIED = 0

            # Tree of entities loaded from a source database.
            SOURCE = 1

            # Tree of entities converted from the source tree using the mapping rules.
            DRAFT = 2

            # Tree of entities observed on the destination database.
            DESTINATION = 3
          end
        end

        # Schema typically has no parent entity, but can have a parent entity
        # DatabaseInstance (for database engines which support it).  For some database
        # engines, the terms  schema and user can be used interchangeably when they
        # refer to a namespace or a collection of other database entities. Can store
        # additional information which is schema specific.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class SchemaEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Table's parent is a schema.
        # @!attribute [rw] columns
        #   @return [::Array<::Google::Cloud::CloudDMS::V1::ColumnEntity>]
        #     Table columns.
        # @!attribute [rw] constraints
        #   @return [::Array<::Google::Cloud::CloudDMS::V1::ConstraintEntity>]
        #     Table constraints.
        # @!attribute [rw] indices
        #   @return [::Array<::Google::Cloud::CloudDMS::V1::IndexEntity>]
        #     Table indices.
        # @!attribute [rw] triggers
        #   @return [::Array<::Google::Cloud::CloudDMS::V1::TriggerEntity>]
        #     Table triggers.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        # @!attribute [rw] comment
        #   @return [::String]
        #     Comment associated with the table.
        class TableEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Column is not used as an independent entity, it is retrieved as part of a
        # Table entity.
        # @!attribute [rw] name
        #   @return [::String]
        #     Column name.
        # @!attribute [rw] data_type
        #   @return [::String]
        #     Column data type.
        # @!attribute [rw] charset
        #   @return [::String]
        #     Charset override - instead of table level charset.
        # @!attribute [rw] collation
        #   @return [::String]
        #     Collation override - instead of table level collation.
        # @!attribute [rw] length
        #   @return [::Integer]
        #     Column length - e.g. varchar (50).
        # @!attribute [rw] precision
        #   @return [::Integer]
        #     Column precision - when relevant.
        # @!attribute [rw] scale
        #   @return [::Integer]
        #     Column scale - when relevant.
        # @!attribute [rw] fractional_seconds_precision
        #   @return [::Integer]
        #     Column fractional second precision - used for timestamp based datatypes.
        # @!attribute [rw] array
        #   @return [::Boolean]
        #     Is the column of array type.
        # @!attribute [rw] array_length
        #   @return [::Integer]
        #     If the column is array, of which length.
        # @!attribute [rw] nullable
        #   @return [::Boolean]
        #     Is the column nullable.
        # @!attribute [rw] auto_generated
        #   @return [::Boolean]
        #     Is the column auto-generated/identity.
        # @!attribute [rw] udt
        #   @return [::Boolean]
        #     Is the column a UDT.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        # @!attribute [rw] set_values
        #   @return [::Array<::String>]
        #     Specifies the list of values allowed in the column.
        #     Only used for set data type.
        # @!attribute [rw] comment
        #   @return [::String]
        #     Comment associated with the column.
        # @!attribute [rw] ordinal_position
        #   @return [::Integer]
        #     Column order in the table.
        # @!attribute [rw] default_value
        #   @return [::String]
        #     Default value of the column.
        class ColumnEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Constraint is not used as an independent entity, it is retrieved
        # as part of another entity such as Table or View.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the table constraint.
        # @!attribute [rw] type
        #   @return [::String]
        #     Type of constraint, for example unique, primary key, foreign key (currently
        #     only primary key is supported).
        # @!attribute [rw] table_columns
        #   @return [::Array<::String>]
        #     Table columns used as part of the Constraint, for example primary key
        #     constraint should list the columns which constitutes the key.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        # @!attribute [rw] reference_columns
        #   @return [::Array<::String>]
        #     Reference columns which may be associated with the constraint. For example,
        #     if the constraint is a FOREIGN_KEY, this represents the list of full names
        #     of referenced columns by the foreign key.
        # @!attribute [rw] reference_table
        #   @return [::String]
        #     Reference table which may be associated with the constraint. For example,
        #     if the constraint is a FOREIGN_KEY, this represents the list of full name
        #     of the referenced table by the foreign key.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Table which is associated with the constraint. In case the constraint
        #     is defined on a table, this field is left empty as this information is
        #     stored in parent_name. However, if constraint is defined on a view, this
        #     field stores the table name on which the view is defined.
        class ConstraintEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Index is not used as an independent entity, it is retrieved as part of a
        # Table entity.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the index.
        # @!attribute [rw] type
        #   @return [::String]
        #     Type of index, for example B-TREE.
        # @!attribute [rw] table_columns
        #   @return [::Array<::String>]
        #     Table columns used as part of the Index, for example B-TREE index should
        #     list the columns which constitutes the index.
        # @!attribute [rw] unique
        #   @return [::Boolean]
        #     Boolean value indicating whether the index is unique.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class IndexEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Trigger is not used as an independent entity, it is retrieved as part of a
        # Table entity.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the trigger.
        # @!attribute [rw] triggering_events
        #   @return [::Array<::String>]
        #     The DML, DDL, or database events that fire the trigger, for example
        #     INSERT, UPDATE.
        # @!attribute [rw] trigger_type
        #   @return [::String]
        #     Indicates when the trigger fires, for example BEFORE STATEMENT, AFTER EACH
        #     ROW.
        # @!attribute [rw] sql_code
        #   @return [::String]
        #     The SQL code which creates the trigger.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class TriggerEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # View's parent is a schema.
        # @!attribute [rw] sql_code
        #   @return [::String]
        #     The SQL code which creates the view.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        # @!attribute [rw] constraints
        #   @return [::Array<::Google::Cloud::CloudDMS::V1::ConstraintEntity>]
        #     View constraints.
        class ViewEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Sequence's parent is a schema.
        # @!attribute [rw] increment
        #   @return [::Integer]
        #     Increment value for the sequence.
        # @!attribute [rw] start_value
        #   @return [::String]
        #     Start number for the sequence represented as bytes to accommodate large.
        #     numbers
        # @!attribute [rw] max_value
        #   @return [::String]
        #     Maximum number for the sequence represented as bytes to accommodate large.
        #     numbers
        # @!attribute [rw] min_value
        #   @return [::String]
        #     Minimum number for the sequence represented as bytes to accommodate large.
        #     numbers
        # @!attribute [rw] cycle
        #   @return [::Boolean]
        #     Indicates whether the sequence value should cycle through.
        # @!attribute [rw] cache
        #   @return [::Integer]
        #     Indicates number of entries to cache / precreate.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class SequenceEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Stored procedure's parent is a schema.
        # @!attribute [rw] sql_code
        #   @return [::String]
        #     The SQL code which creates the stored procedure.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class StoredProcedureEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Function's parent is a schema.
        # @!attribute [rw] sql_code
        #   @return [::String]
        #     The SQL code which creates the function.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class FunctionEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Synonym's parent is a schema.
        # @!attribute [rw] source_entity
        #   @return [::String]
        #     The name of the entity for which the synonym is being created (the source).
        # @!attribute [rw] source_type
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEntityType]
        #     The type of the entity for which the synonym is being created
        #     (usually a table or a sequence).
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class SynonymEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Package's parent is a schema.
        # @!attribute [rw] package_sql_code
        #   @return [::String]
        #     The SQL code which creates the package.
        # @!attribute [rw] package_body
        #   @return [::String]
        #     The SQL code which creates the package body. If the package specification
        #     has cursors or subprograms, then the package body is mandatory.
        # @!attribute [rw] custom_features
        #   @return [::Google::Protobuf::Struct]
        #     Custom engine specific features.
        class PackageEntity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of the mappings of a database entity.
        # @!attribute [rw] source_entity
        #   @return [::String]
        #     Source entity full name.
        #     The source entity can also be a column, index or constraint using the
        #     same naming notation schema.table.column.
        # @!attribute [rw] draft_entity
        #   @return [::String]
        #     Target entity full name.
        #     The draft entity can also include a column, index or constraint using the
        #     same naming notation schema.table.column.
        # @!attribute [rw] source_type
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEntityType]
        #     Type of source entity.
        # @!attribute [rw] draft_type
        #   @return [::Google::Cloud::CloudDMS::V1::DatabaseEntityType]
        #     Type of draft entity.
        # @!attribute [rw] mapping_log
        #   @return [::Array<::Google::Cloud::CloudDMS::V1::EntityMappingLogEntry>]
        #     Entity mapping log entries.
        #     Multiple rules can be effective and contribute changes to a converted
        #     entity, such as a rule can handle the entity name, another rule can handle
        #     an entity type. In addition, rules which did not change the entity are also
        #     logged along with the reason preventing them to do so.
        class EntityMapping
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A single record of a rule which was used for a mapping.
        # @!attribute [rw] rule_id
        #   @return [::String]
        #     Which rule caused this log entry.
        # @!attribute [rw] rule_revision_id
        #   @return [::String]
        #     Rule revision ID.
        # @!attribute [rw] mapping_comment
        #   @return [::String]
        #     Comment.
        class EntityMappingLogEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The type of database entities supported,
        module DatabaseEntityType
          # Unspecified database entity type.
          DATABASE_ENTITY_TYPE_UNSPECIFIED = 0

          # Schema.
          DATABASE_ENTITY_TYPE_SCHEMA = 1

          # Table.
          DATABASE_ENTITY_TYPE_TABLE = 2

          # Column.
          DATABASE_ENTITY_TYPE_COLUMN = 3

          # Constraint.
          DATABASE_ENTITY_TYPE_CONSTRAINT = 4

          # Index.
          DATABASE_ENTITY_TYPE_INDEX = 5

          # Trigger.
          DATABASE_ENTITY_TYPE_TRIGGER = 6

          # View.
          DATABASE_ENTITY_TYPE_VIEW = 7

          # Sequence.
          DATABASE_ENTITY_TYPE_SEQUENCE = 8

          # Stored Procedure.
          DATABASE_ENTITY_TYPE_STORED_PROCEDURE = 9

          # Function.
          DATABASE_ENTITY_TYPE_FUNCTION = 10

          # Synonym.
          DATABASE_ENTITY_TYPE_SYNONYM = 11

          # Package.
          DATABASE_ENTITY_TYPE_DATABASE_PACKAGE = 12

          # UDT.
          DATABASE_ENTITY_TYPE_UDT = 13

          # Materialized View.
          DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW = 14

          # Database.
          DATABASE_ENTITY_TYPE_DATABASE = 15
        end

        # The types of jobs that can be executed in the background.
        module BackgroundJobType
          # Unspecified background job type.
          BACKGROUND_JOB_TYPE_UNSPECIFIED = 0

          # Job to seed from the source database.
          BACKGROUND_JOB_TYPE_SOURCE_SEED = 1

          # Job to convert the source database into a draft of the destination
          # database.
          BACKGROUND_JOB_TYPE_CONVERT = 2

          # Job to apply the draft tree onto the destination.
          BACKGROUND_JOB_TYPE_APPLY_DESTINATION = 3

          # Job to import and convert mapping rules from an external source such as an
          # ora2pg config file.
          BACKGROUND_JOB_TYPE_IMPORT_RULES_FILE = 5
        end

        # The format for the import rules file.
        module ImportRulesFileFormat
          # Unspecified rules format.
          IMPORT_RULES_FILE_FORMAT_UNSPECIFIED = 0

          # HarbourBridge session file.
          IMPORT_RULES_FILE_FORMAT_HARBOUR_BRIDGE_SESSION_FILE = 1

          # Ora2Pg configuration file.
          IMPORT_RULES_FILE_FORMAT_ORATOPG_CONFIG_FILE = 2
        end
      end
    end
  end
end