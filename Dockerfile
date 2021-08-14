FROM debian

WORKDIR /

COPY install_criterion.sh .
#Lines to install PHP7.4
RUN apt -y install lsb-release apt-transport-https ca-certificates 
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

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
    doxygen     \
    graphviz    \
    uuid-dev    \
    composer    \
    php7.4      \
    php7.4-common\
    php7.4-cli      \
    php7.4-curl php7.4-json php7.4-gd php7.4-mbstring php7.4-intl php7.4-bcmath php7.4-bz2 php7.4-readline php7.4-zip

RUN ./install_criterion.sh

RUN git clone https://github.com/Gegel85/norminette.git
RUN cd norminette && ./install.sh

RUN cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip
