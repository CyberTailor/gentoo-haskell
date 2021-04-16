# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -devel,-doc,-h2spec

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal

DESCRIPTION="HTTP/2 library"
HOMEPAGE="https://github.com/kazu-yamamoto/http2"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # test suite requires too new dependencies

RDEPEND="dev-haskell/case-insensitive:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-haskell/network-byte-order-0.1.5:=[profile?]
	dev-haskell/psqueues:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/time-manager:=[profile?]
	dev-haskell/unix-time:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
# 	test? ( dev-haskell/aeson
# 		dev-haskell/aeson-pretty
# 		dev-haskell/async
# 		>=dev-haskell/base16-bytestring-1.0
# 		dev-haskell/cryptonite
# 		>=dev-haskell/glob-0.9
# 		>=dev-haskell/hspec-1.3
# 		>=dev-haskell/network-run-0.1.0
# 		dev-haskell/text
# 		dev-haskell/typed-process
# 		dev-haskell/unordered-containers
# 		dev-haskell/vector )
# "

src_configure() {
	haskell-cabal_src_configure \
		--flag=-devel \
		--flag=-doc \
		--flag=-h2spec
}
