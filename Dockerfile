FROM oven/bun:latest

# ENV ADDRESS_HEADER="X-Forwarded-For"
# ENV PROTOCOL_HEADER="X-Forwarded-Proto"
ENV HOST_HEADER="Host"
ENV PORT=80
COPY . .

RUN bun i --no-cache -f --no-save

RUN bun run build

CMD [ "bun", "run", "./server/index.js" ]