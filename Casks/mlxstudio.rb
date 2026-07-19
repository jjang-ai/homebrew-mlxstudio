# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.11"
  sha256 "c1a8dcd17563a772b83e64bfb443aabedb46111a1e0e500ab69c4fc49143cb2b"

  url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg"
  name "vMLX"
  name "MLX Studio"
  desc "Local text, image, video, and audio inference"
  homepage "https://github.com/jjang-ai/vmlx"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "vMLX.app"

  zap trash: [
    "~/.cache/vmlx-engine",
    "~/.mlxstudio",
    "~/Library/Application Support/vmlx",
  ]
end
