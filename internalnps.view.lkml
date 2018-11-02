view: internalnps {
  sql_table_name: PENDO.INTERNALNPS ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."accountId" ;;
  }

  dimension: browser_time {
    type: string
    sql: ${TABLE}."browserTime" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: qualitative_response {
    type: string
    sql: ${TABLE}."qualitativeResponse" ;;
  }

  dimension: quantitative_response {
    type: number
    sql: ${TABLE}."quantitativeResponse" ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}."visitorId" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: email_or_web {
    type: count_distinct
    sql: ${TABLE}."channel" ;;
  }
}
