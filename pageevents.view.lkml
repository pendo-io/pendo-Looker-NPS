view: pageevents {
  label: "Page Events"
  sql_table_name: PENDO.PAGEEVENTS ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."accountId" ;;
  }

  dimension: app_id {
    type: number
    sql: ${TABLE}."appId" ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}."day" ;;
  }

  dimension: num_events {
    type: number
    sql: ${TABLE}."numEvents" ;;
  }

  dimension: num_minutes {
    type: number
    sql: ${TABLE}."numMinutes" ;;
  }

  dimension: page_id {
    type: string
    sql: ${TABLE}."pageId" ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}."remoteIp" ;;
  }

  dimension: server {
    type: string
    sql: ${TABLE}."server" ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}."userAgent" ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}."visitorId" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
