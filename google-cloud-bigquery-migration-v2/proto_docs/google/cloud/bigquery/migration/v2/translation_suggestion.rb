# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module Bigquery
      module Migration
        module V2
          # Details about a record.
          # @!attribute [rw] severity
          #   @return [::Google::Cloud::Bigquery::Migration::V2::TranslationReportRecord::Severity]
          #     Severity of the translation record.
          # @!attribute [rw] script_line
          #   @return [::Integer]
          #     Specifies the row from the source text where the error occurred (0 based).
          #     Example: 2
          # @!attribute [rw] script_column
          #   @return [::Integer]
          #     Specifies the column from the source texts where the error occurred. (0
          #     based) example: 6
          # @!attribute [rw] category
          #   @return [::String]
          #     Category of the error/warning. Example: SyntaxError
          # @!attribute [rw] message
          #   @return [::String]
          #     Detailed message of the record.
          class TranslationReportRecord
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The severity type of the record.
            module Severity
              # SeverityType not specified.
              SEVERITY_UNSPECIFIED = 0

              # INFO type.
              INFO = 1

              # WARNING type. The translated query may still provide useful information
              # if all the report records are WARNING.
              WARNING = 2

              # ERROR type. Translation failed.
              ERROR = 3
            end
          end
        end
      end
    end
  end
end
