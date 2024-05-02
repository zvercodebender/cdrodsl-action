FROM fedora:39

RUN dnf -y update && \
    dnf -y install perl-JSON-PP-1:4.16-501.fc39.noarch && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app && \
    cd /app && \
    curl -L --output cdro-cli https://github.com/zvercodebender/cdro-cli/releases/download/0.7/cdro-cli-linux-amd64 && \
    chmod +x cdro-cli

RUN find /cloudbees/workspace

RUN cp /cloudbees/workspace/container/evalDSL.sh /app/evalDSL.sh && \
    chmod +x /app/evalDSL.sh

