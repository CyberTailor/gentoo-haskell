# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin test-suite"
inherit bash-completion-r1 eutils haskell-cabal

DESCRIPTION="The command-line interface for Cabal and Hackage"
HOMEPAGE="http://www.haskell.org/cabal/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri +noprefs"

RESTRICT=test # missing files

RDEPEND=">=dev-haskell/cabal-1.22.2:= <dev-haskell/cabal-1.23:=
	>=dev-haskell/http-4000.2.5:= <dev-haskell/http-4000.3:=
	>=dev-haskell/mtl-2.0:= <dev-haskell/mtl-3:=
	>=dev-haskell/old-time-1:= <dev-haskell/old-time-1.2:=
	>=dev-haskell/random-1:= <dev-haskell/random-1.2:=
	>=dev-haskell/stm-2.0:= <dev-haskell/stm-3:=
	>=dev-haskell/zlib-0.5.3:= <dev-haskell/zlib-0.7:=
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-2.6:=
			>=dev-haskell/network-uri-2.6:= )
	!network-uri? ( >=dev-haskell/network-2.4:= <dev-haskell/network-2.6:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/extensible-exceptions
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.5
		dev-haskell/regex-posix
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		>=dev-haskell/test-framework-quickcheck2-0.3
		!network-uri? ( <dev-haskell/network-uri-2.6 ) )
"

src_prepare() {
	if use noprefs; then
		epatch "${FILESDIR}/${PN}"-0.13.3-nopref.patch
	fi

	# no chance to link to -threaded on ppc64, alpha and others
	# who use UNREG, not only ARM
	if ! ghc-supports-threaded-runtime; then
		cabal_chdeps '-threaded' ' '
	fi

	cabal_chdeps \
		'QuickCheck >= 2.1.0.1 && < 2.9' 'QuickCheck >= 2.1.0.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)

	dobashcomp "${S}/bash-completion/cabal"
}
