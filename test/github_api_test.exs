defmodule GithubApiTest do
  use ExUnit.Case
  doctest GithubApi

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "base url" do
    assert Application.get_env(:github_api, :base_url) == "https://api.github.com"
  end

  test "user agent header" do
    assert Application.get_env(:github_api, :user_agent) == "wizardone"
  end

  test "fetch users" do

  end

  test "fetch repositories" do
    
  end
end
