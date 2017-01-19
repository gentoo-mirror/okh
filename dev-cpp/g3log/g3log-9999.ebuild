
EAPI=5

inherit cmake-utils git-r3

DESCRIPTION="A modern and asynchronous C++ logging library"
HOMEPAGE="https://github.com/KjellKod/g3log"
EGIT_REPO_URI="https://github.com/KjellKod/g3log.git"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug"

DEPEND=""
RDEPEND="${DEPEND}"

#CMAKE_IN_SOURCE_BUILD="ON"
#CMAKE_USE_DIR=${S}/g2log

DOCS=( README.markdown )

src_prepare() {
        epatch "${FILESDIR}"/${PN}-9999-install.patch
}

