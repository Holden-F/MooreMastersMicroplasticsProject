# Microplastic Pollution Research and US Census Data

Microplastic pollution is a global concern, and using demographic and economic data from the US Census can provide valuable insights into patterns and potential sources of this pollution. 

## Applications of Census Data for Microplastics Research 

Here are a few ways a microplastics researcher could utilize this data:

### Population Density

Areas with high population densities are often associated with higher pollution levels. By overlaying pollution data with population data from the Census, researchers can identify whether there's a correlation between population density and microplastic pollution.

### Socioeconomic Factors

Census data provides detailed information about income, education, and employment in different areas. This information can be used to explore whether microplastic pollution levels are correlated with certain socioeconomic factors. For instance, wealthier areas might have more single-use plastic consumption, leading to more microplastic pollution.

### Industry Presence

The Census provides data on the presence and size of different industries in each area. If certain industries are associated with higher levels of microplastic pollution (e.g., plastic manufacturing or industries that use plastic microbeads), researchers can use this data to identify potential sources of pollution. The Economic Census and the County Business Patterns (CBP) datasets would be particularly useful here. The Economic Census provides comprehensive data about businesses and industries in the U.S., while the CBP provides annual data about businesses at the county level.

### Infrastructure and Services

Census data can also give insights into waste management practices in different areas. This can include the presence and effectiveness of recycling programs, waste disposal sites, and water treatment facilities, which can influence the levels of microplastic pollution. Information about infrastructure and services isn't typically covered in the main Census datasets. However, the American Community Survey (ACS) does provide some information about housing, which could indirectly provide insights into local infrastructure. For more detailed information about local services and infrastructure, researchers might need to look at data from other sources, such as local government databases.

### Land Use

By comparing land use information with microplastic pollution levels, researchers might identify trends related to residential, commercial, and agricultural land use. The Census Bureau does collect data on housing and some aspects of agriculture, which could provide some indirect insights into land use. 

### Transportation

The Census Bureau collects data on commuting patterns. Researchers could examine this data to understand if highways and major roads are a source of microplastics, possibly due to tire wear. The American Community Survey (ACS) collects data on commuting, including modes of transportation and travel time to work. This data could be useful for understanding transportation patterns and potential connections to microplastic pollution.

---

# Census Dataset Summary

### Census Datasets: 
*For each dataset, the first year listed is the default*

| Dataset Code | Description | Census Years |
| --- | --- | --- |
| dec/dhc | Decennial Census: Demographic and Housing Characteristics | 2020 |
| dec/sf1 | Decennial Census: Census Summary File 1 | 2010, 2000 |
| ecnbasic | Economic Census | 2017, 2012, 2007, 2002 |
| pep/population | Population Estimates and Projections | 2021, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2000-2010 Intercensals, 1990-2000 Intercensals |
| acs/acs5 | ACS 5 Year Estimates | 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2009 |
| acs/acs3 | ACS 3 Year Estimates | 2013, 2012 |
| acs/acs1 | ACS 1 Year Estimates | 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011 |
| acs/acs5dp | ACS 5 Year Estimates, Data Profiles | 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2009 |
| acs/acs3dp | ACS 3 Year Estimates, Data Profiles | 2013, 2012 |
| acs/acs1dp | ACS 1 Year Estimates, Data Profiles | 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011 |
| acs/acs5st | 5 Year Estimates, Subject Tables | 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2009 |
| pl | Redistricting Data Summary File | 2020, 2010, 2000 |

