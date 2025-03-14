# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/gsuiteaddons/v1/gsuiteaddons.proto for package 'Google.Cloud.GSuiteAddOns.V1'
# Original file comments:
# Copyright 2020 Google LLC
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
require 'google/cloud/gsuiteaddons/v1/gsuiteaddons_pb'

module Google
  module Cloud
    module GSuiteAddOns
      module V1
        module GSuiteAddOns
          # A service for managing Google Workspace add-ons deployments.
          #
          # A Google Workspace add-on is a third-party embedded component that can be
          # installed in Google Workspace Applications like Gmail, Calendar, Drive, and
          # the Google Docs, Sheets, and Slides editors. Google Workspace add-ons can
          # display UI cards, receive contextual information from the host application,
          # and perform actions in the host application (See:
          # https://developers.google.com/gsuite/add-ons/overview for more information).
          #
          # A Google Workspace add-on deployment resource specifies metadata about the
          # add-on, including a specification of the entry points in the host application
          # that trigger add-on executions (see:
          # https://developers.google.com/gsuite/add-ons/concepts/gsuite-manifests).
          # Add-on deployments defined via the Google Workspace add-ons API define their
          # entrypoints using HTTPS URLs (See:
          # https://developers.google.com/gsuite/add-ons/guides/alternate-runtimes),
          #
          # A Google Workspace add-on deployment can be installed in developer mode,
          # which allows an add-on developer to test the experience an end-user would see
          # when installing and running the add-on in their G Suite applications.  When
          # running in developer mode, more detailed error messages are exposed in the
          # add-on UI to aid in debugging.
          #
          # A Google Workspace add-on deployment can be published to Google Workspace
          # Marketplace, which allows other Google Workspace users to discover and
          # install the add-on.  See:
          # https://developers.google.com/gsuite/add-ons/how-tos/publish-add-on-overview
          # for details.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.gsuiteaddons.v1.GSuiteAddOns'

            # Gets the authorization information for deployments in a given project.
            rpc :GetAuthorization, ::Google::Cloud::GSuiteAddOns::V1::GetAuthorizationRequest, ::Google::Cloud::GSuiteAddOns::V1::Authorization
            # Creates a deployment with the specified name and configuration.
            rpc :CreateDeployment, ::Google::Cloud::GSuiteAddOns::V1::CreateDeploymentRequest, ::Google::Cloud::GSuiteAddOns::V1::Deployment
            # Creates or replaces a deployment with the specified name.
            rpc :ReplaceDeployment, ::Google::Cloud::GSuiteAddOns::V1::ReplaceDeploymentRequest, ::Google::Cloud::GSuiteAddOns::V1::Deployment
            # Gets the deployment with the specified name.
            rpc :GetDeployment, ::Google::Cloud::GSuiteAddOns::V1::GetDeploymentRequest, ::Google::Cloud::GSuiteAddOns::V1::Deployment
            # Lists all deployments in a particular project.
            rpc :ListDeployments, ::Google::Cloud::GSuiteAddOns::V1::ListDeploymentsRequest, ::Google::Cloud::GSuiteAddOns::V1::ListDeploymentsResponse
            # Deletes the deployment with the given name.
            rpc :DeleteDeployment, ::Google::Cloud::GSuiteAddOns::V1::DeleteDeploymentRequest, ::Google::Protobuf::Empty
            # Installs a deployment in developer mode.
            # See:
            # https://developers.google.com/gsuite/add-ons/how-tos/testing-gsuite-addons.
            rpc :InstallDeployment, ::Google::Cloud::GSuiteAddOns::V1::InstallDeploymentRequest, ::Google::Protobuf::Empty
            # Uninstalls a developer mode deployment.
            # See:
            # https://developers.google.com/gsuite/add-ons/how-tos/testing-gsuite-addons.
            rpc :UninstallDeployment, ::Google::Cloud::GSuiteAddOns::V1::UninstallDeploymentRequest, ::Google::Protobuf::Empty
            # Fetches the install status of a developer mode deployment.
            rpc :GetInstallStatus, ::Google::Cloud::GSuiteAddOns::V1::GetInstallStatusRequest, ::Google::Cloud::GSuiteAddOns::V1::InstallStatus
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
