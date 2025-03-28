FROM node:18-alpine AS base
WORKDIR /app
COPY package*.json ./
# RUN npm install

FROM base AS frontend
COPY price-check-front/* ./
EXPOSE 5173
ENV VITE_PORT=5173
ENV CHOKIDAR_USEPOLLING=true
CMD ["npm", "start"]

FROM base AS backend
COPY price-check-backend/src/* ./
EXPOSE 4000
ENV NODE_ENV=development
CMD ["npm", "run", "dev"]

FROM nginx:alpine AS frontend-prod
COPY --from=frontend /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

FROM node:18-alpine AS backend-prod
COPY --from=backend /app/dist /app
EXPOSE 4000
CMD ["node", "server.js"]
