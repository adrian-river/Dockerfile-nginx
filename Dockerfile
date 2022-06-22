FROM nginx:1.22.0

RUN rm -f /usr/share/nginx/html/index.html

COPY /pageweb /usr/share/nginx/html/

EXPOSE 80:80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]