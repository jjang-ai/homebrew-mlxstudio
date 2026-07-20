# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.13"
  sha256 "21cf069cd1adf7d0a3903ee96290986248f2ed7a634df6944122f6e5e16490f2"

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
