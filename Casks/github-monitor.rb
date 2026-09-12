cask "github-monitor" do
  version "0.1.5"
  sha256 "ce5b624c87cf98d9ee6566efb87a7af9ebeb2d936ee3508b3081436fa91d4c29"

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
