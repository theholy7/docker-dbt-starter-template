# Start with a small base image and add the dependencies to
# work easily within it. We use Python and DBT
FROM python:3.10-slim

RUN apt-get update \
    && apt-get -y install --no-install-recommends \
    git \
    ssh \
    && rm -rf /var/lib/apt/lists/*

# Install DBT and DBT Postgres dependencies
# We will run a Postgres container
RUN pip install --no-cache-dir \
    dbt-core \
    dbt-postgres

WORKDIR /dbt

# Expose this port for the docs website
EXPOSE 8080

CMD ["/bin/bash"]
