# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HLS Plugin to expand TemplateHaskell Splices and QuasiQuotes"
HOMEPAGE="https://hackage.haskell.org/package/hls-splice-plugin"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/foldl:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	dev-haskell/ghcide:=[profile?]
	dev-haskell/haskell-lsp:=[profile?]
	dev-haskell/hls-exactprint-utils:=[profile?]
	dev-haskell/hls-plugin-api:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/retrie:=[profile?]
	dev-haskell/shake:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"
