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
    HTTPoison.get!(
      Application.get_env(:github_api, :base_url) <>
        "/users/" <>
          user,
          user_agent_header()
    )
  end

  def fetch_repositories(user) do
    HTTPoison.get!(
      Application.get_env(:github_api, :base_url) <>
        "/users/" <>
        user <>
        "/repos",
        user_agent_header()
    )
  end

  defp user_agent_header do
    [{"User-Agent", Application.get_env(:github_api, :user_agent)}]
  end
end
