FROM haskell

RUN apt-get update && apt-get install -yq graphviz
ADD erd /erd
RUN cd /erd && stack setup && stack install
