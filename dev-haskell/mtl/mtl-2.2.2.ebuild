# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Monad classes, using functional dependencies"
HOMEPAGE="https://github.com/haskell/mtl"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}"

CABAL_CORE_LIB_GHC_PV="PM:8.4.2_rc1 PM:8.4.2 PM:8.4.3 PM:8.4.4 PM:8.6.1 PM:8.6.2 PM:8.6.3 PM:8.6.4 PM:8.6.5 PM:8.8.1 PM:8.8.2 PM:8.8.3 PM:8.8.4 PM:8.10.1_alpha1 PM:8.10.1_alpha2 PM:8.10.1 PM:8.10.2 PM:9999"
