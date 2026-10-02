cask "postgunn" do
    version "0.0.8"
  
    on_arm do
      sha256 "fb7692a587843f9d2d0221e844d311d4742ff5bf87b9eb930580c32c87ece7dc"
      url "https://github.com/gunnsticles/homebrew-postgunn/releases/download/v#{version}/Postgunn-#{version}-arm64.dmg"
    end
  
    on_intel do
      sha256 "590e5b79119dea6f94b9d6836ecc3ff8d77fb42ccf04482443540573eb341fb2"
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
