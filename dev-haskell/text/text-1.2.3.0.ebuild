# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999
#hackport: flags: -bytestring-builder,-developer

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="An efficient packed Unicode text type"
HOMEPAGE="https://github.com/haskell/text"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RESTRICT=test # break cyclic dependencies

RDEPEND=">=dev-lang/ghc-7.8.2:="

DEPEND="${RDEPEND}
	test? ( >=dev-haskell/hunit-1.2
		>=dev-haskell/quickcheck-2.7
		>=dev-haskell/quickcheck-unicode-1.0.1.0
		dev-haskell/random
		>=dev-haskell/test-framework-0.4
		>=dev-haskell/test-framework-hunit-0.2
		>=dev-haskell/test-framework-quickcheck2-0.2 )
"

CABAL_CORE_LIB_GHC_PV="PM:8.4.1 PM:8.4.2_rc1 PM:8.4.2 PM:8.4.3 PM:9999"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bytestring-builder \
		--flag=-developer
}
