FROM debian

RUN apt-get update && apt-get install -y \
            wget \
            unzip \
            && \
    apt-get -y autoclean && apt-get -y autoremove



# at the moment of writing the docker volumes' owner uid is 1000 and can't be changed
# this was a long time ago, so check if still true
RUN groupadd theuser && useradd --create-home --gid theuser --uid 1000 theuser
WORKDIR /home/theuser
# erl needs this to check ~/.erlang:
ENV HOME /home/theuser
USER theuser


# TODO: check signature
RUN mkdir $HOME/bin && \
    wget https://github.com/ethereumproject/go-ethereum/releases/download/v3.5.0/geth-classic-linux-v3.5.0.zip && \
    unzip geth-classic-linux-v3.5.0.zip -d $HOME/bin && \
    rm geth-classic-linux-v3.5.0.zip && \
    mkdir $HOME/.ethereum-classic $HOME/.ethash
# we made the dir above, because a volume mounted to a non-existent dir has root:root ownership

# ENTRYPOINT $HOME/bin/geth




