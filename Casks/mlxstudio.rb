# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.81"

  on_sequoia :or_older do
    sha256 "9f36cb7f8714c3e0351c18898bb9913619bd64ecf7a96645fe90d39b926ae4c4"

    url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg"
  end
  on_tahoe :or_newer do
    sha256 "5ab8be67b1e3b139e65535628377ef2f1094031b1cdf966dfbf8c59d17ce5ac9"

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
