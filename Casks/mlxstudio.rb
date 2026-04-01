cask "mlxstudio" do
  version "1.3.22"
  sha256 "9a5862f8d39efe21f51cc63ac0dbec22b80cf41fa28d57afe5f49c9257492e62"

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
