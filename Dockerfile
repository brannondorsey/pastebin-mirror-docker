FROM debian:stretch
LABEL author="Brannon Dorsey <brannon@brannondorsey.com>"

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install requests

# /pastebin-mirror is a volume defined in docker-compose.yml
WORKDIR /pastebin-mirror

CMD python3 pastebin-mirror \
    --output /pastebin-mirror/pastebin.db \
    --output-format sqlite \
    --mirror
