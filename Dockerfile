FROM ubuntu
RUN apt-get update -y
VOLUME ["/data"]
RUN mkdir /tmp/dockergc
RUN apt-get install tree -y
RUN apt-get install apache2 -y
RUN echo "hello amiya" > /tmp/testfile && touch /tmp/file2
WORKDIR /tmp
ENV mynamee amiya
COPY filecopy /tmp
ADD test.tar.gz /tmp
