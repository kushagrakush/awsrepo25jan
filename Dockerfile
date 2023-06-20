

FROM ubuntu as build-step
COPY . /app

FROM nginx
COPY --from=build-step /app/images/ /usr/share/nginx/html/images/
COPY --from=build-step /app/css/ /usr/share/nginx/html/css/
COPY --from=build-step /app/fonts/ /usr/share/nginx/html/fonts/
COPY --from=build-step /app/js/ /usr/share/nginx/html/js/
COPY --from=build-step /app/about.html /usr/share/nginx/html
COPY --from=build-step /app/action.html /usr/share/nginx/html
COPY --from=build-step /app/contact.html /usr/share/nginx/html
COPY --from=build-step /app/doctores.html /usr/share/nginx/html
COPY --from=build-step /app/index.html /usr/share/nginx/html
COPY --from=build-step /app/news.html /usr/share/nginx/html
EXPOSE 8000
