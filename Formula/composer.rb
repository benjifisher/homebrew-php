require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Composer < AbstractPhpPhar
  init
  desc "Dependency Manager for PHP"
  homepage "http://getcomposer.org"
  url "https://getcomposer.org/download/1.2.1/composer.phar"
  sha256 "c2e04040b807a8530e5c83de56bdaaf63a0f183f8fd449bbe6e41f660e647427"
  revision 1
  head "https://getcomposer.org/composer.phar"

  bottle do
    cellar :any_skip_relocation
    sha256 "57f272b2cc634462511ccc0b1d5b34ebc95c6347e74ed360c624dc2d3f140f44" => :sierra
    sha256 "57f272b2cc634462511ccc0b1d5b34ebc95c6347e74ed360c624dc2d3f140f44" => :el_capitan
    sha256 "57f272b2cc634462511ccc0b1d5b34ebc95c6347e74ed360c624dc2d3f140f44" => :yosemite
  end

  test do
    system "composer", "--version"
  end
end
