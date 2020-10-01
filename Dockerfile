FROM debian:buster-slim

RUN apt-get update && apt-get install curl unzip -y
RUN curl -fsSL https://deno.land/x/install/install.sh | DENO_INSTALL=/usr sh

COPY app /app
WORKDIR /app

ENTRYPOINT ["deno"]
CMD ["run", "index.ts"]
