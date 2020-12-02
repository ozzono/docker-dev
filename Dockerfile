## builds a docker container with git, go1.13 and gcloud with

FROM debian
# default applications list
RUN apt-get update && \
    apt install -y\
        zsh \
        vim \
        curl \
        wget \
        git \
        apt-transport-https \
        ca-certificates \
        fonts-powerline \
        gnupg

# installing gcloud
# RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk -y

# installing go1.13.15
# RUN wget https://golang.org/dl/go1.13.15.linux-amd64.tar.gz &&\
#     tar -C /usr/local -xzf go1.13.15.linux-amd64.tar.gz &&\ 
#     export PATH=$PATH:/usr/local/go/bin &&\
#     go version
# sadly go may be left behind for another ocasion

WORKDIR /root

# configuring  zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
