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
