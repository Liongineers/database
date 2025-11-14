# Databases
The Student Market Place database setup consists of a PostgreSQL database hosted on a GCP VM, accessed by one of our atomic microservices, and two Cloud SQL databases, each accessed by its own atomic microservice. This repo contains the schemas for the Users, Products, and Reviews microservices.

## One VM with PostgreSQL accessed by one of our atomic microservices.
- **Microservice 1:** Users *(VM - PostgreSQL)*
  - **Link to VM:** https://console.cloud.google.com/compute/instancesDetail/zones/us-east1-c/instances/cloud-computing-database

## Two Cloud SQL databases, with one atomic microservice accessing each.
- **Microservice 2:** Products *(Cloud SQL Database #1 - PostgreSQL)*
  - **Link to Cloud SQL (cloudsql-products-db):** https://console.cloud.google.com/sql/instances/cloudsql-products-db/studio
- **Microservice 3:** Reviews *(Cloud SQL Database #2 - PostgreSQL)*
  - **Link to Cloud SQL (cloudsql-reviews-db):** https://console.cloud.google.com/sql/instances/cloudsql-reviews-db/studio
