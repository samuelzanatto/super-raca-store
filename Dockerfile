FROM node:22-alpine AS builder

WORKDIR /app

ARG NODE_ENV=production
ARG MEDUSA_BACKEND_URL=https://api.superraca.com

ENV MEDUSA_BACKEND_URL=$MEDUSA_BACKEND_URL
ENV MEDUSA_TELEMETRY_DISABLED=true

COPY package*.json ./
RUN npm ci --include=dev

COPY . .
ENV NODE_ENV=$NODE_ENV
RUN npm run build && test -d .medusa/server

FROM node:22-alpine AS runner

WORKDIR /app

ARG MEDUSA_BACKEND_URL=https://api.superraca.com

ENV NODE_ENV=production
ENV MEDUSA_BACKEND_URL=$MEDUSA_BACKEND_URL

COPY --from=builder /app/.medusa/server ./

RUN npm install --omit=dev

EXPOSE 9000

CMD ["npm", "run", "start"]
