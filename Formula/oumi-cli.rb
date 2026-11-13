class OumiCli < Formula
  desc "Command-line interface for the Oumi platform"
  homepage "https://oumi.ai"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-macos-arm64.tar.gz"
      sha256 "59e4c01d5a2bebf8f8d3691e4bee9595fb11bf664c560e17cc2b3f7fee494ba5"
    end
  end

  on_linux do
    on_intel do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-x86_64.tar.gz"
      sha256 "16aaf3a8df93790277905404ef0ad546c39cb401863d232c5657561cfbfe86c3"
    end
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-arm64.tar.gz"
      sha256 "3c90aca50859ca2562a466ea674e6298c5e7b26e2449c649b58305b13f874e6b"
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
