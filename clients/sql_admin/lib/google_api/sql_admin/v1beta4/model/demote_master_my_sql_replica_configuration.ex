# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterMySqlReplicaConfiguration do
  @moduledoc """
  Read-replica configuration specific to MySQL databases.

  ## Attributes

  - caCertificate (String.t): PEM representation of the trusted CA&#39;s x509 certificate. Defaults to: `null`.
  - clientCertificate (String.t): PEM representation of the slave&#39;s x509 certificate. Defaults to: `null`.
  - clientKey (String.t): PEM representation of the slave&#39;s private key. The corresponsing public key is encoded in the client&#39;s certificate. The format of the slave&#39;s private key can be either PKCS #1 or PKCS #8. Defaults to: `null`.
  - kind (String.t): This is always sql#demoteMasterMysqlReplicaConfiguration. Defaults to: `null`.
  - password (String.t): The password for the replication connection. Defaults to: `null`.
  - username (String.t): The username for the replication connection. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caCertificate => any(),
          :clientCertificate => any(),
          :clientKey => any(),
          :kind => any(),
          :password => any(),
          :username => any()
        }

  field(:caCertificate)
  field(:clientCertificate)
  field(:clientKey)
  field(:kind)
  field(:password)
  field(:username)
end

defimpl Poison.Decoder,
  for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterMySqlReplicaConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterMySqlReplicaConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterMySqlReplicaConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
