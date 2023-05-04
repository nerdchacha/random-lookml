view: companies {
  sql_table_name: public.companies ;;
  drill_fields: [company_id]

  dimension: company_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."company_id" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."company_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [company_id, company_name]
  }
}
