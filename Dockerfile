

FROM ubuntu as build-step
COPY . /app

from nginx
copy --from=build-step /app/awsrepo25jan/ /usr/share/nginx/html
