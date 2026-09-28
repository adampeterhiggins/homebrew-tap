cask "github-monitor" do
  version "0.2.9"
  sha256 "92548780bd0a5aac944f98fa7642071377012b5c1996bd5d56d68aa26680c3fa"

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
