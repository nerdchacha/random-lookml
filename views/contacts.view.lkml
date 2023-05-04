view: contacts {
  sql_table_name: public.contacts ;;
  drill_fields: [contact_id]

  dimension: contact_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."contact_id" ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}."company_id" ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}."contact_name" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  measure: count {
    type: count
    drill_fields: [contact_id, contact_name]
  }
}