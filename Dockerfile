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
    python3     \
    python3-pip \
    python3-dev \
    build-essential \
    uuid-dev

RUN ./install_criterion.sh

RUN cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN git clone https://github.com/Gegel85/norminette.git
RUN cd norminette && ./install.sh