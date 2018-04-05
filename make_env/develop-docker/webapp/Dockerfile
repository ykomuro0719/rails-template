FROM centos
USER root
WORKDIR /tmp
RUN yum install -y kernel-headers kernel-devel gcc openssl-devel \
&& yum groupinstall -y "Development tools" \
&& curl -LO https://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.1.tar.gz \
&& tar xzvf ruby-2.5.1.tar.gz \
&& cd /tmp/ruby-2.5.1 && ./configure --disable-install-doc \
&& make && make install \
&& cd ../ \
&& rm -rf /tmp/* \
&& gem install bundler -f \
&& groupadd -r rails && useradd -r -m -g rails rails \
&& yum install -y libcurl libcurl-devel sqlite sqlite-devel \
&& curl -sL https://rpm.nodesource.com/setup_9.x | bash - \
&& yum install -y nodejs
USER rails
ENV RAILS_ENV development
WORKDIR /home/rails
ADD rails-up.sh /home/rails
EXPOSE 3000:3000
CMD ./rails-up.sh