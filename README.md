# docker-dbt-starter-template
This repository has a basic template to get started with Docker and DBT (data build tool).

## How to start

1. Make sure that you have docker installed and running;
1. Start the services with `docker compose up --build`;
1. Attach to the container running dbt with `docker attach data-warehouse-course-app-1`

You are now ready to start using DBT. You should be in the container's shell, where you can run `dbt` commands.

* **Detach**: You can detach with `ctrl+p ctrl+q` which will leave the container running.
* **Exit**: You can exit with `ctrl+c` which will stop the container.
* **DBT Build**: Build (run and test) the models with `dbt build`.
* **DBT Run**: Build the models with `dbt run`.
* **DBT Docs**: Generate the docs with `dbt docs generate` first, and then `dbt docs serve --host 0.0.0.0`.

**Note**: If you modify the `docker-composse.yml` file, you need to update the `dbt_project.yml`
file to still connect to the database.
