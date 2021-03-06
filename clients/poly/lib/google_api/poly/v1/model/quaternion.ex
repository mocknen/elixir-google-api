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

defmodule GoogleApi.Poly.V1.Model.Quaternion do
  @moduledoc """
  A [Quaternion](//en.wikipedia.org/wiki/Quaternion). Please note: if in the response you see \&quot;w: 1\&quot; and nothing else this is the default value of [0, 0, 0, 1] where x,y, and z are 0.

  ## Attributes

  - w (float()): The scalar component. Defaults to: `null`.
  - x (float()): The x component. Defaults to: `null`.
  - y (float()): The y component. Defaults to: `null`.
  - z (float()): The z component. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :w => any(),
          :x => any(),
          :y => any(),
          :z => any()
        }

  field(:w)
  field(:x)
  field(:y)
  field(:z)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.Quaternion do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.Quaternion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.Quaternion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
