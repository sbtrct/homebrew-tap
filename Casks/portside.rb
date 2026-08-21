cask "portside" do
  version "0.3.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/tdrach/portside/releases/download/v#{version}/Portside-#{version}.dmg"
  name "Portside"
  desc "Menu bar app for local dev servers"
  homepage "https://github.com/tdrach/portside"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Portside.app"

  zap trash: [
    "~/Library/Application Support/Portside",
  ]
end
