class Shotctl < Formula
  desc "Keyboard-driven photo import and archive manager"
  homepage "https://github.com/kontryx/shotctl"
  url "https://github.com/kontryx/shotctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2ad94d13d6927d415d550e73be451b692ee4023fb799f0150d7e92dd27a9aba6"
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
