- dashboard: pendo_internal_nps_dashboard
  title: Pendo Internal NPS Dashboard
  layout: newspaper
  elements:
  - title: 90 Day Overall
    name: 90 Day Overall
    model: big_query
    explore: pendo_agg_events
    type: single_value
    fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    filters:
      pendo_agg_nps.browser_date: 90 days
    limit: 500
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${pendo_agg_nps.total_promoters} / ${pendo_agg_nps.count} - (${pendo_agg_nps.total_detractors}\
        \ / ${pendo_agg_nps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: 90 Day NPS - Overall
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    row: 0
    col: 0
    width: 8
    height: 8
  - title: 90 Day In-App
    name: 90 Day In-App
    model: big_query
    explore: pendo_agg_events
    type: single_value
    fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    filters:
      pendo_agg_nps.browser_date: 90 days
      pendo_agg_nps.channel: In-App
    limit: 500
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${pendo_agg_nps.total_promoters} / ${pendo_agg_nps.count} - (${pendo_agg_nps.total_detractors}\
        \ / ${pendo_agg_nps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: 90 Day NPS - In-App
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 8
  - title: 90 Day Email
    name: 90 Day Email
    model: big_query
    explore: pendo_agg_events
    type: single_value
    fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    filters:
      pendo_agg_nps.browser_date: 90 days
      pendo_agg_nps.channel: Email
    limit: 500
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${pendo_agg_nps.total_promoters} / ${pendo_agg_nps.count} - (${pendo_agg_nps.total_detractors}\
        \ / ${pendo_agg_nps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: 90 Day NPS - Email
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 8
  - title: Prev 90 Day NPS In-App
    name: Prev 90 Day NPS In-App
    model: big_query
    explore: pendo_agg_events
    type: single_value
    fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    filters:
      pendo_agg_nps.channel: In-App
      pendo_agg_nps.browser_date: 180 days ago for 90 days
    limit: 500
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${pendo_agg_nps.total_promoters} / ${pendo_agg_nps.count} - (${pendo_agg_nps.total_detractors}\
        \ / ${pendo_agg_nps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Prev 90 Day NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    listen: {}
    row: 8
    col: 12
    width: 4
    height: 2
  - title: Prev 90 Day NPS Email
    name: Prev 90 Day NPS Email
    model: big_query
    explore: pendo_agg_events
    type: single_value
    fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    filters:
      pendo_agg_nps.channel: Email
      pendo_agg_nps.browser_date: 180 days ago for 90 days
    limit: 500
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${pendo_agg_nps.total_promoters} / ${pendo_agg_nps.count} - (${pendo_agg_nps.total_detractors}\
        \ / ${pendo_agg_nps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Prev 90 Day NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    listen: {}
    row: 8
    col: 20
    width: 4
    height: 2
  - title: Prev 90 Day NPS Overall
    name: Prev 90 Day NPS Overall
    model: big_query
    explore: pendo_agg_events
    type: single_value
    fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    filters:
      pendo_agg_nps.channel: ''
      pendo_agg_nps.browser_date: 180 days ago for 90 days
    limit: 500
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${pendo_agg_nps.total_promoters} / ${pendo_agg_nps.count} - (${pendo_agg_nps.total_detractors}\
        \ / ${pendo_agg_nps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Prev 90 Day NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    row: 8
    col: 4
    width: 4
    height: 2
  - title: Number of Responses - Overall
    name: Number of Responses - Overall
    model: big_query
    explore: pendo_agg_events
    type: looker_line
    fields:
    - pendo_agg_nps.browser_month
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_passives
    - pendo_agg_nps.total_detractors
    fill_fields:
    - pendo_agg_nps.browser_month
    filters:
      pendo_agg_nps.channel: ''
      pendo_agg_nps.browser_month: 6 months
    sorts:
    - pendo_agg_nps.browser_month desc
    limit: 500
    query_timezone: America/New_York
    stacking: ''
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_agg_nps.total_passives: "#E2DF78"
      pendo_agg_nps.total_detractors: "#EE7772"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Responses
      orientation: left
      series:
      - id: pendo_agg_nps.total_promoters
        name: Number of Promoters
        axisId: pendo_agg_nps.total_promoters
      - id: pendo_agg_nps.total_detractors
        name: Number of Detractors
        axisId: pendo_agg_nps.total_detractors
      - id: pendo_agg_nps.total_passives
        name: Number of Passives
        axisId: pendo_agg_nps.total_passives
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Prev 90 Day NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    row: 10
    col: 0
    width: 8
    height: 9
  - title: Number of Responses - In-App
    name: Number of Responses - In-App
    model: big_query
    explore: pendo_agg_events
    type: looker_line
    fields:
    - pendo_agg_nps.browser_month
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_passives
    - pendo_agg_nps.total_detractors
    fill_fields:
    - pendo_agg_nps.browser_month
    filters:
      pendo_agg_nps.channel: In-App
      pendo_agg_nps.browser_month: 6 months
    sorts:
    - pendo_agg_nps.browser_month desc
    limit: 500
    query_timezone: America/New_York
    stacking: ''
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_agg_nps.total_passives: "#E2DF78"
      pendo_agg_nps.total_detractors: "#EE7772"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Responses
      orientation: left
      series:
      - id: pendo_agg_nps.total_promoters
        name: Number of Promoters
        axisId: pendo_agg_nps.total_promoters
      - id: pendo_agg_nps.total_detractors
        name: Number of Detractors
        axisId: pendo_agg_nps.total_detractors
      - id: pendo_agg_nps.total_passives
        name: Number of Passives
        axisId: pendo_agg_nps.total_passives
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Prev 90 Day NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    listen: {}
    row: 10
    col: 8
    width: 8
    height: 9
  - title: Number of Responses - Email
    name: Number of Responses - Email
    model: big_query
    explore: pendo_agg_events
    type: looker_line
    fields:
    - pendo_agg_nps.browser_month
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_passives
    - pendo_agg_nps.total_detractors
    fill_fields:
    - pendo_agg_nps.browser_month
    filters:
      pendo_agg_nps.channel: Email
      pendo_agg_nps.browser_month: 6 months
    sorts:
    - pendo_agg_nps.browser_month desc
    limit: 500
    query_timezone: America/New_York
    stacking: ''
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_agg_nps.total_passives: "#E2DF78"
      pendo_agg_nps.total_detractors: "#EE7772"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Responses
      orientation: left
      series:
      - id: pendo_agg_nps.total_promoters
        name: Number of Promoters
        axisId: pendo_agg_nps.total_promoters
      - id: pendo_agg_nps.total_detractors
        name: Number of Detractors
        axisId: pendo_agg_nps.total_detractors
      - id: pendo_agg_nps.total_passives
        name: Number of Passives
        axisId: pendo_agg_nps.total_passives
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: false
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Prev 90 Day NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    listen: {}
    row: 10
    col: 16
    width: 8
    height: 9
  - title: Monthly NPS
    name: Monthly NPS
    model: big_query
    explore: pendo_agg_events
    type: looker_line
    fields:
    - pendo_agg_nps.browser_month
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    - pendo_agg_nps.channel
    pivots:
    - pendo_agg_nps.channel
    fill_fields:
    - pendo_agg_nps.browser_month
    filters:
      pendo_agg_nps.browser_month: 13 months
    sorts:
    - pendo_agg_nps.browser_month desc
    - pendo_agg_nps.channel
    limit: 500
    row_total: right
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${pendo_agg_nps.total_promoters} / ${pendo_agg_nps.count}) -\
        \ (${pendo_agg_nps.total_detractors} / ${pendo_agg_nps.count}))*100"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: overall_nps
      label: Overall NPS
      expression: "((${pendo_agg_nps.total_promoters:row_total} / ${pendo_agg_nps.count:row_total})\
        \ - (${pendo_agg_nps.total_detractors:row_total} / ${pendo_agg_nps.count:row_total}))*100"
      value_format:
      value_format_name: decimal_0
      _kind_hint: supermeasure
      _type_hint: number
    query_timezone: America/New_York
    stacking: ''
    colors:
    - "#FF4876"
    - "#0A817F"
    - "#FFEDBD"
    - "#2A2C35"
    - "#025150"
    - "#DADCE5"
    - "#C0F7EC"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      overall_nps: "#2A2C35"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Responses
      orientation: left
      series:
      - id: pendo_agg_nps.total_promoters
        name: Number of Promoters
        axisId: pendo_agg_nps.total_promoters
      - id: pendo_agg_nps.total_detractors
        name: Number of Detractors
        axisId: pendo_agg_nps.total_detractors
      - id: pendo_agg_nps.total_passives
        name: Number of Passives
        axisId: pendo_agg_nps.total_passives
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: false
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Prev 90 Day NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    - pendo_agg_nps.total_promoters
    - pendo_agg_nps.total_detractors
    - pendo_agg_nps.count
    row: 19
    col: 0
    width: 24
    height: 11
  - name: Response Rate
    type: text
    title_text: Response Rate
    row: 8
    col: 0
    width: 4
    height: 2
  - title: Last 10 Comments - Promoters
    name: Last 10 Comments - Promoters
    model: big_query
    explore: pendo_agg_events
    type: table
    fields:
    - pendo_agg_nps.browser_date
    - pendo_agg_nps.qualitative_response
    - pendo_agg_nps.channel
    - pendo_agg_events.days_active_last60
    - pendo_agg_events.firstvisit_user_date
    - pendo_agg_nps.visitor_id
    - pendo_agg_nps.account_id
    - pendo_agg_nps.nps_rating
    filters:
      pendo_agg_nps.quantitative_response: ">=9"
      pendo_agg_nps.qualitative_response: "-NULL"
    sorts:
    - pendo_agg_nps.browser_date desc
    limit: 10
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: greater than
      value: 8
      background_color: "#2aa940"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - pendo_agg_nps.nps_rating
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 30
    col: 0
    width: 24
    height: 8
  - title: Last 10 Comments - Passives
    name: Last 10 Comments - Passives
    model: big_query
    explore: pendo_agg_events
    type: table
    fields:
    - pendo_agg_nps.browser_date
    - pendo_agg_nps.qualitative_response
    - pendo_agg_nps.channel
    - pendo_agg_events.days_active_last60
    - pendo_agg_events.firstvisit_user_date
    - pendo_agg_nps.visitor_id
    - pendo_agg_nps.account_id
    - pendo_agg_nps.nps_rating
    filters:
      pendo_agg_nps.quantitative_response: "[7, 8]"
      pendo_agg_nps.qualitative_response: "-NULL"
    sorts:
    - pendo_agg_nps.browser_date desc
    limit: 10
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: between
      value:
      - 6
      - 9
      background_color: "#f5f158"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - pendo_agg_nps.nps_rating
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 38
    col: 0
    width: 24
    height: 9
  - title: Last 10 Comments - Detractors
    name: Last 10 Comments - Detractors
    model: big_query
    explore: pendo_agg_events
    type: table
    fields:
    - pendo_agg_nps.browser_date
    - pendo_agg_nps.qualitative_response
    - pendo_agg_nps.channel
    - pendo_agg_events.days_active_last60
    - pendo_agg_events.firstvisit_user_date
    - pendo_agg_nps.visitor_id
    - pendo_agg_nps.account_id
    - pendo_agg_nps.nps_rating
    filters:
      pendo_agg_nps.quantitative_response: "<7"
      pendo_agg_nps.qualitative_response: "-NULL"
    sorts:
    - pendo_agg_nps.browser_date desc
    limit: 10
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: less than
      value: 7
      background_color: "#f31d40"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - pendo_agg_nps.nps_rating
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 47
    col: 0
    width: 24
    height: 8
  - title: Top 10 Accounts - Highest NPS Rating Last 12 Months
    name: Top 10 Accounts - Highest NPS Rating Last 12 Months
    model: big_query
    explore: pendo_agg_events
    type: table
    fields:
    - pendo_agg_nps.account_id
    - pendo_agg_nps.avg_nps_rating
    - pendo_agg_nps.count
    - pendo_agg_events.firstvisit_account_date
    - pendo_agg_events.lastvisit_account_date
    filters:
      pendo_agg_nps.browser_month: 12 months
    sorts:
    - pendo_agg_nps.avg_nps_rating desc
    limit: 10
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: greater than
      value: 8
      background_color: "#2fa46e"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - pendo_agg_nps.avg_nps_rating
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Number of Responses (Top 10 Accounts): pendo_agg_nps.count
    row: 55
    col: 0
    width: 12
    height: 6
  - title: Top 10 Accounts - Lowest NPS Rating Last 12 Months
    name: Top 10 Accounts - Lowest NPS Rating Last 12 Months
    model: big_query
    explore: pendo_agg_events
    type: table
    fields:
    - pendo_agg_nps.account_id
    - pendo_agg_nps.avg_nps_rating
    - pendo_agg_nps.count
    - pendo_agg_events.firstvisit_account_date
    - pendo_agg_events.lastvisit_account_date
    filters:
      pendo_agg_nps.browser_month: 12 months
    sorts:
    - pendo_agg_nps.avg_nps_rating
    limit: 10
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: less than
      value: 7
      background_color: "#f31a31"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - pendo_agg_nps.avg_nps_rating
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Number of Responses (Top 10 Accounts): pendo_agg_nps.count
    row: 55
    col: 12
    width: 12
    height: 6
  filters:
