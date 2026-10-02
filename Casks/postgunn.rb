cask "postgunn" do
    version "0.0.7"
  
    on_arm do
      sha256 "0dbe8760d73ae8aad4133e8bf892b2f49a6f10502f9770de6c78fad0f6279f0d"
      url "https://github.com/gunnsticles/homebrew-postgunn/releases/download/v#{version}/Postgunn-#{version}-arm64.dmg"
    end
  
    on_intel do
      sha256 "4440dd671eb4a4e1309feb8c361222876487f1b0686e6c397e7e033271330b85"
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
