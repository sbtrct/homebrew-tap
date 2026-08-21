cask "portside" do
  version "0.3.0"
  sha256 "f274643c6d4cc0e247e49b1e342dfa81a4f445a4813934e64f101daffd0091c3"

  url "https://github.com/tdrach/portside/releases/download/v#{version}/Portside-#{version}.dmg"
  name "Portside"
  desc "Menu bar app for local dev servers"
  homepage "https://github.com/tdrach/portside"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Portside.app"

  zap trash: [
    "~/Library/Application Support/Portside",
  ]
end
