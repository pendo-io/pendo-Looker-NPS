- dashboard: pendo_sandbox
  title: Pendo Sandbox
  layout: newspaper
  elements:
  - title: Top 10 Features
    name: Top 10 Features
    model: pendo_sandbox
    explore: featureevents
    type: looker_bar
    fields:
    - allfeatures.feature_name
    - featureevents.feature_visit_count
    sorts:
    - featureevents.feature_visit_count desc
    limit: 10
    filter_expression: '${featureevents.visitor_id}!="temp"

      '
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: Top 10 Features
      orientation: bottom
      series:
      - id: featureevents.feature_visit_count
        name: Feature Events Feature Visit Count
        axisId: featureevents.feature_visit_count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Feature Name
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    column_group_spacing_ratio: 0.5
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Top 10 Pages
    name: Top 10 Pages
    model: pendo_sandbox
    explore: pageevents
    type: looker_bar
    fields:
    - allpages.page_name
    - pageevents.page_visit_count
    sorts:
    - pageevents.page_visit_count desc
    limit: 10
    filter_expression: ${pageevents.visitor_id}!="temp"
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Top 10 Pages
      orientation: bottom
      series:
      - id: pageevents.page_visit_count
        name: Page Events Page Visit Count
        axisId: pageevents.page_visit_count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Page Name
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    column_group_spacing_ratio: 0.5
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 8
    width: 8
    height: 6
