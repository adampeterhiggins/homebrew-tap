cask "usage-monitor" do
  version "0.2.4"
  sha256 "c15b24aba822c75d9dc438cb7e0c3f0c804c00ecafc8e8953b8160174ceba65b"

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
