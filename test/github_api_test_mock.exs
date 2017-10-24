defmodule GithubApiTestMock do
  def fetch_user_response do
    {:ok, %HTTPoison.Response{body: "{\"login\":\"wizardone\",\"id\":2437002,\"avatar_url\":\"https://avatars0.githubusercontent.com/u/2437002?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/wizardone\",\"html_url\":\"https://github.com/wizardone\",\"followers_url\":\"https://api.github.com/users/wizardone/followers\",\"following_url\":\"https://api.github.com/users/wizardone/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/wizardone/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/wizardone/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/wizardone/subscriptions\",\"organizations_url\":\"https://api.github.com/users/wizardone/orgs\",\"repos_url\":\"https://api.github.com/users/wizardone/repos\",\"events_url\":\"https://api.github.com/users/wizardone/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/wizardone/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":\"Stefan Slaveykov\",\"company\":null,\"blog\":\"\",\"location\":\"Sofia, Bulgaria\",\"email\":null,\"hireable\":true,\"bio\":\"Technology agnostic software developer\",\"public_repos\":46,\"public_gists\":0,\"followers\":16,\"following\":36,\"created_at\":\"2012-09-27T12:19:31Z\",\"updated_at\":\"2017-10-01T13:10:29Z\"}",
      headers: [{"Access-Control-Allow-Origin", "*"},
                {"Access-Control-Expose-Headers",
                  "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval"},
                {"Cache-Control", "public, max-age=60, s-maxage=60"},
                {"Content-Length", "1178"},
                {"Content-Security-Policy", "default-src 'none'"},
                {"Content-Type", "application/json; charset=utf-8"},
                {"Date", "Tue, 24 Oct 2017 13:42:37 GMT"},
                {"ETag", "\"9d9521d5182a22ae81fe2d6cb5a36daa\""},
                {"Expect-CT",
                  "max-age=2592000, report-uri=\"https://api.github.com/_private/browser/errors\""},
                {"Last-Modified", "Sun, 01 Oct 2017 13:10:29 GMT"},
                {"Server", "GitHub.com"}, {"Status", "200 OK"},
                {"Strict-Transport-Security",
                  "max-age=31536000; includeSubdomains; preload"},
                {"Vary", "Accept"}, {"X-Content-Type-Options", "nosniff"},
                {"X-Frame-Options", "deny"},
                {"X-GitHub-Media-Type", "github.v3; format=json"},
                {"X-GitHub-Request-Id", "CD93:33EF:2882E02:52712BA:59EF434D"},
                {"X-RateLimit-Limit", "60"}, {"X-RateLimit-Remaining", "54"},
                {"X-RateLimit-Reset", "1508852740"},
                {"X-Runtime-rack", "0.027537"},
                {"X-XSS-Protection", "1; mode=block"}],
      request_url: "https://api.github.com/users/wizardone",
      status_code: 200}}
  end

  def fetch_repositories_response do
    
  end
end
