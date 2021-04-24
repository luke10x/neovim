FROM gcc

RUN apt-get update && \
    apt-get install -y \
    ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip \
    git

RUN mkdir /opt/neovim -p

RUN git clone https://github.com/neovim/neovim.git /opt/neovim-src

WORKDIR /opt/neovim-src
RUN make CMAKE_BUILD_TYPE=RelWithDebInfo
RUN make CMAKE_INSTALL_PREFIX=/opt/neovim/ install
ENV PATH="/opt/neovim/bin:${PATH}"

