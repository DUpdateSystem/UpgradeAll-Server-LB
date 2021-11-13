FROM nginx:latest
ENV serverName localhost
COPY . /etc/nginx/
VOLUME /cache
RUN rm -f /etc/nginx/nginx.conf
ENTRYPOINT [ "/etc/nginx/start.sh" ]
CMD ["nginx", "-g", "daemon off;"]