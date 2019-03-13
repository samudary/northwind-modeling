## DBT Experiments

This documents experimentation with DBT (data build tool) on the sample Northwind orders database for Postgres from [here](https://github.com/pthom/northwind_psql)

### General notes

DBT materializes models as "Views" by default if not specified. In dev, it creates this view with the `schema` specified in profiles.yml.

We use the following to specify a materialization within a model:

```
{{
  config(materialized='table')
}}
```

### Commands

`dbt compile`
`dbt run`
`dbt run --models [Specific Model]`

Run with a specific target defined in my `.dbt/profiles.yml` file. This defaults to a `dev` profile. Running on prod creates a different schema as defined in the profile.

`dbt run --target prod`