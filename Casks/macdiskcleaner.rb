cask "macdiskcleaner" do
  version "1.7.1"
  sha256 "e65186a9d4fb01876219fdd982e480b87a004d3e59cfbdf335671b1ffff4099d"

  url "https://www.ntfs.pro/download/MacDiskCleaner-#{version}.dmg"
  name "MacDiskCleaner"
  desc "Cleans up disk space by scanning caches, logs and other junk files"
  homepage "https://www.ntfs.pro/en/cleanup"

  livecheck do
    url "https://www.ntfs.pro/cleanup/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacDiskCleaner.app"

  zap trash: [
    "~/Library/Application Support/MacDiskCleaner",
    "~/Library/Caches/com.diskbee.diskcleaner",
    "~/Library/Preferences/com.diskbee.diskcleaner.plist",
  ]
end
