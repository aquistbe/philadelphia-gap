# The Philadelphia Gap: data appendix

Live page: https://aquistbe.github.io/philadelphia-gap/

This is a single self-contained web page of charts and tables on road-traffic deaths in Philadelphia. It accompanies a September 2026 article in *The Conversation* on Philadelphia traffic fatalities by D. Alex Quistberg (Urban Health Collaborative, Dornsife School of Public Health, Drexel University). The page compares Philadelphia with four dense peer cities (New York, Chicago, Washington, and Boston) and with the 40 largest US cities, and shows Philadelphia's own long-run series.

`index.html` and `philadelphia-gap.html` are identical copies, so both the site root and the direct filename resolve.

## Data sources

- **FARS 2015-2024 microdata**, Fatality Analysis Reporting System, National Highway Traffic Safety Administration (NHTSA). Crashes are assigned to a city when FARS codes them inside that city's incorporated boundary. The 2024 annual file is preliminary.
- **PennDOT Crash Reporting System 2015-2024**, Pennsylvania Department of Transportation. The 2025 Philadelphia figure is provisional PennDOT data and is not directly comparable to the FARS series.
- **American Community Survey 5-year estimates**, US Census Bureau, for resident population denominators. Multi-year windows use person-years.

## Analysis period

The primary comparison window is 2015-2024. Some panels use narrower windows (2020-2024 for victim mode and risk-factor shares, 2022-2024 for city, county, and urban-area rankings, 2021-2024 for micromobility). The Philadelphia long-run series runs 1975-2025, with 2025 provisional.

## Methods

All figures were computed from public data. Rates are deaths per 100,000 resident population per year with exact Poisson 95% confidence intervals on the count. Full methods, caveats, and framing are in the "Methods & caveats" footer of the page, including the limits of municipal boundaries as units of comparison and of resident population as a proxy for exposure.

The page footer refers to a CSV data package of the charted series. That package is not included in this repository.

## Technical notes

The page is a single HTML file. Chart.js 4.4.1 is inlined, all data is inline JavaScript, and the favicon is an inline SVG. The only external request is the Google Fonts stylesheet; the page falls back to system fonts if that request fails. There are no analytics, trackers, or third-party scripts.

## License

The page, its text, and the derived figures are released under the [MIT License](LICENSE). Please attribute to D. Alex Quistberg, Drexel University Urban Health Collaborative, and to FARS/NHTSA and PennDOT as the underlying data sources.

The FARS and PennDOT source data are public records and are not covered by that license.

## Citation

See `CITATION.cff`. Suggested form:

Quistberg, D.A. (2026). *The Philadelphia Gap: data appendix*. Drexel University Urban Health Collaborative. https://aquistbe.github.io/philadelphia-gap/

## Contact

D. Alex Quistberg, PhD, MPH
Urban Health Collaborative, Dornsife School of Public Health, Drexel University
daq26@drexel.edu
