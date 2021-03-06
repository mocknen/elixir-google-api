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

defmodule GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect do
  @moduledoc """
  The region of the page that is captured by this image, with dimensions measured in CSS pixels.

  ## Attributes

  - height (integer()): The height of the rect. Defaults to: `null`.
  - left (integer()): The left coordinate of the rect, in page coordinates. Defaults to: `null`.
  - top (integer()): The top coordinate of the rect, in page coordinates. Defaults to: `null`.
  - width (integer()): The width of the rect. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => any(),
          :left => any(),
          :top => any(),
          :width => any()
        }

  field(:height)
  field(:left)
  field(:top)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
