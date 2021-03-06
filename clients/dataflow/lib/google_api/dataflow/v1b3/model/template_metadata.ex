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

defmodule GoogleApi.Dataflow.V1b3.Model.TemplateMetadata do
  @moduledoc """
  Metadata describing a template.

  ## Attributes

  - parameters ([ParameterMetadata]): The parameters for the template. Defaults to: `null`.
  - description (String.t): Optional. A description of the template. Defaults to: `null`.
  - name (String.t): Required. The name of the template. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => list(GoogleApi.Dataflow.V1b3.Model.ParameterMetadata.t()),
          :description => any(),
          :name => any()
        }

  field(:parameters, as: GoogleApi.Dataflow.V1b3.Model.ParameterMetadata, type: :list)
  field(:description)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.TemplateMetadata do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.TemplateMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.TemplateMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
