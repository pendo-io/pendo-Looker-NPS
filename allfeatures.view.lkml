view: allfeatures {
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

  measure: count {
    type: count
    drill_fields: [id, feature_name]
  }
}
