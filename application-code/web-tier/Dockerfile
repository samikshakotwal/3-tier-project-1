# Stage 1: Build the React app
FROM public.ecr.aws/docker/library/node:18 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN  npm run build
# Stage 2: Serve with NGINX
FROM nginx:stable-alpine
# Remove default config
RUN rm /etc/nginx/nginx.conf
# copy our custom config
COPY nginx.conf /etc/nginx
# copy build output to NGINX web root
COPY --from=builder /app/build /usr/share/nginx/html
# Expose port
EXPOSE 80
