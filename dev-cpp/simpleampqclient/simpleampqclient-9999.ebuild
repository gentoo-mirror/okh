
EAPI=5

inherit cmake-utils git-r3

DESCRIPTION="SimpleAmqpClient is an easy-to-use C++ wrapper around the rabbitmq-c C library"
HOMEPAGE="https://github.com/alanxz/SimpleAmqpClient"
EGIT_REPO_URI="https://github.com/alanxz/SimpleAmqpClient.git"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug"

DEPEND="net-libs/rabbitmq-c"
RDEPEND="${DEPEND}"

DOCS=( README.md )

#src_prepare() {
#        epatch "${FILESDIR}"/${PN}-9999-install.patch
#}

