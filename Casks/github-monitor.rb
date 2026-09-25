cask "github-monitor" do
  version "0.2.5"
  sha256 "efd665c16168f93c25731521889de282d7ee7939de0c6053bb6ebecccf7846f1"

  url "https://github.com/adampeterhiggins/github-monitor/releases/download/v#{version}/github-monitor_#{version}_universal.dmg"
  name "GitHub Monitor"
  desc "GitHub Insights analytics across a whole organisation"
  homepage "https://github.com/adampeterhiggins/github-monitor"

  depends_on macos: :big_sur

  app "GitHub Monitor.app"

  zap trash: [
    "~/Library/Application Support/com.adamhiggins.github-monitor",
    "~/Library/Caches/com.adamhiggins.github-monitor",
    "~/Library/Saved Application State/com.adamhiggins.github-monitor.savedState",
    "~/Library/WebKit/com.adamhiggins.github-monitor",
  ]
end
