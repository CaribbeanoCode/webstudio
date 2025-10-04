FROM node:18-alpine

WORKDIR /app

RUN npm install -g pnpm

COPY . .

RUN pnpm install --frozen-lockfile
RUN pnpm build

EXPOSE 3000
CMD ["pnpm", "start"]
