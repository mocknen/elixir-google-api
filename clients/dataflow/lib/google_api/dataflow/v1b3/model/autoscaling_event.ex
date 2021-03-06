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

defmodule GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent do
  @moduledoc """
  A structured message reporting an autoscaling decision made by the Dataflow service.

  ## Attributes

  - currentNumWorkers (String.t): The current number of workers the job has. Defaults to: `null`.
  - description (StructuredMessage): A message describing why the system decided to adjust the current number of workers, why it failed, or why the system decided to not make any changes to the number of workers. Defaults to: `null`.
  - eventType (String.t): The type of autoscaling event to report. Defaults to: `null`.
    - Enum - one of [TYPE_UNKNOWN, TARGET_NUM_WORKERS_CHANGED, CURRENT_NUM_WORKERS_CHANGED, ACTUATION_FAILURE, NO_CHANGE]
  - targetNumWorkers (String.t): The target number of workers the worker pool wants to resize to use. Defaults to: `null`.
  - time (DateTime.t): The time this event was emitted to indicate a new target or current num_workers value. Defaults to: `null`.
  - workerPool (String.t): A short and friendly name for the worker pool this event refers to, populated from the value of PoolStageRelation::user_pool_name. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentNumWorkers => any(),
          :description => GoogleApi.Dataflow.V1b3.Model.StructuredMessage.t(),
          :eventType => any(),
          :targetNumWorkers => any(),
          :time => DateTime.t(),
          :workerPool => any()
        }

  field(:currentNumWorkers)
  field(:description, as: GoogleApi.Dataflow.V1b3.Model.StructuredMessage)
  field(:eventType)
  field(:targetNumWorkers)
  field(:time, as: DateTime)
  field(:workerPool)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
