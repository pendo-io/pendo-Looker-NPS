view: pendo_agg_nps {
  sql_table_name: PENDO.INTERNALNPS ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(${TABLE}.visitorId,cast(${TABLE}.browsertime as string)) ;;
  }

  dimension: account_id {
    label: "AccountID"
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension_group: browser {
    label: "Response"
    type: time
    timeframes: [
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.browserTime ;;
  }

  dimension: channel {
    label: "Response Channel"
    type: string
    sql: case when ${TABLE}.channel='ui:email:pollResponse' then 'Email' else 'In-App' end ;;
  }

  dimension: qualitative_response {
    label: "Comment"
    type: string
    sql: ${TABLE}.qualitativeResponse ;;
  }

  dimension: quantitative_response {
    label: "Response"
    type: number
    sql: ${TABLE}.quantitativeResponse ;;
  }

  dimension: visitor_id {
    label: "VisitorID"
    type: string
    sql: ${TABLE}.visitorId ;;
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
    drill_fields: [account_id,browser_date, quantitative_response, qualitative_response, count]
  }

  measure: total_promoters {
    label: "Number of Promoters"
    type: sum
    sql: ${promoters} ;;
    drill_fields: [account_id,browser_date,  quantitative_response, qualitative_response]
  }

  measure: total_detractors {
    label: "Number of Detractors"
    type: sum
    sql: ${detractors} ;;
    drill_fields: [account_id,browser_date,  quantitative_response, qualitative_response]
  }

  measure: total_passives {
    label: "Number of Passives"
    type: sum
    sql: ${passives} ;;
    drill_fields: [account_id,browser_date,  quantitative_response, qualitative_response]
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
