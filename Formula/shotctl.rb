class Shotctl < Formula
  desc "Keyboard-driven photo import and archive manager"
  homepage "https://github.com/kontryx/shotctl"
  url "https://github.com/kontryx/shotctl/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2cde400e8afc5259a13732a487aaa04ab8acee1bc04459d18ba470973b84a6a7"
  license "MIT"
  head "https://github.com/kontryx/shotctl.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "shotctl #{version}", shell_output("#{bin}/shotctl --version")
    assert_match "interactive terminal", shell_output("#{bin}/shotctl 2>&1 </dev/null", 1)
  end
end
