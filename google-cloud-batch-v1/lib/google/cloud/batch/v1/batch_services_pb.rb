# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/batch/v1/batch.proto for package 'Google.Cloud.Batch.V1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/batch/v1/batch_pb'

module Google
  module Cloud
    module Batch
      module V1
        module BatchService
          # Google Batch Service.
          # The service manages user submitted batch jobs and allocates Google Compute
          # Engine VM instances to run the jobs.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.batch.v1.BatchService'

            # Create a Job.
            rpc :CreateJob, ::Google::Cloud::Batch::V1::CreateJobRequest, ::Google::Cloud::Batch::V1::Job
            # Get a Job specified by its resource name.
            rpc :GetJob, ::Google::Cloud::Batch::V1::GetJobRequest, ::Google::Cloud::Batch::V1::Job
            # Delete a Job.
            rpc :DeleteJob, ::Google::Cloud::Batch::V1::DeleteJobRequest, ::Google::Longrunning::Operation
            # Cancel a Job.
            rpc :CancelJob, ::Google::Cloud::Batch::V1::CancelJobRequest, ::Google::Longrunning::Operation
            # List all Jobs for a project within a region.
            rpc :ListJobs, ::Google::Cloud::Batch::V1::ListJobsRequest, ::Google::Cloud::Batch::V1::ListJobsResponse
            # Return a single Task.
            rpc :GetTask, ::Google::Cloud::Batch::V1::GetTaskRequest, ::Google::Cloud::Batch::V1::Task
            # List Tasks associated with a job.
            rpc :ListTasks, ::Google::Cloud::Batch::V1::ListTasksRequest, ::Google::Cloud::Batch::V1::ListTasksResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
