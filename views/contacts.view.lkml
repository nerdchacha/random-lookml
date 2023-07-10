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
    required_access_grants: [testangel]
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
    required_access_grants: [testangel]
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
    required_access_grants: [testangel]
  }

  measure: count {
    type: count
    drill_fields: [contact_id, contact_name]
  }
}
