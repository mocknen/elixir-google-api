# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Chat.V1.Model.Button do
  @moduledoc """
  A button. Can be a text button or an image button.

  ## Attributes

  - imageButton (ImageButton): A button with image and onclick action. Defaults to: `null`.
  - textButton (TextButton): A button with text and onclick action. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageButton => GoogleApi.Chat.V1.Model.ImageButton.t(),
          :textButton => GoogleApi.Chat.V1.Model.TextButton.t()
        }

  field(:imageButton, as: GoogleApi.Chat.V1.Model.ImageButton)
  field(:textButton, as: GoogleApi.Chat.V1.Model.TextButton)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Button do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Button.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Button do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end