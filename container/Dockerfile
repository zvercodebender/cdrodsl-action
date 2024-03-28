FROM fedora:39

RUN dnf -y update && \
    dnf -y install perl-JSON-PP-1:4.16-501.fc39.noarch && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app && \
        mkdir /app && \
        cd /app && \
        curl -L --output cdro-cli https://github.com/zvercodebender/cdro-cli/releases/download/0.5/cdro-cli-linux-amd64 2> /dev/null && \
        chmod +x cdro-cli

RUN cp container/evalDSL.sh /app/evalDSL.sh && \
    chmod +x /app/evalDSL.sh

