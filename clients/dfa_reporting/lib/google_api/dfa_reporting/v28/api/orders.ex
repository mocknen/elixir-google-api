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

defmodule GoogleApi.DFAReporting.V28.Api.Orders do
  @moduledoc """
  API calls for all endpoints tagged `Orders`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one order by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - project_id (String.t): Project ID for orders.
  - id (String.t): Order ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Order{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_orders_get(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.Order.t()} | {:error, Tesla.Env.t()}
  def dfareporting_orders_get(
        connection,
        profile_id,
        project_id,
        id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/dfareporting/v2.8/userprofiles/{profileId}/projects/{projectId}/orders/{id}",
        %{
          "profileId" => URI.encode_www_form(profile_id),
          "projectId" => URI.encode_www_form(project_id),
          "id" => URI.encode_www_form(id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.Order{}])
  end

  @doc """
  Retrieves a list of orders, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - project_id (String.t): Project ID for orders.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :ids ([String.t]): Select only orders with these IDs.
    - :maxResults (integer()): Maximum number of results to return.
    - :pageToken (String.t): Value of the nextPageToken from the previous result page.
    - :searchString (String.t): Allows searching for orders by name or ID. Wildcards (*) are allowed. For example, \&quot;order*2015\&quot; will return orders with names like \&quot;order June 2015\&quot;, \&quot;order April 2015\&quot;, or simply \&quot;order 2015\&quot;. Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \&quot;order\&quot; will match orders with name \&quot;my order\&quot;, \&quot;order 2015\&quot;, or simply \&quot;order\&quot;.
    - :siteId ([String.t]): Select only orders that are associated with these site IDs.
    - :sortField (String.t): Field by which to sort the list.
    - :sortOrder (String.t): Order of sorted results.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.OrdersListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_orders_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.OrdersListResponse.t()} | {:error, Tesla.Env.t()}
  def dfareporting_orders_list(
        connection,
        profile_id,
        project_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :ids => :query,
      :maxResults => :query,
      :pageToken => :query,
      :searchString => :query,
      :siteId => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/projects/{projectId}/orders", %{
        "profileId" => URI.encode_www_form(profile_id),
        "projectId" => URI.encode_www_form(project_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.OrdersListResponse{}])
  end
end
