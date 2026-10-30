cask "usage-monitor" do
  version "0.2.22"
  sha256 "b28b1d5c152e7ef7e94b44adb4b0f13d79c9a4e35aef452ce236aa93d0e8eb30"

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
