FROM nginx:alpine
COPY . /usr/share/nginx/html
# 用我们的 nginx 配置覆盖默认（让 .html 后缀可直接访问）
RUN mv /usr/share/nginx/html/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
