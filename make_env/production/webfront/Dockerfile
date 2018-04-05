FROM centos
USER root
WORKDIR /tmp
ADD nginx.repo /etc/yum.repos.d/
RUN rm -rf /etc/nginx/conf.d/*
RUN yum install -y openssl nginx \
&& sed -i '1i daemon off;' /etc/nginx/nginx.conf \
&& sed -i -e "s@/var/run/nginx.pid@/tmp/nginx.pid@" /etc/nginx/nginx.conf \
&& sed -i -e  "/user  nginx/d" /etc/nginx/nginx.conf
ADD webapp.conf /etc/nginx/conf.d/webapp.conf
RUN chown nginx:nginx /etc/nginx/conf.d/webapp.conf \
&& chown nginx:nginx /var/cache/nginx \
&& chown nginx:nginx /var/log/nginx/access.log \
&& chown nginx:nginx /var/log/nginx/error.log
USER nginx
CMD ["/usr/sbin/nginx"]