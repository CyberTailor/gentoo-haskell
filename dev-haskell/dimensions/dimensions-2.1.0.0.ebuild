# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Safe type-level dimensionality for multidimensional data"
HOMEPAGE="https://github.com/achirkin/easytensor#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="unsafe-indices"

RDEPEND=">=dev-haskell/constraints-deriving-1.1.1.0:=[profile?] <dev-haskell/constraints-deriving-2:=[profile?]
	>=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
	test? ( dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag unsafe-indices unsafeindices)
}
