cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "5.1.0"
  sha256 "30298bc5df126c95828935c7bbca946844af1e1b62b15de24a3747449129f58d"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name "4K YouTube to MP3"
  desc "Turn YouTube links into MP3 files"
  homepage "https://www.4kdownload.com/products/youtubetomp3/1"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kyoutubetomp3[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "4K YouTube to MP3.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com",
    "~/Library/Preferences/com.4kdownload.4K Video to MP3.plist",
    "~/Library/Preferences/com.4kdownload.4K YouTube to MP3.plist",
    "~/Library/Preferences/com.4kdownload.ApplicationDirectories.plist",
    "~/Library/Saved Application State/com.openmedia.4kyoutubetomp3.savedState",
  ]
end
