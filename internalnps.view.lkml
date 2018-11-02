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

  dimension: promoters {
    hidden: yes
    type: number
    sql: case when ${quantitative_response}>=9 then 1 else 0 end ;;
  }

  dimension: detractors {
    hidden: yes
    type: number
    sql: case when ${quantitative_response}<=6 then 1 else 0 end ;;
  }

  dimension: passives {
    hidden: yes
    type: number
    sql: case when ${quantitative_response} in (7,8) then 1 else 0 end ;;
  }

  measure: count {
    label: "Number of Responses"
    type: count
    drill_fields: [account_id,browser_time, quantitative_response, qualitative_response, count]
  }

  measure: total_promoters {
    label: "Number of Promoters"
    type: sum
    sql: ${promoters} ;;
    drill_fields: [account_id,browser_time,  quantitative_response, qualitative_response]
  }

  measure: total_detractors {
    label: "Number of Detractors"
    type: sum
    sql: ${detractors} ;;
    drill_fields: [account_id,browser_time,  quantitative_response, qualitative_response]
  }

  measure: total_passives {
    label: "Number of Passives"
    type: sum
    sql: ${passives} ;;
    drill_fields: [account_id,browser_time,  quantitative_response, qualitative_response]
  }

  measure: nps_rating {
    label: "NPS Rating"
    type: sum
    sql: ${quantitative_response} ;;
  }

  measure: avg_nps_rating {
    label: "Average NPS Rating"
    type: average
    sql: ${quantitative_response} ;;
    value_format_name: decimal_1
  }
}
