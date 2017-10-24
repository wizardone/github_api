defmodule GithubApi do
  @moduledoc """
  A package that enables you to retrieve information from Github,
  using their  public API.
  """

  @doc """
  Hello world.

  ## Examples

      iex> GithubApi.hello
      :world

  """
  def hello do
    :world
  end

  def fetch_user(user) do
    HTTPotion.get(
      Application.get_env(:github_api, :base_url) <>
        "/users/" <>
          user,
          headers: ["User-Agent": Application.get_env(:github_api, :user_agent)]
    )
  end
end
