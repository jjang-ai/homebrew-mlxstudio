# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.39"
  sha256 "193bce94060c13be7df9d7837a6c59e81dc6f015c0530de6af3ee4fa97c1fd80"

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
