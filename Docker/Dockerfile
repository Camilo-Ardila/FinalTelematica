FROM nginx:alpine

RUN apk add --no-cache git && \
    git clone https://github.com/aaarafat/JS-Flappy-Bird.git /usr/share/nginx/html && \
    rm -rf /usr/share/nginx/html/.git

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]