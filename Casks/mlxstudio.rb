cask "mlxstudio" do
  version "1.3.23"
  sha256 "f81b6747311c561c74f0252c3cb53872f58d85e898c4be259e2596442b2fb236"

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
