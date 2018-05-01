FROM drecom/centos-ruby:2.5.1

RUN yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo \
    && yum install -y cmake libssh2-devel yum-utils docker-ce \
		&&  yum clean all \
		&& rm -rf /var/cache/yum

RUN gem install dapp; \
		dapp -v; \
		docker -v

CMD ["sh"]
