# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit qt5-build

DESCRIPTION="Qt Remote Objects is an IPC module."

if [[ ${QT5_BUILD_TYPE} == release ]]; then
	KEYWORDS="amd64 ~arm ~arm64 ~hppa ~ppc ~ppc64 ~sparc x86"
fi

IUSE=""

DEPEND="
	~dev-qt/qtcore-5.15.3
	~dev-qt/qtnetwork-5.15.3
"

RDEPEND="${DEPEND}"
