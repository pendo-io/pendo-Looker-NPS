view: internalvox {
  sql_table_name: PENDO.INTERNALVOX ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."AccountID" ;;
  }

  dimension: days_active {
    type: number
    sql: ${TABLE}."DaysActive" ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}."EventCount" ;;
  }

  dimension: page_view_event {
    type: number
    sql: ${TABLE}."PageViewEvent" ;;
  }

  dimension: published_guides_count {
    type: number
    sql: ${TABLE}."PublishedGuidesCount" ;;
  }

  dimension: visitor_count_last30 {
    type: number
    sql: ${TABLE}."VisitorCountLast30" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
