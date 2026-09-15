cask "postgunn" do
    version "0.0.3"
  
    on_arm do
      sha256 "ccbcc2d14abb16aac41968da9e00c16cbc1cec0badef723ae98c83a471746e3d"
      url "https://github.com/gunnsticles/postgunn/releases/download/v#{version}/Postgunn-#{version}-arm64.dmg"
    end
  
    on_intel do
      sha256 "fc6caea8458a32a46023b39012888e17d7fdef54e2433485fd1702ce20dfc07a"
      url "https://github.com/gunnsticles/postgunn/releases/download/v#{version}/Postgunn-#{version}.dmg"
    end
  
    name "Postgunn"
    desc "Your app description"
    homepage "https://github.com/gunnsticles/postgunn"
  
    app "Postgunn.app"
  end