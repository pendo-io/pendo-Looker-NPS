view: pendo_agg_events {
  derived_table: {
    sql:  select  a.*,
                  min(day) over (partition by visitorid, accountid) as firstvisit_user,
                  max(day) over (partition by visitorid, accountid) as lastvisit_user,
                  min(day) over (partition by accountid) as firstvisit_account,
                  max(day) over (partition by accountid) as lastvisit_account,
                  sum(case when date(day)>=DATE_SUB(current_date(), INTERVAL 60 DAY) then 1 else 0 end) over (partition by visitorid, accountid) as days_active_last60,
                  rand() as pk
          from    pendo_internal.Agg_Events a ;;
  }

  dimension: pk {
    hidden: yes
    type: string
    sql: ${TABLE}.pk ;;
    primary_key: yes
  }

  dimension: accountid {
    label: "Subscription Name"
    type: string
    sql: ${TABLE}.accountid ;;
  }

  dimension_group: day {
    label: "Event"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year,
      day_of_week
    ]
    sql: ${TABLE}.day ;;
  }

  measure: numevents {
    label: "Number of Events"
    type: sum
    sql: ${TABLE}.numevents ;;
    value_format_name: decimal_0
  }

  dimension: numminutes {
    hidden: yes
    type: number
    sql: ${TABLE}.numminutes ;;
  }

  measure: number_of_minutes {
    label: "Number of Minutes"
    type: sum
    sql: ${numminutes} ;;
    value_format_name: decimal_0
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: visitorid {
    label: "Visitor ID"
    type: string
    sql: ${TABLE}.visitorid ;;
  }

  dimension: days_active_last60 {
    label: "Days Active Out of Last 60 Days"
    type: number
    sql: ${TABLE}.days_active_last60 ;;
  }

  dimension_group: firstvisit_user {
    label: "First Visit - User"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.firstvisit_user ;;
  }

  dimension_group: lastvisit_user {
    label: "Last Visit - User"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.lastvisit_user ;;
  }

  dimension_group: firstvisit_account {
    label: "First Visit - Account"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.firstvisit_account ;;
  }

  dimension_group: lastvisit_account {
    label: "Last Visit - Account"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.lastvisit_account ;;
  }

  measure: active_user {
    label: "Active User"
    type: count_distinct
    sql: CONCAT(${visitorid},${accountid}) ;;
    value_format_name: decimal_0
  }

  measure: new_mau {
    label: "New MAU"
    type: count_distinct
    sql: case when ${firstvisit_user_month}=${day_month} then CONCAT(${visitorid},${accountid}) else null end ;;
  }

  measure: churned_mau {
    label: "Churned MAU"
    type: count_distinct
    sql: case when ${lastvisit_user_month}=${day_month} then CONCAT(${visitorid},${accountid}) else null end ;;
  }

  measure: active_account {
    label: "Active Account"
    type: count_distinct
    sql: ${accountid} ;;
    value_format_name: decimal_0
  }


}
