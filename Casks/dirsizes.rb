# typed: strict
# frozen_string_literal: true

cask "dirsizes" do
  version "0.4.0"
  sha256 "0fdbdfe74b0a75a59aa1ee77f7c6851e40e20b0f0b08132a7f8d4e557dc8683a"

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
