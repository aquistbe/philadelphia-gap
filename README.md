# The Philadelphia Gap — data appendix

Interactive data appendix to an article in *The Conversation* on Philadelphia's
traffic fatality rate relative to four dense peer cities.

**Live page:** https://aquistbe.github.io/philadelphia-gap/

Prepared by D. Alex Quistberg, PhD, MPH — Associate Research Professor and
Department Chair, Urban Health Collaborative, Drexel University Dornsife School
of Public Health.

## What this is

A single self-contained HTML page with nine sections:

| Section | Question it answers |
|---|---|
| The peer gap | How Philadelphia's death rate has moved against New York, Chicago, Washington and Boston, 2010–2024 |
| Thirtieth of forty, first among peers | Where Philadelphia ranks among the 40 largest US cities, 2022–2024 |
| Everyone is exposed | Death rates by victim mode (pedestrian, vehicle occupant, motorcyclist, cyclist, other) |
| The signature | Speeding, hit-and-run, alcohol, darkness and arterial roads — 2015–19 vs 2020–24, five cities |
| Two boulevards | Roosevelt Boulevard and Broad Street as shares of citywide deaths, 2015–2024 |
| Where, before and after | Neighborhood map of fatal crash locations, 2015–19 vs 2020–24 |
| Who bears it | Death rates by census-tract income quartile |
| Half a century | Philadelphia traffic deaths, 1975–2025 |
| Methods & caveats | City assignment, denominators, intervals, provisional data, framing |

The page has no build step and no dependencies to install. Chart.js 4.4.1 is
inlined, all data is inline JavaScript, and the favicon is an inline SVG data
URI. The only external request it makes is a Google Fonts stylesheet; the page
renders correctly with that request blocked.

## Data sources

| Source | Use |
|---|---|
| NHTSA Fatality Analysis Reporting System (FARS), annual files 2010–2024 | All cross-city death counts, victim modes, and crash-circumstance flags. https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars |
| PennDOT Crash Reporting System, 2015–2025 | Philadelphia crash locations for the neighborhood map, the income-quartile analysis, the corridor series, and the provisional 2025 figure |
| US Census Bureau population estimates | Rate denominators for cities, by mid-point year of each window |
| ACS 5-year estimates, 2020–2024 | Census-tract median household income for the equity quartiles |
| Philadelphia, New York, Chicago, Washington and Boston open data portals | The municipal-feed counts, shown only to demonstrate that they are not cross-comparable |

The FARS 2024 annual file is preliminary and is revised upward in most years as
late cases are adjudicated. The 2025 Philadelphia figure (~100) is provisional
PennDOT data from a different collection system and is not FARS-comparable.

## Data files

Every series charted on the page is in `data/` as tidy CSV. Column definitions
match the criterion line printed above each chart.

| File | Rows | Contents |
|---|---|---|
| `city_year_deaths_rates_2010_2024.csv` | 75 | Deaths and rate per 100,000 residents per year, five cities, 2010–2024, with 95% Poisson intervals |
| `ranking_40_largest_cities_2022_2024.csv` | 40 | Pooled 2022–24 rate and rank for the 40 largest US cities |
| `victim_mode_5cities_2020_2024.csv` | 24 | Rate and deaths by victim mode, five cities, pooled 2020–24 |
| `risk_factor_shares_5cities_2020_2024.csv` | 5 | Share of each city's deaths carrying each crash-circumstance flag, 2020–24 |
| `risk_factor_shares_5cities_2period.csv` | 50 | The same five flags for 2015–19 and 2020–24, with the period difference, its 95% interval, and a significance indicator |
| `philadelphia_corridor_deaths_2015_2024.csv` | 20 | Roosevelt Boulevard and Broad Street deaths and share of citywide deaths, by year |
| `equity_income_quartiles_5cities.csv` | 5 | Q1/Q4 rates and rate ratios by period, five cities |
| `philadelphia_equity_quartile_detail.csv` | 4 | Philadelphia deaths and residents by tract-income quartile, both periods, with and without deaths reassigned from unpopulated tracts |
| `philadelphia_deaths_1975_2025.csv` | 39 | Annual Philadelphia traffic deaths, 1975–2025 |
| `municipal_feeds_2023_2025.csv` | 9 | City dashboard counts — not cross-comparable, included to make that concrete |
| `philadelphia_neighborhood_deaths_2015_2025.csv` | 159 | Deaths by neighborhood for 2015–19, 2020–24 and provisional 2025, with population, median household income, and poorest-quartile flag |

These files were extracted from the published page, so they reproduce exactly
what is charted.

### Known reconciliation notes

- The two-period flag panel uses 485 Philadelphia deaths for 2015–19; the
  city-year series sums to 486 for the same window. One case differs between
  the two extracts.
- The neighborhood table sums to 481 deaths (2015–19) and 709 (2020–24) against
  totals of 483 and 714. The remainder are crashes that fall outside any
  neighborhood polygon.
- The income-quartile table sums to 472 and 686 on the full numerator. Tracts
  with no reported median household income carry no quartile and are excluded.
- The poorest-quartile cutoff is a tract median household income of $43,529.
- 234 deaths occurred on roads in tracts with no resident population (parkways,
  industrial and airport arterials, the stadium district). The `_full` columns
  assign each to the nearest populated tract, measured from the crash point;
  the `_excl` columns drop them.

## Reuse

The page, text and figures are licensed CC BY 4.0 — see `LICENSE`. Attribution
should name FARS/NHTSA and PennDOT as the underlying data sources.

The FARS and PennDOT source data are US and Pennsylvania public records and are
not subject to this license.

## Citation

DOI: [10.5281/zenodo.23890095](https://doi.org/10.5281/zenodo.23890095) (all versions; archived on Zenodo)

See `CITATION.cff`.

## Contact

D. Alex Quistberg — daq26@drexel.edu
Urban Health Collaborative, Drexel University Dornsife School of Public Health
