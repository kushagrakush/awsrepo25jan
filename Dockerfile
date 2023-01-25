

FROM ubuntu as build-step
COPY . /app

from nginx
copy --from=build-step /app/* /usr/share/nginx/html
