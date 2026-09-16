cask "postgunn" do
    version "0.0.5"
  
    on_arm do
      sha256 "043405e4bafc50d8472e576e2140b451f6746cd4c96b06c25aa4b727f3e7ae5f"
      url "https://github.com/gunnsticles/homebrew-postgunn/releases/download/v#{version}/Postgunn-#{version}-arm64.dmg"
    end
  
    on_intel do
      sha256 "d182ad377e7dbdd411af708c32d27fa13c613dc58c82ca338deff96b79397558"
      url "https://github.com/gunnsticles/homebrew-postgunn/releases/download/v#{version}/Postgunn-#{version}.dmg"
    end
  
    name "Postgunn"
    desc "Free and minimal desktop API client focused purely on the core request/response workflow. Built for developers who want to hit endpoints, organize collections locally, and test APIs without the account requirements, cloud sync, or extra bloat."
    homepage "https://github.com/gunnsticles/postgunn"
  
    app "Postgunn.app"

    postflight_steps do
      run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Postgunn.app"]
    end
  end
