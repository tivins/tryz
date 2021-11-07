# bullseye
FROM "debian:11"

# Install required libraries
RUN apt update
RUN apt install -y \
    wget \
    unzip \
    build-essential \
    cmake \
    libxml2-dev \
    libpng-dev \
    libssl-dev \
    libgif-dev \
    libjpeg62-turbo-dev \
    libluabind-dev \
    libcurlpp-dev \
    libgl1-mesa-dev \
    libmariadbclient-dev-compat \
    mariadb-client \
    libopenal-dev \
    libvorbis-dev \
    libcpptest-dev \
    libfreetype6-dev

# Create main user
RUN \
    useradd -ms /bin/bash admin     && \
    echo "admin:admin" | chpasswd   && \
    adduser admin sudo              && \
    echo "Done."

# Run script as main user
USER admin
WORKDIR /data
ENTRYPOINT ["/data/scripts/entry.sh"]