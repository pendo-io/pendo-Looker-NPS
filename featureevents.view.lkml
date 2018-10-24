view: featureevents {
  sql_table_name: PENDO.FEATUREEVENTS ;;

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

  dimension: feature_id {
    type: string
    sql: ${TABLE}."featureId" ;;
  }

  dimension: num_events {
    type: number
    sql: ${TABLE}."numEvents" ;;
  }

  dimension: num_minutes {
    type: number
    sql: ${TABLE}."numMinutes" ;;
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

  measure: feature_visit_count {
    type: count
    drill_fields: []
  }
}
