
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MarineDashboard

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/Eduardodudu/MarineDashboard/workflows/R-CMD-check/badge.svg)](https://github.com/Eduardodudu/MarineDashboard/actions)

<!-- badges: end -->

This project aims to design a dashboard using `shiny.semantics` of the
[marine
dataset](https://www.marinetraffic.com/blog/information-transmitted-via-ais-signal/)

[<img src="inst/app/www/images/Dashboard.png" title="Marine Dashboard" alt="Link" width="573"/>](https://eduardodudu.shinyapps.io/MarineDashboard/)

## Data structure

Marine dataset has 3102887 rows and 20 variables with the following
structure:

<div id="ziuyjdreta" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ziuyjdreta .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ziuyjdreta .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ziuyjdreta .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ziuyjdreta .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ziuyjdreta .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ziuyjdreta .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ziuyjdreta .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ziuyjdreta .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ziuyjdreta .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ziuyjdreta .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ziuyjdreta .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ziuyjdreta .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#ziuyjdreta .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ziuyjdreta .gt_from_md > :first-child {
  margin-top: 0;
}

#ziuyjdreta .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ziuyjdreta .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ziuyjdreta .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#ziuyjdreta .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ziuyjdreta .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ziuyjdreta .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ziuyjdreta .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ziuyjdreta .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ziuyjdreta .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ziuyjdreta .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ziuyjdreta .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ziuyjdreta .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ziuyjdreta .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ziuyjdreta .gt_left {
  text-align: left;
}

#ziuyjdreta .gt_center {
  text-align: center;
}

#ziuyjdreta .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ziuyjdreta .gt_font_normal {
  font-weight: normal;
}

#ziuyjdreta .gt_font_bold {
  font-weight: bold;
}

#ziuyjdreta .gt_font_italic {
  font-style: italic;
}

#ziuyjdreta .gt_super {
  font-size: 65%;
}

#ziuyjdreta .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">ID</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Description</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">LAT</td>
<td class="gt_row gt_left">Ship’s latitude</td></tr>
    <tr><td class="gt_row gt_left">LON</td>
<td class="gt_row gt_left">Ship’s longitude</td></tr>
    <tr><td class="gt_row gt_left">SPEED</td>
<td class="gt_row gt_left">Ship’s speed in knots</td></tr>
    <tr><td class="gt_row gt_left">COURSE</td>
<td class="gt_row gt_left">Ship’s course as angle</td></tr>
    <tr><td class="gt_row gt_left">HEADING</td>
<td class="gt_row gt_left">Ship’s compass direction</td></tr>
    <tr><td class="gt_row gt_left">DESTINATION</td>
<td class="gt_row gt_left">Ship’s destination (reported by the crew)</td></tr>
    <tr><td class="gt_row gt_left">FLAG</td>
<td class="gt_row gt_left">Ship’s flag</td></tr>
    <tr><td class="gt_row gt_left">LENGTH</td>
<td class="gt_row gt_left">Ship’s length in meters</td></tr>
    <tr><td class="gt_row gt_left">SHIPNAME</td>
<td class="gt_row gt_left">Ship’s name</td></tr>
    <tr><td class="gt_row gt_left">SHIPTYPE</td>
<td class="gt_row gt_left">Ship’s type</td></tr>
    <tr><td class="gt_row gt_left">SHIP_ID</td>
<td class="gt_row gt_left">Ship’s unique identifier</td></tr>
    <tr><td class="gt_row gt_left">WIDTH</td>
<td class="gt_row gt_left">Ship’s width in meters</td></tr>
    <tr><td class="gt_row gt_left">DWT</td>
<td class="gt_row gt_left">Ship’s deadweight in tones</td></tr>
    <tr><td class="gt_row gt_left">DATETIME</td>
<td class="gt_row gt_left">Date and time of the observation</td></tr>
    <tr><td class="gt_row gt_left">PORT</td>
<td class="gt_row gt_left">Current port reported by the vessel</td></tr>
    <tr><td class="gt_row gt_left">Date</td>
<td class="gt_row gt_left">Date extracted from DATETIME</td></tr>
    <tr><td class="gt_row gt_left">Week_nb</td>
<td class="gt_row gt_left">Week number extracted from date</td></tr>
    <tr><td class="gt_row gt_left">Ship_type</td>
<td class="gt_row gt_left">Ship’s type from SHIPTYPE</td></tr>
    <tr><td class="gt_row gt_left">Port</td>
<td class="gt_row gt_left">Current port assigned based on the ship’s location</td></tr>
    <tr><td class="gt_row gt_left">Is_parked</td>
<td class="gt_row gt_left">Indicator whether the ship is moving or not</td></tr>
    <tr><td class="gt_row gt_left">longest_distance</td>
<td class="gt_row gt_left">Longest distance between vessel observations</td></tr>
  </tbody>
  
  
</table>
</div>

