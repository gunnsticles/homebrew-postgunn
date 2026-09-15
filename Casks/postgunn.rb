cask "postgunn" do
    version "0.0.3"
  
    on_arm do
      sha256 "54a98626127ae7c689241e6be79c123bda55a5dd2ad5c213ff002c342479e92a"
      url "https://github.com/gunnsticles/postgunn/releases/download/v#{version}/Postgunn-#{version}-arm64.dmg"
    end
  
    on_intel do
      sha256 "27823a8846b8df955e42fd9368e09ca5fb59c2afb2855e0f97c43ec300727421"
      url "https://github.com/gunnsticles/postgunn/releases/download/v#{version}/Postgunn-#{version}.dmg"
    end
  
    name "Postgunn"
    desc "Your app description"
    homepage "https://github.com/gunnsticles/postgunn"
  
    app "Postgunn.app"
  end
