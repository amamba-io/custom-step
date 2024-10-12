FROM release-ci.daocloud.io/amamba-ci/jenkins-agent-base:v0.4.3-2-g737fc44e-ubuntu-podman
WORKDIR /home/jenkins
COPY ./ ./
# if bsae image not include this tools, we need install it in there.
# RUN curl -o jq -L https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-linux-amd64 && chmod +x jq && mv jq /usr/local/bin
# RUN curl -OL http://ftp.gnu.org/gnu/gettext/gettext-0.18.2.tar.gz && tar -zxvf gettext-0.18.2.tar.gz && cd gettext-0.18.2 && ./configure && make && make install
CMD ["cat","mail-body.html"]
