cask "mlxstudio" do
  version "1.3.21"
  sha256 "2bf7cc81a8ad9454036e9a37e47040b664c9b08e2638eb451d0e0d82f8b144a9"

  url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-arm64.dmg"
  name "vMLX"
  name "MLX Studio"
  desc "Local AI inference for Apple Silicon — Text, Image, Video & Audio generation on Mac"
  homepage "https://github.com/jjang-ai/vmlx"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "vMLX.app"

  zap trash: [
    "~/Library/Application Support/vmlx",
    "~/.mlxstudio",
    "~/.cache/vmlx-engine",
  ]
end
