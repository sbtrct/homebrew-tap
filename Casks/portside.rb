cask "portside" do
  version "0.4.0"
  sha256 "6439fcf6c561cb51ebbe2b56e34cb51876ddb232e73f8c5532fda3fad8b7bf3e"

  url "https://github.com/sbtrct/portside/releases/download/v#{version}/Portside-#{version}.dmg"
  name "Portside"
  desc "Menu bar app for local dev servers"
  homepage "https://github.com/sbtrct/portside"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Portside.app"

  # Without this, `brew upgrade` replaces the bundle underneath a running
  # Portside, which keeps serving the old version until the user notices.
  uninstall quit: "design.subtract.portside"

  zap trash: [
    "~/Library/Application Support/Portside",
  ]
end