The data is a log of the [AIS
signal](https://www.marinetraffic.com/blog/information-transmitted-via-ais-signal/)
that renders each vessel position under a frequency of time.

### Analysis

1.  There were found cases of conflict between SHIP\_ID and SHIPNAME, in
    theory SHIP\_ID is unique and therefore should have a unique name as
    well as for SHIPNAME having a single SHIP\_ID

<div id="roxuygqsgt" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#roxuygqsgt .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#roxuygqsgt .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#roxuygqsgt .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#roxuygqsgt .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#roxuygqsgt .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#roxuygqsgt .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#roxuygqsgt .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#roxuygqsgt .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#roxuygqsgt .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#roxuygqsgt .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#roxuygqsgt .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#roxuygqsgt .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#roxuygqsgt .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#roxuygqsgt .gt_from_md > :first-child {
  margin-top: 0;
}

#roxuygqsgt .gt_from_md > :last-child {
  margin-bottom: 0;
}

#roxuygqsgt .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#roxuygqsgt .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#roxuygqsgt .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#roxuygqsgt .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#roxuygqsgt .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#roxuygqsgt .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#roxuygqsgt .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#roxuygqsgt .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#roxuygqsgt .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#roxuygqsgt .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#roxuygqsgt .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#roxuygqsgt .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#roxuygqsgt .gt_left {
  text-align: left;
}

#roxuygqsgt .gt_center {
  text-align: center;
}

#roxuygqsgt .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#roxuygqsgt .gt_font_normal {
  font-weight: normal;
}

#roxuygqsgt .gt_font_bold {
  font-weight: bold;
}

#roxuygqsgt .gt_font_italic {
  font-style: italic;
}

#roxuygqsgt .gt_super {
  font-size: 65%;
}

#roxuygqsgt .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">SHIP_ID</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">n</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Last_SHIPNAME</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_right">4666609</td>
<td class="gt_row gt_right">6</td>
<td class="gt_row gt_left">BLACKPEARL 7.3V</td></tr>
    <tr><td class="gt_row gt_right">315731</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_left">BBAS</td></tr>
    <tr><td class="gt_row gt_right">315950</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_left">WLA-311</td></tr>
    <tr><td class="gt_row gt_right">316404</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_left">KM ,TAN BORCHARDT</td></tr>
    <tr><td class="gt_row gt_right">316482</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_left">WXA A SZCZESCIA</td></tr>
  </tbody>
  
  
</table>
</div>

The same happens under SHIPNAME:

<div id="teadevmrjt" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#teadevmrjt .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#teadevmrjt .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#teadevmrjt .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#teadevmrjt .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#teadevmrjt .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#teadevmrjt .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#teadevmrjt .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#teadevmrjt .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#teadevmrjt .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#teadevmrjt .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#teadevmrjt .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#teadevmrjt .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#teadevmrjt .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#teadevmrjt .gt_from_md > :first-child {
  margin-top: 0;
}

#teadevmrjt .gt_from_md > :last-child {
  margin-bottom: 0;
}

#teadevmrjt .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#teadevmrjt .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#teadevmrjt .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#teadevmrjt .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#teadevmrjt .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#teadevmrjt .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#teadevmrjt .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#teadevmrjt .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#teadevmrjt .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#teadevmrjt .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#teadevmrjt .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#teadevmrjt .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#teadevmrjt .gt_left {
  text-align: left;
}

#teadevmrjt .gt_center {
  text-align: center;
}

#teadevmrjt .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#teadevmrjt .gt_font_normal {
  font-weight: normal;
}

#teadevmrjt .gt_font_bold {
  font-weight: bold;
}

#teadevmrjt .gt_font_italic {
  font-style: italic;
}

#teadevmrjt .gt_super {
  font-size: 65%;
}

#teadevmrjt .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">SHIPNAME</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">n</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Select_ID</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">[SAT-AIS]</td>
<td class="gt_row gt_right">19</td>
<td class="gt_row gt_right">2.866114e+14</td></tr>
    <tr><td class="gt_row gt_left">ALANA</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">3.484650e+05</td></tr>
    <tr><td class="gt_row gt_left">AMANDA</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">3.233550e+05</td></tr>
    <tr><td class="gt_row gt_left">ARGO</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">3.653787e+06</td></tr>
    <tr><td class="gt_row gt_left">AURA</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">3.460220e+05</td></tr>
  </tbody>
  
  
</table>
</div>

These inconsistencies were not treated and should be kept on track for
deployment.

1.  Relationship between IS\_PARKED and SPEED hold beyond the speed of 3
    knots. It is safe then to assume that IS\_PARKED can be used to
    filter out cases of vessels that are not in movement.

### Treatments

In order to run into shiny, the data was cleaned based out of the cases:

1.  Removed the cases of vessels in movement `IS_PARKED = 0` leading to
    333.188 observations, a reduction of 90% under the raw data.
2.  Removed 6 cases of vessels that had only one signal despite being in
    movement that would cause issues to the max distance calculation.
3.  Calculated the max distance beforehand, returning to the app only
    the data needed for the dashboard, leading to 2.020 observations. A
    reduction of 99% under the silver data (Parked data)
