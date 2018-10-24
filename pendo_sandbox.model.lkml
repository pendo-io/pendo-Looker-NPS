connection: "pendosnowflake"

# include all the views
include: "*.view"

datagroup: pendo_sandbox_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pendo_sandbox_default_datagroup


explore: featureevents {
  label: "Pendo Sandbox Feature Events"
  view_name: featureevents

join: allfeatures {
  view_label: "Feature Events"
  relationship: many_to_one
  sql_on: ${featureevents.feature_id} = ${allfeatures.id} ;;
}
}

explore: pageevents {
  label: "Pendo Sandbox Page Events"
  view_name: pageevents

  join: allpages {
    view_label: "Page Events"
    relationship: many_to_one
    sql_on: ${pageevents.page_id} = ${allpages.id} ;;
  }
}
