# Copyright 2024 Google LLC
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

# [START videostitcher_create_vod_config]
require "google/cloud/video/stitcher"

##
# Create a VOD config. VOD configs are used to create VOD sessions.
#
# @param project_id [String] Your Google Cloud project (e.g. `my-project`)
# @param location [String] The location (e.g. `us-central1`)
# @param vod_config_id [String] Your VOD config name (e.g. `my-vod-config`)
# @param source_uri [String] Uri of the VOD stream to stitch
#   (e.g. `https://storage.googleapis.com/my-bucket/main.mpd`)
# @param ad_tag_uri [String] Uri of the ad tag
#   (e.g. `https://pubads.g.doubleclick.net/gampad/ads...`)
#
def create_vod_config project_id:, location:, vod_config_id:, source_uri:,
                      ad_tag_uri:
  # Create a Video Stitcher client.
  client = Google::Cloud::Video::Stitcher.video_stitcher_service

  # Build the resource name of the parent.
  parent = client.location_path project: project_id, location: location

  # Set the VOD config fields.
  new_vod_config = {
    source_uri: source_uri,
    ad_tag_uri: ad_tag_uri
  }

  operation = client.create_vod_config parent: parent,
                                       vod_config_id: vod_config_id,
                                       vod_config: new_vod_config

  # The returned object is of type Gapic::Operation. You can use this
  # object to check the status of an operation, cancel it, or wait
  # for results. Here is how to block until completion:
  operation.wait_until_done!

  # Print the VOD config name.
  puts "VOD config: #{operation.response.name}"
end
# [END videostitcher_create_vod_config]
