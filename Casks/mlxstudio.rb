# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.12"
  sha256 "704d87edf168a73d4ca2d94e8cb6190ca593ada71bca181bf369c84ea13ae421"

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
