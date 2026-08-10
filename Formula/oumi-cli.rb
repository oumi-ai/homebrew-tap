class OumiCli < Formula
  desc "Command-line interface for the Oumi platform"
  homepage "https://oumi.ai"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-macos-arm64.tar.gz"
      sha256 "0943b82225d325741e39f96baaef005f6d74e18d0053e3431957622441ce9695"
    end
  end

  on_linux do
    on_intel do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-x86_64.tar.gz"
      sha256 "255ea337d48f4217eab667bcec727c260ad63fa2f2767db15b40227449399f25"
    end
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-arm64.tar.gz"
      sha256 "1927cdc2a6267456e05fd7229fd9ee5b49b5cfe38a56a0c9a3f6523fabae6f9a"
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
