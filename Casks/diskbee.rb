cask "diskbee" do
  version "4.3.6"
  sha256 "8b008016a6ceff64f107c2c16a610d2151120069964c2f90988545205247b51d"

  url "https://tmbee-ntfs-cos-20160910-1362000664.cos.accelerate.myqcloud.com/releases/DiskBee-#{version}.dmg"
  name "DiskBee"
  desc "Reads and writes NTFS drives on macOS"
  homepage "https://www.ntfs.pro/"

  livecheck do
    url "https://www.ntfs.pro/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "DiskBee.app"

  zap trash: [
    "~/Library/Application Support/NTFSProKit",
    "~/Library/Application Support/com.ntfsprokit.app",
    "~/Library/Caches/com.ntfsprokit.app",
    "~/Library/Preferences/com.ntfsprokit.app.plist",
  ]
end
