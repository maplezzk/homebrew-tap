cask "llm-proxy" do
  version "0.22.3"
  sha256 "0bbcf695505a1c6157d9e2ea64bb36c222c2db58c3d062a6930ab2a84874a2f9"

  url "https://github.com/maplezzk/llm-proxy/releases/download/v#{version}/LLMProxy-v#{version}.dmg"
  name "LLMProxy"
  desc "macOS desktop app for llm-proxy — multi-protocol LLM proxy"
  homepage "https://github.com/maplezzk/llm-proxy"

  depends_on macos: ">= :ventura"

  app "LLMProxy.app"

  zap trash: [
    "~/Library/Preferences/com.maplezzk.llm-proxy.plist",
  ]
end
