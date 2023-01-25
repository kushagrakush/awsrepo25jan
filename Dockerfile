

FROM ubuntu as build-step
COPY . /app

from nginx
copy --from=build-step /app/images/ /usr/share/nginx/html/images/
copy --from=build-step /app/css/ /usr/share/nginx/html/css/
copy --from=build-step /app/fonts/ /usr/share/nginx/html/fonts/
copy --from=build-step /app/js/ /usr/share/nginx/html/js/
copy --from=build-step /app/about.html /usr/share/nginx/html
copy --from=build-step /app/action.html /usr/share/nginx/html
copy --from=build-step /app/contact.html /usr/share/nginx/html
copy --from=build-step /app/doctores.html /usr/share/nginx/html
copy --from=build-step /app/index.html /usr/share/nginx/html
copy --from=build-step /app/news.html /usr/share/nginx/html
