FROM node:20 AS build
WORKDIR /app
COPY . .
# RUN rm package-lock.json
RUN set -x \
    && npm install
RUN set -x \
    && npm run build

# EXPOSE 5173
# CMD ["npm", "run","dev"]
# docker build -t my-app .
# docker run -p 5173:5173 my-app


FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
