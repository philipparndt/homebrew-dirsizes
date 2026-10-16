# typed: strict
# frozen_string_literal: true

cask "dirsizes" do
  version "0.7.3"
  sha256 "beea19a8e9d7de64217d5596dd12b6dfdc16e9e1d8aed88f14427b1208e287f9"

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
    "~/Library/Caches/de.rnd7.dirsizes",
    "~/Library/Preferences/de.rnd7.dirsizes.plist",
    "~/Library/Saved Application State/de.rnd7.dirsizes.savedState",
  ]
end
