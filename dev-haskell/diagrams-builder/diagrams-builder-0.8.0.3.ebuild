# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="hint-based build service for the diagrams graphics EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cairo pgf postscript ps rasterific svg"

RDEPEND=">=dev-haskell/base-orphans-0.3:=[profile?] <dev-haskell/base-orphans-0.9:=[profile?]
	>=dev-haskell/cmdargs-0.6:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/diagrams-lib-1.4:=[profile?] <dev-haskell/diagrams-lib-1.5:=[profile?]
	>=dev-haskell/exceptions-0.3:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18:=[profile?] <dev-haskell/haskell-src-exts-1.21:=[profile?]
	>=dev-haskell/haskell-src-exts-simple-1.18:=[profile?] <dev-haskell/haskell-src-exts-simple-1.21:=[profile?]
	>=dev-haskell/hint-0.4:=[profile?] <dev-haskell/hint-0.9:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-4.17:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	cairo? ( >=dev-haskell/diagrams-cairo-1.4:=[profile?] <dev-haskell/diagrams-cairo-1.5:=[profile?] )
	pgf? ( >=dev-haskell/diagrams-pgf-1.4:=[profile?] <dev-haskell/diagrams-pgf-1.5:=[profile?]
		dev-haskell/texrunner:=[profile?] )
	postscript? ( >=dev-haskell/diagrams-postscript-1.4:=[profile?] <dev-haskell/diagrams-postscript-1.5:=[profile?] )
	ps? ( >=dev-haskell/diagrams-postscript-1.4:=[profile?] <dev-haskell/diagrams-postscript-1.5:=[profile?] )
	rasterific? ( >=dev-haskell/diagrams-rasterific-1.4:=[profile?] <dev-haskell/diagrams-rasterific-1.5:=[profile?]
			>=dev-haskell/juicypixels-3.1.5:=[profile?] <dev-haskell/juicypixels-3.3:=[profile?] )
	svg? ( >=dev-haskell/diagrams-svg-1.4:=[profile?] <dev-haskell/diagrams-svg-1.5:=[profile?]
		>=dev-haskell/svg-builder-0.1:=[profile?] <dev-haskell/svg-builder-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cairo cairo) \
		$(cabal_flag pgf pgf) \
		$(cabal_flag postscript postscript) \
		$(cabal_flag ps ps) \
		$(cabal_flag rasterific rasterific) \
		$(cabal_flag svg svg)
}
