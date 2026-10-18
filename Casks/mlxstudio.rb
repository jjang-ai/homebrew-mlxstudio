# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.80"

  on_sequoia :or_older do
    sha256 "1f97895dc875b18655e33865233fe21a418eaad91bd5defdddaa4f8fcd0c56ea"

    url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg"
  end
  on_tahoe :or_newer do
    sha256 "586dec74d543e5fe270cee3a07aa6ee575a7c9b0e03ce968f44ae2a50d50f878"

    url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-tahoe-arm64.dmg"
  end

  name "vMLX"
  name "MLX Studio"
  desc "Local text, image, video, and audio inference"
  homepage "https://github.com/jjang-ai/vmlx"

  livecheck do
    url "https://github.com/jjang-ai/mlxstudio/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "vMLX.app"

  zap trash: [
    "~/.cache/vmlx-engine",
    "~/.mlxstudio",
    "~/Library/Application Support/vmlx",
  ]
end
