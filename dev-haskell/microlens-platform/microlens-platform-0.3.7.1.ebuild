# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Feature-complete microlens"
HOMEPAGE="https://github.com/aelve/microlens"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hashable-1.1.2.3:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/microlens-0.4.7:=[profile?] <dev-haskell/microlens-0.4.8:=[profile?]
	>=dev-haskell/microlens-ghc-0.4.7:=[profile?] <dev-haskell/microlens-ghc-0.4.8:=[profile?]
	>=dev-haskell/microlens-mtl-0.1.10:=[profile?] <dev-haskell/microlens-mtl-0.1.11:=[profile?]
	>=dev-haskell/microlens-th-0.4.1:=[profile?] <dev-haskell/microlens-th-0.4.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.4:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
