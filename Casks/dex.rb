cask "dex" do
  version "1.0.0"
  sha256 "9579fc53837a1b337dbea90cc4dbeafcd5364ddc8e9c4e2c64c0f2203228934b"

  url "https://github.com/speculatingwook/dex/releases/download/v#{version}/dex-#{version}-arm64.dmg"
  name "dex"
  desc "Side-by-side document editor and terminal for AI-assisted development"
  homepage "https://github.com/speculatingwook/dex"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "dex.app"

  zap trash: [
    "~/Library/Application Support/dex",
    "~/Library/Preferences/com.dex.app.plist",
    "~/Library/Saved Application State/com.dex.app.savedState",
  ]
end
