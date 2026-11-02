# frozen_string_literal: true

cask "mlxstudio" do
  version "1.6.83"

  if MacOS.full_version >= "26.2"
    sha256 "9f474500a3fe7315315252113e82e6e8c4b8958ad8251ac01cc2b562d8c27524"

    url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-tahoe-arm64.dmg"
  else
    sha256 "223c23316cd5ae2440f91dd6a9a37e179f624d1e053cfba375ca68f1da3bf96f"

    url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg"
  end

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

  if MacOS.full_version < "14.5"
    preflight_steps do
      run "/bin/echo", args: ["MLX Studio requires macOS 14.5 or later."], print_stdout: true
      run "/usr/bin/false"
    end
  end

  app "vMLX.app"

  zap trash: [
    "~/.cache/vmlx-engine",
    "~/.mlxstudio",
    "~/Library/Application Support/vmlx",
  ]
end
