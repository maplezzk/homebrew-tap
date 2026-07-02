cask "llm-proxy" do
  version "0.21.1"
  sha256 "eb0ce842e261dac700c853e0bd6a98b6ad9f61749a692abc72808cb6fa6c1969"

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
