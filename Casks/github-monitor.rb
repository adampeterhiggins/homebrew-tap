cask "github-monitor" do
  version "0.2.15"
  sha256 "4c9ca29ba5275d8ad7c7bb77c3c8b03d9001187abd7bdfdb03b79e7d192404aa"

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
