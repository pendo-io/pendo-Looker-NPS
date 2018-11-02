- dashboard: pendo_internal_nps
  title: Pendo Internal NPS
  layout: newspaper
  elements:
  - title: Average NPS Rating - Web App
    name: Average NPS Rating - Web App
    model: pendo_sandbox
    explore: internalnps
    type: single_value
    fields:
    - internalnps.channel
    - internalnps.avg_nps_rating
    sorts:
    - internalnps.avg_nps_rating desc
    limit: 500
    filter_expression: ${internalnps.channel}="Web App"
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Average NPS Rating - Web App
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: internalnps.total_promoters
        name: Internalnps Number of Promoters
        axisId: internalnps.total_promoters
      - id: internalnps.total_passives
        name: Internalnps Number of Passives
        axisId: internalnps.total_passives
      - id: internalnps.total_detractors
        name: Internalnps Number of Detractors
        axisId: internalnps.total_detractors
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
    x_axis_label: Channel
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Average NPS Rating - Email
    name: Average NPS Rating - Email
    model: pendo_sandbox
    explore: internalnps
    type: single_value
    fields:
    - internalnps.channel
    - internalnps.avg_nps_rating
    sorts:
    - internalnps.avg_nps_rating desc
    limit: 500
    filter_expression: ${internalnps.channel}="Email"
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Average NPS Rating - Email
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: internalnps.total_promoters
        name: Internalnps Number of Promoters
        axisId: internalnps.total_promoters
      - id: internalnps.total_passives
        name: Internalnps Number of Passives
        axisId: internalnps.total_passives
      - id: internalnps.total_detractors
        name: Internalnps Number of Detractors
        axisId: internalnps.total_detractors
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
    x_axis_label: Channel
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 8
    width: 8
    height: 6
  - title: NPS Promoters-Passive-Detractors by Channel
    name: NPS Promoters-Passive-Detractors by Channel
    model: pendo_sandbox
    explore: internalnps
    type: looker_column
    fields:
    - internalnps.total_promoters
    - internalnps.total_passives
    - internalnps.total_detractors
    - internalnps.channel
    sorts:
    - internalnps.total_promoters desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: internalnps.total_promoters
        name: Internalnps Number of Promoters
        axisId: internalnps.total_promoters
      - id: internalnps.total_passives
        name: Internalnps Number of Passives
        axisId: internalnps.total_passives
      - id: internalnps.total_detractors
        name: Internalnps Number of Detractors
        axisId: internalnps.total_detractors
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
    x_axis_label: Channel
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 16
    width: 8
    height: 6
