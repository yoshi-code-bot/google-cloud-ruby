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

# [START dataplex_v1_generated_CatalogService_ListMetadataJobs_sync]
require "google/cloud/dataplex/v1"

##
# Snippet for the list_metadata_jobs call in the CatalogService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dataplex::V1::CatalogService::Client#list_metadata_jobs.
#
def list_metadata_jobs
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dataplex::V1::CatalogService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dataplex::V1::ListMetadataJobsRequest.new

  # Call the list_metadata_jobs method.
  result = client.list_metadata_jobs request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Dataplex::V1::MetadataJob.
    p item
  end
end
# [END dataplex_v1_generated_CatalogService_ListMetadataJobs_sync]
