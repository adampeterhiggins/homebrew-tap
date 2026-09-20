cask "usage-monitor" do
  version "0.2.7"
  sha256 "ece1898cee1a963dce7df00ecdf7452ba8374bdbcc2e93d1a2c609e402f33c6d"

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
