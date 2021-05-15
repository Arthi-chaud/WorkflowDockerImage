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
    git         \
    sudo        \
    build-essential \
    uuid-dev

RUN ./install_criterion.sh

RUN git clone https://github.com/Gegel85/norminette.git
RUN cd norminette && ./install.sh