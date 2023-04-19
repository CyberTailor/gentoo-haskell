# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Prelude for Polysemy"
HOMEPAGE="https://github.com/tek/incipit-core#readme"

LICENSE="BSD-2-with-patent"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="~dev-haskell/incipit-base-0.5.1.0:=[profile?]
	>=dev-haskell/polysemy-1.6:=[profile?] <dev-haskell/polysemy-2:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
