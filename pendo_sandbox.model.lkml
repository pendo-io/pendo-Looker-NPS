connection: "pendosnowflake"

# include all the views
include: "*.view"

datagroup: pendo_sandbox_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pendo_sandbox_default_datagroup
