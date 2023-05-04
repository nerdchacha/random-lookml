connection: "random"

# include all the views
include: "/views/**/*.view"

datagroup: random_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: random_default_datagroup

explore: companies {}

explore: contacts {}
