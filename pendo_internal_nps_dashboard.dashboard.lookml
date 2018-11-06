- dashboard: shared_pendo_nps_dashboard
  title: Shared Pendo NPS Dashboard
  layout: newspaper
  elements:
  - name: NPS Average - Email
    title: NPS Average - Email
    model: pendo_sandbox
    explore: internalnps
    type: single_value
    fields:
    - internalnps.channel
    - internalnps.avg_nps_rating
    filters:
      internalnps.channel: Email
    sorts:
    - internalnps.avg_nps_rating desc
    limit: 500
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
    row: 17
    col: 12
    width: 12
    height: 3
  - name: NPS Average - Web App
    title: NPS Average - Web App
    model: pendo_sandbox
    explore: internalnps
    type: single_value
    fields:
    - internalnps.channel
    - internalnps.avg_nps_rating
    filters:
      internalnps.channel: Web App
    sorts:
    - internalnps.avg_nps_rating desc
    limit: 500
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
    row: 17
    col: 0
    width: 12
    height: 3
  - name: 30 Day NPS - Overall
    title: 30 Day NPS - Overall
    model: pendo_sandbox
    explore: internalnps
    type: single_value
    fields:
    - internalnps.total_detractors
    - internalnps.total_passives
    - internalnps.total_promoters
    - internalnps.count
    filters:
      internalnps.browsertime_date: 30 days
    sorts:
    - internalnps.count desc
    limit: 500
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: "((${internalnps.total_promoters} / ${internalnps.count} - (${internalnps.total_detractors}\
        \ / ${internalnps.count}))*100)"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: 30 Day NPS - Overall
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - internalnps.count
    - internalnps.total_promoters
    - internalnps.total_passives
    - internalnps.total_detractors
    row: 0
    col: 12
    width: 12
    height: 3
  - title: 90 Day NPS - Overall
    name: 90 Day NPS - Overall
    model: pendo_sandbox
    explore: internalnps
    type: single_value
    fields:
    - internalnps.total_detractors
    - internalnps.total_passives
    - internalnps.total_promoters
    - internalnps.count
    filters:
      internalnps.browsertime_date: 90 days
    sorts:
    - calculation_1 desc
    limit: 500
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: "((${internalnps.total_promoters} / ${internalnps.count} - (${internalnps.total_detractors}\
        \ / ${internalnps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: 90 Day NPS - Overall
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    - internalnps.count
    - internalnps.total_promoters
    - internalnps.total_passives
    - internalnps.total_detractors
    series_types: {}
    row: 0
    col: 0
    width: 12
    height: 3
  - title: 1 Year NPS Trend - Overall and by Channel
    name: 1 Year NPS Trend - Overall and by Channel
    model: pendo_sandbox
    explore: internalnps
    type: looker_line
    fields:
    - internalnps.browsertime_month
    - internalnps.total_detractors
    - internalnps.total_passives
    - internalnps.total_promoters
    - internalnps.count
    - internalnps.channel
    pivots:
    - internalnps.channel
    fill_fields:
    - internalnps.browsertime_month
    sorts:
    - internalnps.channel 0
    - overall_nps
    limit: 500
    row_total: right
    dynamic_fields:
    - table_calculation: nps
      label: NPS
      expression: "((${internalnps.total_promoters} / ${internalnps.count} - (${internalnps.total_detractors}\
        \ / ${internalnps.count}))*100)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: overall_nps
      label: Overall NPS
      expression: "((${internalnps.total_promoters:row_total} / ${internalnps.count:row_total})\
        \ - (${internalnps.total_detractors:row_total} / ${internalnps.count:row_total}))*100"
      value_format:
      value_format_name: decimal_0
      _kind_hint: supermeasure
      _type_hint: number
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      Email - nps: "#928fb4"
      Web App - nps: "#cee0a0"
      overall_nps: "#1f3e5a"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: Email - nps
        name: Email - NPS
        axisId: nps
      - id: Web App - nps
        name: Web App - NPS
        axisId: nps
      - id: overall_nps
        name: Overall NPS
        axisId: overall_nps
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      unpinAxis: false
      tickDensity: custom
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
    hidden_fields:
    - internalnps.total_detractors
    - internalnps.total_passives
    - internalnps.total_promoters
    - internalnps.count
    row: 3
    col: 0
    width: 24
    height: 7
  - title: Number of NPS Responses Overall
    name: Number of NPS Responses Overall
    model: pendo_sandbox
    explore: internalnps
    type: looker_line
    fields:
    - internalnps.browsertime_month
    - internalnps.total_detractors
    - internalnps.total_passives
    - internalnps.total_promoters
    fill_fields:
    - internalnps.browsertime_month
    sorts:
    - internalnps.browsertime_month desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#5245ed"
    - "#ed6168"
    - "#1ea8df"
    - "#353b49"
    - "#49cec1"
    - "#b3a0dd"
    - "#db7f2a"
    - "#706080"
    - "#a2dcf3"
    - "#776fdf"
    - "#e9b404"
    - "#635189"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      internalnps.total_detractors: "#ed6168"
      internalnps.total_passives: "#e9b404"
      internalnps.total_promoters: "#49cec1"
    series_labels:
      internalnps.total_detractors: Detractors
      internalnps.total_passives: Passives
      internalnps.total_promoters: Promoters
    series_types: {}
    series_point_styles:
      internalnps.total_detractors: square
      internalnps.total_promoters: diamond
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: internalnps.total_detractors
        name: Detractors
        axisId: internalnps.total_detractors
      - id: internalnps.total_passives
        name: Passives
        axisId: internalnps.total_passives
      - id: internalnps.total_promoters
        name: Promoters
        axisId: internalnps.total_promoters
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 14
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
    trend_lines: []
    show_null_points: true
    interpolation: linear
    row: 10
    col: 0
    width: 24
    height: 7
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
    colors:
    - "#5245ed"
    - "#ed6168"
    - "#1ea8df"
    - "#353b49"
    - "#49cec1"
    - "#b3a0dd"
    - "#db7f2a"
    - "#706080"
    - "#a2dcf3"
    - "#776fdf"
    - "#e9b404"
    - "#635189"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      internalnps.total_promoters: "#49cec1"
      internalnps.total_passives: "#e9b404"
      internalnps.total_detractors: "#ed6168"
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
    row: 20
    col: 0
    width: 24
    height: 10
  - title: NPS Promoters - Last 10 with Comments
    name: NPS Promoters - Last 10 with Comments
    model: pendo_sandbox
    explore: internalnps
    type: table
    fields:
    - internalnps.browsertime_date
    - internalnps.accountid
    - internalnps.qualitativeresponse
    - internalnps.nps_rating
    filters:
      internalnps.nps_rating: ">9"
      internalnps.qualitativeresponse: "-NULL"
    sorts:
    - internalnps.browsertime_date desc
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      internalnps.browser_time: Date
      internalnps.qualitative_response: Response
      internalnps.browsertime_date: Date
      internalnps.accountid: Account
      internalnps.qualitativeresponse: Response
      internalnps.nps_rating: NPS Rating
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: greater than
      value: 9
      background_color: "#74bab3"
      font_color: "#f5ffff"
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
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    row: 30
    col: 0
    width: 8
    height: 10
  - title: NPS Passive - Last 10 with Comments
    name: NPS Passive - Last 10 with Comments
    model: pendo_sandbox
    explore: internalnps
    type: table
    fields:
    - internalnps.browsertime_date
    - internalnps.accountid
    - internalnps.qualitativeresponse
    - internalnps.nps_rating
    filters:
      internalnps.qualitativeresponse: "-NULL"
      internalnps.nps_rating: '7,8'
    sorts:
    - internalnps.browsertime_date desc
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      internalnps.browser_time: Date
      internalnps.qualitative_response: Response
      internalnps.browsertime_date: Date
      internalnps.accountid: Account
      internalnps.qualitativeresponse: Response
      internalnps.nps_rating: NPS Rating
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: not null
      value:
      background_color: "#e9ed7b"
      font_color: "#000000"
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
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    row: 30
    col: 8
    width: 8
    height: 10
  - title: NPS Detractors - Last 10 with Comments
    name: NPS Detractors - Last 10 with Comments
    model: pendo_sandbox
    explore: internalnps
    type: table
    fields:
    - internalnps.browsertime_date
    - internalnps.accountid
    - internalnps.qualitativeresponse
    - internalnps.nps_rating
    filters:
      internalnps.nps_rating: "<7"
      internalnps.qualitativeresponse: "-NULL"
    sorts:
    - internalnps.browsertime_date desc
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      internalnps.browser_time: Date
      internalnps.qualitative_response: Response
      internalnps.browsertime_date: Date
      internalnps.accountid: Account
      internalnps.qualitativeresponse: Response
      internalnps.nps_rating: NPS Rating
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: less than
      value: 7
      background_color: "#edb7bf"
      font_color: "#f8fffc"
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
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    row: 30
    col: 16
    width: 8
    height: 10
