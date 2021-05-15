FROM fedora

COPY . .

RUN dnf install -y gcc make gdb cmake gcovr build-essential valgrind uuid-dev

WORKDIR /

CMD ./install_criterion.sh && ./install_sfml.sh