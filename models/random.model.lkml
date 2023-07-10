connection: "random"

# include all the views
include: "/views/**/*.view"

datagroup: random_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


access_grant: testangel {
  user_attribute: testangel
  allowed_values: ["yes"]
}

persist_with: random_default_datagroup

explore: contacts {
  join: companies {
    sql_on: ${companies.company_id} = ${contacts.company_id} ;;
    type: left_outer
    relationship: one_to_many
  }
}
