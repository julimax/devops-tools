# ---- Base Node ----
FROM node:16-alpine3.14 AS base
WORKDIR /usr/app
COPY package*.json ./

# ---- Dependencies ----
FROM base AS dependencies  
RUN npm set progress=false && npm config set depth 0
RUN npm install --only=production 
# copy production node_modules aside
RUN cp -R node_modules prod_node_modules

# ---- Release ----
FROM node:16-alpine3.14 AS release
# Create app directory
WORKDIR /usr/app

# Create appuser
RUN addgroup -g 1001 appuser && \
    adduser -D -u 1001 -G appuser appuser

# Copy production node_modules
COPY --from=dependencies /usr/app/prod_node_modules ./node_modules
# Copy app sources
COPY . .

# Expose port and define CMD
EXPOSE 8080
USER appuser
CMD ["npm", "start"]
