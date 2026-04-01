cask "mlxstudio" do
  version "1.3.24"
  sha256 "06ff9bab4ba65bb4db073ba370d29b394d102863113ebdfb5447a00b90932eda"

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
