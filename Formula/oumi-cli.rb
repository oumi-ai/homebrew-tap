class OumiCli < Formula
  desc "Command-line interface for the Oumi platform"
  homepage "https://oumi.ai"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-macos-arm64.tar.gz"
      sha256 "f3b30780164dac990856bd2a41a268b8045c3bb52ec24690ceaf31127f20a7f0"
    end
  end

  on_linux do
    on_intel do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-x86_64.tar.gz"
      sha256 "6af917fca478b626d1376b81811d038c1ec7f09b399abc31db01f685de6167c9"
    end
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-arm64.tar.gz"
      sha256 "36b6be2b7ccfb37e08566004ee085b444d94b81c3243bf1661acfda6dbf1b644"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"oumi-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oumi-cli --version")
  end
end
