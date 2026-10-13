# typed: strict
# frozen_string_literal: true

cask "dirsizes" do
  version "0.3.0"
  sha256 "440ad0d1dbc2a27fa3b324a763a72d9a9849ae90e947125e28f91815b91ce747"

  url "https://github.com/philipparndt/dirsizes/releases/download/v#{version}/DirSizes-#{version}.dmg"
  name "DirSizes"
  desc "Fast disk usage scanner with a sunburst chart"
  homepage "https://github.com/philipparndt/dirsizes"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "DirSizes.app"
  binary "#{appdir}/DirSizes.app/Contents/Resources/bin/dirsizes"

  zap trash: [
    "~/Library/Application Support/de.rnd7.dirsizes",
    "~/Library/Preferences/de.rnd7.dirsizes.plist",
    "~/Library/Saved Application State/de.rnd7.dirsizes.savedState",
  ]
end
