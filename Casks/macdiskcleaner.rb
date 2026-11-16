cask "macdiskcleaner" do
  version "1.7.1,56"
  sha256 "e65186a9d4fb01876219fdd982e480b87a004d3e59cfbdf335671b1ffff4099d"

  url "https://tmbee-ntfs-cos-20160910-1362000664.cos.accelerate.myqcloud.com/releases/cleanup/MacDiskCleaner-#{version.csv.first}.dmg"
  name "MacDiskCleaner"
  desc "Cleans up disk space by scanning caches, logs and other junk files"
  homepage "https://www.ntfs.pro/en/cleanup"

  livecheck do
    url "https://tmbee-ntfs-cos-20160910-1362000664.cos.accelerate.myqcloud.com/releases/cleanup/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MacDiskCleaner.app"
end
