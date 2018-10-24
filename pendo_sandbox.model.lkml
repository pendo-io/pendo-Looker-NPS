connection: "pendosnowflake"

# include all the views
include: "*.view"

datagroup: pendo_sandbox_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pendo_sandbox_default_datagroup

explore: pageevents {
  label: "Pendo Sandbox Page Events"
  view_name: page_events

  join: all_pages {
    view_label: "Page Events"
    relationship: many_to_one
    sql_on: ${page_events.page_id} = ${all_pages.id} ;;
  }
}

explore: feature_events {
  label: "Pendo Sandbox Feature Events"
  view_name: feature_events

  join: all_features {
    view_label: "Feature Events"
    relationship: many_to_one
    sql_on: ${feature_events.feature_id} = ${all_features.id} ;;
  }
}
