# Use official Directus image which comes pre-configured
FROM directus/directus:11-alpine

USER root
WORKDIR /directus

# Copy extensions if any
COPY ./extensions ./extensions

# Expose the default port
EXPOSE 8055

# Ensure we use the correct start command (built-in)
CMD : \
    && corepack enable \
    && directus start
