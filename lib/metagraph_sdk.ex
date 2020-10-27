defmodule MetagraphSDK do
  @moduledoc """
  Documentation for `MetagraphSDK`.
  """

  def new do
    %MetagraphSDK.Base{
      url: Application.get_env(:metagraph_sdk, :url, "https://api.metagraph.wiki/graphql"),
      token: Application.get_env(:metagraph_sdk, :token)
    }
  end

  def mutate(base \\ new(), %GraphqlBuilder.Query{} = query) do
    query
    |> GraphqlBuilder.mutation()
    |> Neuron.query(
      %{},
      url: base.url,
      headers: [authorization: "Bearer #{base.token}"]
    )
  end
end
