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

defmodule GoogleApi.IAMCredentials.V1.Model.SignBlobRequest do
  @moduledoc """


  ## Attributes

  - delegates ([String.t]): The sequence of service accounts in a delegation chain. Each service account must be granted the &#x60;roles/iam.serviceAccountTokenCreator&#x60; role on its next service account in the chain. The last service account in the chain must be granted the &#x60;roles/iam.serviceAccountTokenCreator&#x60; role on the service account that is specified in the &#x60;name&#x60; field of the request.  The delegates must have the following format: &#x60;projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}&#x60; Defaults to: `null`.
  - payload (binary()): The bytes to sign. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :delegates => list(any()),
          :payload => any()
        }

  field(:delegates, type: :list)
  field(:payload)
end

defimpl Poison.Decoder, for: GoogleApi.IAMCredentials.V1.Model.SignBlobRequest do
  def decode(value, options) do
    GoogleApi.IAMCredentials.V1.Model.SignBlobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAMCredentials.V1.Model.SignBlobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end