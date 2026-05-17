cask "llm-proxy" do
  version "0.12.2"
  sha256 "c64ba1def231ab879e6f91cae9aa306c3b66775b7b1b2f2207e2a7c90d082e04"

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
