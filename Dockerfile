FROM debian

COPY . .

RUN apt update && apt install -y \
    gcc                 \
    make                \
    cmake               \
    gcovr               \
    build-essential     \
    valgrind            \
    uuid-dev            \
    SFML.x86_64         \
    SFML-devel.x86_64   \
    ncurses-devel.x86_64\
    ncurses-libs

WORKDIR /

RUN ./install_criterion.sh
RUN ./build_sfml.sh