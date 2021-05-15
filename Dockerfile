FROM debian

COPY . .

RUN apt update && apt install -y gcc make cmake gcovr build-essential valgrind uuid-dev

WORKDIR /

CMD ./install_criterion.sh && ./install_sfml.sh