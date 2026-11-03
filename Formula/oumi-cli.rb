class OumiCli < Formula
  desc "Command-line interface for the Oumi platform"
  homepage "https://oumi.ai"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-macos-arm64.tar.gz"
      sha256 "38808130c277e9344b419326f53b74f9b054a2b900ea9feb189625bf05537739"
    end
  end

  on_linux do
    on_intel do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-x86_64.tar.gz"
      sha256 "fd02e135e9d9d35a004274d6e81b0946318c4b0d8660a4351e7c53bef8069ddd"
    end
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-arm64.tar.gz"
      sha256 "5d3c864d9510b7cee9b68139384a25fe5b2de0cf8a183c515d7fd28dcfb48bda"
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
