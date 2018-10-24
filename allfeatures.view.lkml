view: allfeatures {
  label: "All Features"
  sql_table_name: PENDO.ALLFEATURES ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: feature_name {
    type: string
    sql: ${TABLE}."name" ;;
  }
}
