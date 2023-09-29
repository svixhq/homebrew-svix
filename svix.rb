# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Svix < Formula
  desc "Svix CLI utility"
  homepage "https://www.svix.com"
  version "0.21.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/svix/svix-cli/releases/download/v0.21.1/svix_Darwin_x86_64.tar.gz"
      sha256 "f3c74e7ef93d728cf5a064c9967eb28e90c644d7f2677384a4cff5620bc983db"

      def install
        bin.install "svix"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/svix/svix-cli/releases/download/v0.21.1/svix_Darwin_arm64.tar.gz"
      sha256 "4600200f47e8bceeb8ae16f64780b427947c2a576c0e10721a4f313aa4cc8086"

      def install
        bin.install "svix"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/svix/svix-cli/releases/download/v0.21.1/svix_Linux_arm64.tar.gz"
      sha256 "f9eae1e5b805206ada186218be8bb06f601907372f7d72686792417eacda3196"

      def install
        bin.install "svix"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/svix/svix-cli/releases/download/v0.21.1/svix_Linux_x86_64.tar.gz"
      sha256 "77e66dcce6fb5621d2698fa99370fa34e90a96b5890622acde2a828ed41a3807"

      def install
        bin.install "svix"
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing the Svix CLI! If this is your first time using the CLI, checkout our docs at https://docs.svix.com.
    EOS
  end
end
