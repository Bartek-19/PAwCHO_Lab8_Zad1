FROM node:18-alpine

# OCI Metadata
LABEL org.opencontainers.image.authors="Bartosz Klimiuk"

ENV author="Bartosz Klimiuk"

WORKDIR /app

COPY app/package*.json ./

RUN npm install

COPY app/ .

EXPOSE 8000
HEALTHCHECK --interval=10s --timeout=1s CMD curl -f http://localhost:8000/ || exit 1
CMD ["npm", "start"]
