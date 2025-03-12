FROM node:18-alpine AS base
WORKDIR /app
COPY package*.json ./
# RUN npm install

FROM base AS frontend
COPY price-check-front/* ./
EXPOSE 3000
CMD ["npm", "start"]

FROM base AS backend
COPY price-check-backend/src/* ./
EXPOSE 4000
CMD ["npm", "run", "dev"]