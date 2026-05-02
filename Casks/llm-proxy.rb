cask "llm-proxy" do
  version "0.5.7"
  sha256 "b66893b67d80ea373bbe2f5971130b4fd3101b3ea6bf3a59bf089891fddb599c"

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
