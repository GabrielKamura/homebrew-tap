cask "kamurafy" do
  version "0.3.0"
  sha256 "a56398a4ff9d426f252cc7507427e8be0767bad5d23caf66b047f592ce7b82ce"

  url "https://github.com/GabrielKamura/kamurafy/releases/download/v#{version}/Kamurafy.dmg"
  name "Kamurafy"
  desc "Free, open-source Mac cleaner and battery companion"
  homepage "https://github.com/GabrielKamura/kamurafy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Kamurafy.app"

  zap trash: [
    "~/Library/Application Support/Kamurafy",
    "~/Library/Preferences/com.kamurafy.mac.plist",
  ]

  caveats <<~EOS
    Kamurafy is not notarized by Apple yet. The first time you open it, close the
    warning and go to System Settings › Privacy & Security › Open Anyway.
  EOS
end
