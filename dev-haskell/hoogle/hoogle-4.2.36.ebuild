# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell API Search"
HOMEPAGE="http://www.haskell.org/hoogle/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="fetchdb fetchdb-ghc localdb"
REQUIRED_USE="fetchdb-ghc? ( fetchdb ) localdb? ( fetchdb )"

RDEPEND=">=dev-haskell/aeson-0.6.1:=[profile?]
	dev-haskell/binary:=[profile?]
	>=dev-haskell/blaze-builder-0.2:=[profile?]
	>=dev-haskell/cabal-1.8:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	>=dev-haskell/cmdargs-0.7:=[profile?]
	>=dev-haskell/conduit-0.2:=[profile?]
	>=dev-haskell/haskell-src-exts-1.16:=[profile?] <dev-haskell/haskell-src-exts-1.17:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/parsec-2.1:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/safe:=[profile?]
	>=dev-haskell/shake-0.11:=[profile?]
	>=dev-haskell/tagsoup-0.11:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/uniplate-1.6:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?]
	>=dev-haskell/vector-algorithms-0.6:=[profile?]
	>=dev-haskell/wai-1.1:=[profile?]
	>=dev-haskell/warp-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	localdb? ( app-portage/fquery )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/temporary-1.1 )
"

src_prepare() {
	if use localdb; then
		sed -e "s@\(return $ x ++ \)\(\[d </> \"databases\"\]\)@\1[\"${ROOT}var/lib/hoogle/databases/\"\] ++ \2@" \
			-i "${S}/src/CmdLine/All.hs" || die "Could not add localdb support to hoogle"
	fi
}

src_install() {
	haskell-cabal_src_install

	# requires internet access
	if use fetchdb; then
		hoogle_datadir="${ED}"/usr/share/"${P}/ghc-$(ghc-version)"
		hoogle_datadir=$hoogle_datadir "${ED}"/usr/bin/hoogle data $(use fetchdb-ghc && echo "ghc")
		rm -rf "$hoogle_datadir"/databases/download # takes A LOT of space
		if use localdb; then
			cp "${FILESDIR}/hoogle-build-localdb" "${S}" || die "Could not copy hoogle-build-localdb"
			sed -e "s@ROOT=\"/\"@ROOT=\"${ROOT}\"@" \
				-i "${S}/hoogle-build-localdb" || die "Could not set ROOT in hoogle-build-localdb"
			exeinto /usr/sbin
			doexe hoogle-build-localdb || die "Could not install hoogle-build-localdb"
		fi
	fi
}

pkg_postinst() {
	ghc-package_pkg_postinst
	if use localdb; then
		elog "Please run: ${ROOT}usr/sbin/hoogle-build-localdb"
		elog "after emerging haskell libraries to update the local hoogle database"
		elog "to index the installed haskell libraries. Note it is normal for"
		elog "hoogle-build-localdb to output zillions of useless error messages, it"
		elog "should build indices for most of the installed packages (it creates"
		elog "files in the directory: ${ROOT}var/lib/hoogle/databases"
		elog "called pkg-name.hoogle-convert-failed if hoogle convert for pkg-name fails)"
	fi
}
