FROM oven/bun:latest

# ENV ADDRESS_HEADER="X-Forwarded-For"
# ENV PROTOCOL_HEADER="X-Forwarded-Proto"
ENV HOST_HEADER="Host"
ENV NODE_ENV="development"
COPY . .

RUN bun i --no-cache -f --no-save

RUN bun run build

ENV PORT=80
CMD [ "bun", "run", "./server/index.js" ]