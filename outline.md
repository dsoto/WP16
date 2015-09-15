---
header-includes:
    - \usepackage[top=1.0in, bottom=1.0in, left=1.0in, right=1.0in]{geometry}
---

# Possible Titles
- Multiple estimates of latent demand using survey data
- Appliance acquisition after electricity provision
- Strategies to estimate post-electrification appliance acquisition and
    demand growth

# Abstract

- in remote areas, electricity provision must be financially viable
    without subsidy
- we explore methods to predict appliance acquisition to provide a
    bottom up model for electricity demand
- these methods provide a range of estimates to be corroborated by
    future work


# Introduction


## Global Topic

- global electricity access is poor
- many areas require private capital to install electricity
- part of problem is upfront investment cost
- due to perceived business risk, upfront capital is costly (citation)


## Oversizing

- oversized microgrids based on overestimated demand that cannot meet
    revenue targets contribute to this perception
- Schnitzer has shown the consequences of generators with excess
    capacity on microgrid operation
    - EPP thesis work chapter three
- to avoid excess capacity, systems must be sized appropriately
- accurate sizing requires accurate demand estimation
- estimating demand in areas without access is challenging
- through more accurate appliance estimation, we may achieve more
    accurate energy estimation
- with more accurate energy estimation, a micro-utility can reduce
    the variance in revenue
- reductions in revenue variance should lead to lower-cost capital
- we explore methods for bottom up estimation of appliance ownership
    after electrification


## Contribution

- more accurate forecasting of appliance purchases, use, and resulting
    electricity demand can improve financial performance by improving
    the procurement of power generation equipment
- we use surveys of rural households to create a village level forecast
    of appliance acquisition after electrification
- this appliance forecast can be used to create a bottom-up model of
    electricity demand (cite World Bank Policy Research Working Paper
    4866)
- in the short term, we do not use top-down as we do not expect the
    availability of electricity to significantly influence income


## Related Work

- other studies have made forecasts of electricity demand in areas with
    low or no access to electricity
- Wolfram et al have used an econometric approach to predict the
    appliance acquisition as communities encounter wealth
- the wolfram study forecasts appliance purchases stimulated by
    increases in wealth
- Jay Taneja IBM Nairobi paper shows district based approach to village
    pairing strategy
- We augment this pairing strategy with desire to buy
- this study forecasts energy demand by comparing similar villages
    before and after a connection to electricity



# Method


## Study Basic Detail

- The survey collected data on electricity use and assets for 1184
    households in the Lake Sentani region
- Electricity access among the surveyed households ranged from grid
    access to village-level access, to only household-level sources of energy
- The survey was designed and administered by Advancing Energy and Cenderwash University
    as part of an electrification effort in the Lake Sentani region
- The survey used the ODK platform which allows for the electronic
    collection of data from hand-held tablet devices
- The data was stored online using Ona
- We downloaded the data in an Excel format for local analysis


## Basic Survey Results

- 26 Villages
- Range of village sizes
- Range of percentage of households surveyed per village
- Average households surveyed per village
- Percentage of households surveyed per village
- Percentage of households by access type
- label: summary_table: table with number of villages by access type and number of households


## Survey Questions

- The survey was designed to ask questions relevant to the electricity
    needs of the community
- The survey collects factors on income, assets, appliance ownership,
    willingness to pay, and intention to purchase appliances
- do you currently own appliance X?
- if electricity available, will you buy appliance X?
- we demonstrate several approaches to estimating eventual ownership


## Assumptions and Caveats

- We do not have random sampling
- We do not consider economic effects since we don't observe significant
    income variations in previously connected areas
- Electricity won't significantly influence disposable income
- Households dominate microgrid energy and power demands


## Tools

- details of analysis can be found in the supplementary materials
    section
- we perform analysis using the pandas and seaborn libraries of the
    scientific python ecosystem


# Results


## Appliance ownership variation

- We observe the overall reported percentage of household reporting
    ownership of each appliance (fig or table)
- We then split the dataset and assign each village to an access type
    (grid, microgrid, no central access)
- We observe the reported percentage of appliance ownership in each access type
- We expect to find devices that require more energy only in grid
    locations
- We don't expect to find high energy use appliances in areas without
    central access
- We observe a low variation for TV, lighting, and mobile phone
    ownership across access types
- We observe higher variation for rice cookers and refrigerators with
    ownership concentrated in areas with grid connections
- We observe variation in radio ownership with concentration of
    ownership in off-grid and community run microgrid areas
- We express the effect of area as log odds ratio
- The difference in ownership between electrified and unelectrified
    villages gives an indication of the latent demand for these
    appliances
- bar chart
- include number of observations as part of x-axis label?
- label: appliance_ownership_by_access_type

![Percent Ownership](figures/percent-ownership.png)

<!-- mattrosi/2015&#45;08&#45;26&#45;App&#45;Own&#45;Grid_Type.ipynb -->


## Surveyed Appliance Desire

- we provide an estimate of post-electrification appliance ownership
    using the survey responses
- for low electricity-access areas, add the population currently
    owning a given appliance to the population that doesn't currently
    own one but claims that they will buy
- This should be relatively constant over access types but our data do
    not show that
- surveyed appliance desire provides a larger estimate for eventual
    ownership than comparison with electrified villages
- Show bar chart with numbers
- label: appliance_desire_to_buy_by_access_type

![Predicted Ownership](figures/projected-ownership.png)


## Electrified estimate of appliance ownership

- Here we attempt to match villages on more aspects than access type
- we also estimate ownership by measuring the ownership of appliances in
    a similar but previously connected village
- we assume that newly connected villages will eventually resemble
    previously electrified villages
- approach two: match villages by other characteristics and find the
    levels of appliance ownership in the connected villages most like
    the unconnected villages.  (we focus on high consumption
    appliances.)  this requires a set of matching criteria.  first
    strategy is to find factors that reduce the variance in ownership
    stats
- Based on the stated desire of survey responses, we can estimate the
    eventual number of appliance owners by appliance category
- estimate increased appliance purchases
- estimate resulting increase in energy usage
- compare results from approaches


## Comparison of preferences and matched villages

- we can compare these two approaches
- show differences in percentage forecast by access type
- side by side box or violin plot with dots
- The stated desire to buy provides a higher estimate than the
    previously electrified villages
- x-axis access type
- color forecast method
- y-axis percentage ownership after electrification
- label: appliance_ownership_desire_comparison


## Bottom up estimation ranges

- using these approaches, we can bound estimates of energy and power
    usage for households and villages
- we can also create a time series estimate of electricity usage for a
    village


## Probability distributions

- approach three: create probability distributions by treating as an
    ensemble of bernoulli probabilities.  you can then create a
    distribution of energy consumptions.
- this allows us to move beyond a point estimate
- Quantify levels of generator usage observed in no access regions
- TV and lighting above X% in all areas with little variation
- television ownership observed in locations without electricity
    - plot of TV ownership overall, and by access type
    - AE 1.01.10 is related
- Stated preferences for appliance purchases do not match current
    ownership levels in grid regions
- These provide some point estimates of eventual ownership levels


# Future Work
- Understanding the amount of shared generation
- Understanding how TV is powered and the cost of that
- What is the least cost temporal provision of assets for these
    locations?  We borrow from the current utility planning literature.
- Using measured microgrid data to test estimates


# TODO
- polish outline in Method section
- add table summary_table
- decide on keeping probability distribution section
- borrow compilation mechanism from GHTC paper
- notebooks should be in markdown format for better archiving?
- match villages on more than access type for latent comparison?
