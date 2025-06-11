# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="A modern and asynchronous C++ logging library"
HOMEPAGE="https://github.com/KjellKod/g3log"
EGIT_REPO_URI="https://github.com/KjellKod/g3log.git"
SRC_URI="https://github.com/KjellKod/g3log/archive/refs/tags/2.6.tar.gz"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="amd64"
IUSE="debug"

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
    local mycmakeargs=(
	-DLANG=CXX
        -DCMAKE_BUILD_TYPE=Release
        -DADD_G3LOG_UNIT_TEST=OFF
    )
    cmake_src_configure
}
CMAKE_BUILD_TYPE="Release"

DOCS=( docs )
