cask "llm-proxy" do
  version "0.10.2"
  sha256 "f3fda46e8a91a1f4a8fbb9e12313ad4d974da79c1c909f2f188569dbc34faf90"

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
