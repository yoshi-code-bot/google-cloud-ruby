# frozen_string_literal: true

# Copyright 2020 Google LLC
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
  module Api
    # `Backend` defines the backend configuration for a service.
    # @!attribute [rw] rules
    #   @return [::Array<::Google::Api::BackendRule>]
    #     A list of API backend rules that apply to individual API methods.
    #
    #     **NOTE:** All service configuration rules follow "last one wins" order.
    class Backend
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # A backend rule provides configuration for an individual API element.
    # @!attribute [rw] selector
    #   @return [::String]
    #     Selects the methods to which this rule applies.
    #
    #     Refer to {::Google::Api::DocumentationRule#selector selector} for syntax
    #     details.
    # @!attribute [rw] address
    #   @return [::String]
    #     The address of the API backend.
    #
    #     The scheme is used to determine the backend protocol and security.
    #     The following schemes are accepted:
    #
    #        SCHEME        PROTOCOL    SECURITY
    #        http://       HTTP        None
    #        https://      HTTP        TLS
    #        grpc://       gRPC        None
    #        grpcs://      gRPC        TLS
    #
    #     It is recommended to explicitly include a scheme. Leaving out the scheme
    #     may cause constrasting behaviors across platforms.
    #
    #     If the port is unspecified, the default is:
    #     - 80 for schemes without TLS
    #     - 443 for schemes with TLS
    #
    #     For HTTP backends, use {::Google::Api::BackendRule#protocol protocol}
    #     to specify the protocol version.
    # @!attribute [rw] deadline
    #   @return [::Float]
    #     The number of seconds to wait for a response from a request. The default
    #     varies based on the request protocol and deployment environment.
    # @!attribute [rw] min_deadline
    #   @deprecated This field is deprecated and may be removed in the next major version update.
    #   @return [::Float]
    #     Deprecated, do not use.
    # @!attribute [rw] operation_deadline
    #   @return [::Float]
    #     The number of seconds to wait for the completion of a long running
    #     operation. The default is no deadline.
    # @!attribute [rw] path_translation
    #   @return [::Google::Api::BackendRule::PathTranslation]
    # @!attribute [rw] jwt_audience
    #   @return [::String]
    #     The JWT audience is used when generating a JWT ID token for the backend.
    #     This ID token will be added in the HTTP "authorization" header, and sent
    #     to the backend.
    #
    #     Note: The following fields are mutually exclusive: `jwt_audience`, `disable_auth`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] disable_auth
    #   @return [::Boolean]
    #     When disable_auth is true, a JWT ID token won't be generated and the
    #     original "Authorization" HTTP header will be preserved. If the header is
    #     used to carry the original token and is expected by the backend, this
    #     field must be set to true to preserve the header.
    #
    #     Note: The following fields are mutually exclusive: `disable_auth`, `jwt_audience`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] protocol
    #   @return [::String]
    #     The protocol used for sending a request to the backend.
    #     The supported values are "http/1.1" and "h2".
    #
    #     The default value is inferred from the scheme in the
    #     {::Google::Api::BackendRule#address address} field:
    #
    #        SCHEME        PROTOCOL
    #        http://       http/1.1
    #        https://      http/1.1
    #        grpc://       h2
    #        grpcs://      h2
    #
    #     For secure HTTP backends (https://) that support HTTP/2, set this field
    #     to "h2" for improved performance.
    #
    #     Configuring this field to non-default values is only supported for secure
    #     HTTP backends. This field will be ignored for all other backends.
    #
    #     See
    #     https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids
    #     for more details on the supported values.
    # @!attribute [rw] overrides_by_request_protocol
    #   @return [::Google::Protobuf::Map{::String => ::Google::Api::BackendRule}]
    #     The map between request protocol and the backend address.
    class BackendRule
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # @!attribute [rw] key
      #   @return [::String]
      # @!attribute [rw] value
      #   @return [::Google::Api::BackendRule]
      class OverridesByRequestProtocolEntry
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Path Translation specifies how to combine the backend address with the
      # request path in order to produce the appropriate forwarding URL for the
      # request.
      #
      # Path Translation is applicable only to HTTP-based backends. Backends which
      # do not accept requests over HTTP/HTTPS should leave `path_translation`
      # unspecified.
      module PathTranslation
        PATH_TRANSLATION_UNSPECIFIED = 0

        # Use the backend address as-is, with no modification to the path. If the
        # URL pattern contains variables, the variable names and values will be
        # appended to the query string. If a query string parameter and a URL
        # pattern variable have the same name, this may result in duplicate keys in
        # the query string.
        #
        # # Examples
        #
        # Given the following operation config:
        #
        #     Method path:        /api/company/{cid}/user/{uid}
        #     Backend address:    https://example.cloudfunctions.net/getUser
        #
        # Requests to the following request paths will call the backend at the
        # translated path:
        #
        #     Request path: /api/company/widgetworks/user/johndoe
        #     Translated:
        #     https://example.cloudfunctions.net/getUser?cid=widgetworks&uid=johndoe
        #
        #     Request path: /api/company/widgetworks/user/johndoe?timezone=EST
        #     Translated:
        #     https://example.cloudfunctions.net/getUser?timezone=EST&cid=widgetworks&uid=johndoe
        CONSTANT_ADDRESS = 1

        # The request path will be appended to the backend address.
        #
        # # Examples
        #
        # Given the following operation config:
        #
        #     Method path:        /api/company/{cid}/user/{uid}
        #     Backend address:    https://example.appspot.com
        #
        # Requests to the following request paths will call the backend at the
        # translated path:
        #
        #     Request path: /api/company/widgetworks/user/johndoe
        #     Translated:
        #     https://example.appspot.com/api/company/widgetworks/user/johndoe
        #
        #     Request path: /api/company/widgetworks/user/johndoe?timezone=EST
        #     Translated:
        #     https://example.appspot.com/api/company/widgetworks/user/johndoe?timezone=EST
        APPEND_PATH_TO_ADDRESS = 2
      end
    end
  end
end