Follow the link for the Census Dataset Directory to find the full List of Census Datasets: [Link Here](https://api.census.gov/data.html)

### Primary Census Dataset APIs 

---

**1. Decennial Census of Population and Housing (DCH)**

The most comprehensive dataset available from the Census Bureau. It provides detailed demographic information, including age, sex, race, and household size, for every geographic level, from the entire nation down to individual blocks. [*Learn More Here*](https://www.census.gov/data/developers/data-sets/decennial-census.html)

- API Call: `api.census.gov/data/2020/dec/dhc`
- Example for data that has an assigned key inserted: [`api.census.gov/data/2020/dec/dhc?get=NAME&for=state:*&key=[user key]`](https://api.census.gov/data/2020/dec/dhc?get=NAME&for=state:*)
- 2020 DHC API Variables [[html](https://api.census.gov/data/2020/dec/dhc/variables.html) | [xml](https://api.census.gov/data/2020/dec/dhc/variables.xml) | [json](https://api.census.gov/data/2020/dec/dhc/variables.json)]
- [2020 DHC Technical Documentation](https://www.census.gov/programs-surveys/decennial-census/technical-documentation/complete-technical-documents.html)
- [2020 DHC Examples and Supported Geography](https://api.census.gov/data/2020/dec/dhc.html)

---

**2. Population Estimates Program (PEP)**

These datasets provide updated population estimates and projections each year, which can be useful for understanding recent trends. [*Learn More Here*](https://www.census.gov/data/developers/data-sets/popest-popproj.html)

- API Call: [`api.census.gov/data/2021/pep/population`](https://api.census.gov/data/2021/pep/population)
- Examples and Supported Geographies: [`api.census.gov/data/2021/pep/population.html`](https://api.census.gov/data/2021/pep/population.html)
- Variables: [`api.census.gov/data/2021/pep/population/variables.html`](https://api.census.gov/data/2021/pep/population/variables.html)
- Example Call: [`api.census.gov/data/2021/pep/population?get=DENSITY_2021,POP_2021,NAME,STATE&for=region:*&key=YOUR_KEY`](https://api.census.gov/data/2021/pep/population?get=DENSITY_2021,POP_2021,NAME,STATE&for=region:*)

---

**3. American Community Survey(ACS)**

The American Community Survey (ACS) is an ongoing survey that provides data every year, giving communities the current information they need to plan investments and services. It covers a broad range of topics about social, economic, demographic, and housing characteristics of the U.S. population. Some of the data you might find useful includes income, education level, commute time, and housing characteristics. [*Learn More Here*](https://www.census.gov/data/developers/data-sets/acs-5year.html)

- [American Community Survey 1-Year Data (2005-2021)](https://www.census.gov/data/developers/data-sets/acs-1year.html): Areas with populations of 65,000+. Covers a broad range of topics about social, economic, demographic, and housing characteristics of the U.S. population.
- [American Community Survey 1-Year Supplemental Data (2014 - 2021)](https://www.census.gov/data/developers/data-sets/ACS-supplemental-data.html): High-level detailed tables tabulated on the 1-year microdata for geographies with populations of 20,000 or more.
- [American Community Survey 3-Year Data (2007-2013)](https://www.census.gov/data/developers/data-sets/acs-3year.html): Areas with populations of 20,000+. Covers a broad range of topics about social, economic, demographic, and housing characteristics of the U.S. population.
- [American Community Survey 5-Year Data (2009-2021)](https://www.census.gov/data/developers/data-sets/acs-5year.html): Data available down to the block-group level. Covers a range of topics about social, economic, demographic, and housing characteristics of the U.S. population.
- [American Community Survey Migration Flows](https://www.census.gov/data/developers/data-sets/acs-migration-flows.html): Migration flows between counties, minor civil divisions, and metropolitan areas using ACS 5-year data. Flows are crossed by selected characteristics.
- [Language Statistics: ACS (2013)](https://www.census.gov/data/developers/data-sets/language-stats.html): Counts of speakers for 380 languages/language groups with count in each group speaking English less than “very well.” Geos: counties, CBSAs, states, nation.

---

**4. Census Summary File 1**

The U.S. Census Summary File 1 (SF 1) dataset is a comprehensive collection of population and housing data derived from the decennial census conducted by the U.S. Census Bureau. The Decennial Census API and the Census Summary File 1 (SF1) are related but serve different purposes. The Decennial Census API is a tool for accessing Decennial Census data, while the SF1 is a specific set of data that can be accessed using the API. SF 1 provides detailed demographic information at various geographic levels, including national, state, county, and smaller geographic areas. [*Learn More Here*](https://www.census.gov/data/datasets/2010/dec/summary-file-1.html)

---

**5. Economic Census**

Economic and business data, down to the county level, includes number of establishments, sales and receipts, annual payroll, number of employees and more. [*Learn More Here*](https://www.census.gov/data/developers/data-sets/economic-census.html)

- API Call: [`api.census.gov/data/2017/ecnbasic`](https://api.census.gov/data/2017/ecnbasic)
- Examples and Supported Geographies: [`api.census.gov/data/2017/ecnbasic.html`](https://api.census.gov/data/2017/ecnbasic.html)
- Variables: [`api.census.gov/data/2017/ecnbasic/variables.html`](https://api.census.gov/data/2017/ecnbasic/variables.html)
- Example Call: *NAICS code = 54 - Professional, Scientific, and Technical Services, Number of Employees, United States*
[`api.census.gov/data/2017/ecnbasic?get=NAICS2017_LABEL,EMP,NAME,GEO_ID&for=us:*&NAICS2017=54&key=YOUR_KEY_GOES_HERE`](https://api.census.gov/data/2017/ecnbasic?get=NAICS2017_LABEL,EMP,NAME,GEO_ID&for=us:*&NAICS2017=54)

---

**6. County Business Patterns (CBP)**

This annual series includes the number of establishments, employment during the week of March 12, first quarter payroll, and annual payroll. This data is useful for studying the economic activity of small areas; analyzing economic changes over time; and as a benchmark for other statistical series, surveys, and databases between economic censuses. [*Learn More Here*](https://www.census.gov/data/developers/data-sets/cbp-nonemp-zbp/cbp-api.html)

- API Call: [`api.census.gov/data/2021/cbp`](https://api.census.gov/data/2021/cbp)
- Examples and Geographies: [`api.census.gov/data/2021/cbp.html`](https://api.census.gov/data/2021/cbp.html)
- Variables: [`api.census.gov/data/2021/cbp/variables.html`](https://api.census.gov/data/2021/cbp/variables.html)
- Example Call: Total number of establishments for all legal forms of organization, in California for Accommodation and food services industry.
[`api.census.gov/data/2021/cbp?get=ESTAB,LFO,NAICS2017_LABEL,NAME&for=state:06&NAICS2017=72`](https://api.census.gov/data/2021/cbp?get=ESTAB,LFO,NAICS2017_LABEL,NAME&for=state:06&NAICS2017=72)

---

#### Other Census Dataset APIs To Consider

Health Insurance Statistics - Poverty Statistics  - Annual Business Survey (ABS) - Annual Survey of Entrepreneurs (ASE) - Annual Survey of Manufactures (ASM) - Business Dynamics Statistics (BDS) - ZIP Codes Business Patterns (NBP) -  Nonemployer Statistics (NES) - Commodity Flow Survey (CFS) - Longitudinal Employer-Household Dynamics (LEHD) - Planning Database (PDB) - Public Sector - Census Microdata API - Economic Indicators - Survey of Business Owners (SBO) - International Program - International Trade Program - Geography Program [*Learn More Here*](https://www.census.gov/data/developers/data-sets.html)



