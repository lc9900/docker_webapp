FROM centos:latest
RUN yum -y install wget
RUN mkdir /tmp/caddy && \
	cd /tmp/caddy && \
	wget https://github.com/mholt/caddy/releases/download/v0.8.1/caddy_linux_386.tar.gz && \
	gunzip caddy_linux_386.tar.gz && tar xf caddy_linux_386.tar && \
	cp caddy /usr/bin
RUN mkdir /tmp/html && touch /tmp/html/index.html && echo "<h1>Test Caddy</h1>" > /tmp/html/index.html
RUN touch /tmp/test.sh && echo 'echo "This is test"'> /tmp/test.sh && chmod +x /tmp/test.sh && /bin/bash /tmp/test.sh

