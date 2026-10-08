cask "postgunn" do
    version "0.0.9"
  
    on_arm do
      sha256 "2d9e26998a8c290fd81daf702c6064039afbcec840d2b6189f7278930b7dcb8c"
      url "https://github.com/gunnsticles/homebrew-postgunn/releases/download/v#{version}/Postgunn-#{version}-arm64.dmg"
    end
  
    on_intel do
      sha256 "5a7e6e4ecb152ce1ecdff4fa25e12ed50eae5816f40359ac42f91c43dce04378"
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
