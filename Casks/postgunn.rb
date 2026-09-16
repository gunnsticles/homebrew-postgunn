cask "postgunn" do
    version "0.0.4"
  
    on_arm do
      sha256 "75a7bc692092efb184b1ab68d36ae8397e28f257ac83c33569278ef85e369bea"
      url "https://github.com/gunnsticles/homebrew-postgunn/releases/download/v#{version}/Postgunn-#{version}-arm64.dmg"
    end
  
    on_intel do
      sha256 "e5481d2370ca71059665d41b6ff42b66c54b1698c36da0a4fee5b399d4f626b4"
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
