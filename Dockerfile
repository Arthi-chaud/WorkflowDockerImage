FROM debian

WORKDIR /

COPY install_criterion.sh .

RUN apt update && apt install -y \
    gcc         \
    make        \
    wget        \
    cmake       \
    curl        \
    unzip       \
    gcovr       \
    build-essential \
    uuid-dev

RUN ./install_criterion.sh