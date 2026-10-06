cask "usage-monitor" do
  version "0.2.14"
  sha256 "413f905e5960f8b47d461bba8c1776ba3532a8868eb53415e0f9e5a381d106e8"

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
