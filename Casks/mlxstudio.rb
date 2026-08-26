# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.41"
  sha256 "b0d9183256eddf5199b9ec0d727a89ad4e1ade69257d5b05f10815462be460b5"

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
