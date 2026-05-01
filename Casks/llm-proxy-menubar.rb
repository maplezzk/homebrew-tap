cask "llm-proxy-menubar" do
  version "0.1.1"
  sha256 "UPDATE_WITH_ACTUAL_SHA256"

  url "https://github.com/maplezzk/llm-proxy/releases/download/menubar-v#{version}/LLMProxyMenuBar-v#{version}.zip"
  name "LLMProxyMenuBar"
  desc "macOS menu bar app for llm-proxy — multi-protocol LLM proxy"
  homepage "https://github.com/maplezzk/llm-proxy"

  depends_on macos: ">= :ventura"

  app "LLMProxyMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.llmproxy.menubar.plist",
  ]
end
