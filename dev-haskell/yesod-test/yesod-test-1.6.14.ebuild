# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="integration testing for WAI/Yesod Applications"
HOMEPAGE="https://www.yesodweb.com"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?]
	dev-haskell/blaze-markup:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/cookie:=[profile?]
	>=dev-haskell/hspec-core-2:=[profile?] <dev-haskell/hspec-core-3:=[profile?]
	>=dev-haskell/html-conduit-0.1:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/hunit-1.2:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/network-2.2:=[profile?]
	>=dev-haskell/pretty-show-1.6:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?]
	dev-haskell/wai-extra:=[profile?]
	>=dev-haskell/xml-conduit-1.0:=[profile?]
	>=dev-haskell/xml-types-0.3:=[profile?]
	>=dev-haskell/yesod-core-1.6.17:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec
		dev-haskell/unliftio
		dev-haskell/unliftio-core
		>=dev-haskell/yesod-form-1.6 )
"
