defmodule GithubApiTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  doctest GithubApi

  Code.require_file("test/github_api_test_mock.exs")

  setup_all do
    HTTPoison.start
    ExVCR.Config.cassette_library_dir("test/fixtures/cassettes")
    :ok
  end

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "base url" do
    assert Application.get_env(:github_api, :base_url) == "https://api.github.com"
  end

  test "user agent header" do
    assert Application.get_env(:github_api, :user_agent) == "wizardone"
  end

  test "fetch user" do
    use_cassette "fetch_user" do
      assert elem(GithubApi.fetch_user("wizardone"), 0) == :ok
    end
  end

  test "fetch repositories" do
    use_cassette "fetch_repositories" do
      assert elem(GithubApi.fetch_repositories("octocat"), 0) == :ok
    end
  end
end
