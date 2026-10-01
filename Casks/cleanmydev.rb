cask "cleanmydev" do
  version "1.0.0"
  sha256 "f6dbad44832cd143d3862edf3392e5bdf64f5f93eaf35357bffa9b595d797a11"

  url "https://github.com/Zouuabi/CleanMyDev/releases/download/v#{version}/CleanMyDev-#{version}.dmg"
  name "CleanMyDev"
  desc "Mac cleaner for developers: project-aware junk removal, dev stack map, Docker, quarantine"
  homepage "https://github.com/Zouuabi/CleanMyDev"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "CleanMyDev.app"

  zap trash: [
    "~/Library/Application Support/CleanMyDev",
    "~/Library/LaunchAgents/Mouvema.CleanMyDev.daily.plist",
    "~/Library/Logs/CleanMyDev",
    "~/Library/Saved Application State/Mouvema.CleanMyDev.savedState",
  ]
end
