cask "github-monitor" do
  version "0.2.9"
  sha256 "4601701c2d446642006b941bc9b42e05aea783715531bfff91231d041e313b90"

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
