class OumiCli < Formula
  desc "Command-line interface for the Oumi platform"
  homepage "https://oumi.ai"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-macos-arm64.tar.gz"
      sha256 "54101cf22724cc8c7a2f4d82c883f2c787115a49cf9fc84e783862f159e74506"
    end
  end

  on_linux do
    on_intel do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-x86_64.tar.gz"
      sha256 "829c382d13f3f9431ca5143fc1a891ba73c065d98f6a5e6977a4efc99c178e83"
    end
    on_arm do
      url "https://oumi-public-downloads.s3.us-west-2.amazonaws.com/cli/#{version}/oumi-cli-linux-arm64.tar.gz"
      sha256 "680c86ff3447255d05d33911300e4069f2873209189e0baf346e6b0a6859f4fd"
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
