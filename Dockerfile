FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y software-properties-common gcc m4 make \
  && add-apt-repository -y ppa:avsm/ppa \
  && apt-get update \
  && apt-get install -y opam

RUN opam init --disable-sandboxing -a -y
RUN eval `opam env`
RUN opam switch create 4.11.1
RUN eval `opam env`
RUN opam install utop -y