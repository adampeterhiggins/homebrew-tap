cask "usage-monitor" do
  version "0.2.20"
  sha256 "6efc4b45fec5896a89399ffb4639bc5a0ebc56381cfa5102f6c165d0dcdc87ae"

  url "https://github.com/adampeterhiggins/usage-monitor/releases/download/v#{version}/usage-monitor_#{version}_universal.dmg"
  name "Usage Monitor"
  desc "Menu-bar app tracking Claude, Codex and Cursor usage allowances"
  homepage "https://github.com/adampeterhiggins/usage-monitor"

  depends_on macos: :big_sur

  app "Usage Monitor.app"

  zap trash: [
    "~/Library/Application Support/com.adamhiggins.usage-monitor",
    "~/Library/Caches/com.adamhiggins.usage-monitor",
    "~/Library/Saved Application State/com.adamhiggins.usage-monitor.savedState",
    "~/Library/WebKit/com.adamhiggins.usage-monitor",
  ]
end
