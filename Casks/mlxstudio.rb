# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.75"
  sha256 "a061bb771563eaa96a8b9f2c56e12b316502925d7e8f208a34bc0c236154d82d"

  url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg"
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
