view: nps {
  sql_table_name: PENDO.NPS ;;

  dimension: accountid {
    type: string
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension_group: browsertime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."BROWSERTIME" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  dimension: qualitativeresponse {
    type: string
    sql: ${TABLE}."QUALITATIVERESPONSE" ;;
  }

  dimension: quantitativeresponse {
    type: string
    sql: ${TABLE}."QUANTITATIVERESPONSE" ;;
  }

  dimension: visitorid {
    type: string
    sql: ${TABLE}."VISITORID" ;;
  }

  dimension: promoters {
    hidden: yes
    type: number
    sql: case when ${quantitativeresponse}>=9 then 1 else 0 end ;;
  }

  dimension: detractors {
    hidden: yes
    type: number
    sql: case when ${quantitativeresponse}<=6 then 1 else 0 end ;;
  }

  dimension: passives {
    hidden: yes
    type: number
    sql: case when ${quantitativeresponse} in (7,8) then 1 else 0 end ;;
  }

  measure: count {
    label: "Number of Responses"
    type: count
    drill_fields: [accountid, browsertime_raw, quantitativeresponse, qualitativeresponse, count]
  }

  measure: total_promoters {
    label: "Number of Promoters"
    type: sum
    sql: ${promoters} ;;
    drill_fields: [accountid,browsertime_raw, quantitativeresponse, qualitativeresponse]
  }

  measure: total_detractors {
    label: "Number of Detractors"
    type: sum
    sql: ${detractors} ;;
    drill_fields: [accountid,browsertime_raw, quantitativeresponse, qualitativeresponse]
  }

  measure: total_passives {
    label: "Number of Passives"
    type: sum
    sql: ${passives} ;;
    drill_fields: [accountid,browsertime_raw, quantitativeresponse, qualitativeresponse]
  }

  measure: nps_rating {
    label: "NPS Rating"
    type: sum
    sql: ${quantitativeresponse} ;;
  }

  measure: avg_nps_rating {
    label: "Average NPS Rating"
    type: average
    sql: ${quantitativeresponse} ;;
    value_format_name: decimal_1
  }
}
