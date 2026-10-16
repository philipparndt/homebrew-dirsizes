# typed: strict
# frozen_string_literal: true

cask "dirsizes" do
  version "0.6.0"
  sha256 "769ea33c8539e26cea21f6a73ee412b5675fc50c9d2ff871cdac9744961b20d1"

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
