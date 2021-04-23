FROM gcc

RUN apt-get update && \
    apt-get install -y \
    ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip

COPY ./neovim-src /mnt/neovim-src
WORKDIR /mnt/neovim-src

RUN make CMAKE_BUILD_TYPE=RelWithDebInfo

RUN mkdir /opt/neovim -p
RUN make CMAKE_INSTALL_PREFIX=/opt/neovim/ install
ENV PATH="/opt/neovim/bin:${PATH}"

