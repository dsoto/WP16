# Working Title

Strategy to estimate post-electrification appliance acquisition and
    demand growth

# Abstract

- in remote areas, electricity provision must be financially viable
    without subsidy
- we explore a method to predict appliance acquisition to provide a
    bottom up model for electricity demand
- we specifically use a survey-based estimate of latent demand
- this method is one of a range of estimates to be corroborated by
    future work
- we use this method in a case study of a region undergoing
    electrification

# Introduction


## Global Topic

- global electricity access is poor
- many areas require private capital to install electricity
- part of problem is upfront investment cost
- due to perceived business risk, upfront capital is costly [@JaramilloReview2015]


## Oversizing

- oversized microgrids based on overestimated demand that cannot meet
    revenue targets contribute to this perception [@USAID2015]
- Schnitzer has shown the consequences of generators with excess
    capacity on microgrid operation [@Schnitzer2014]
- to avoid excess capacity, systems must be sized appropriately
- accurate sizing requires accurate demand estimation
- estimating demand in areas without access is challenging (citation)
- through more accurate appliance estimation, we may achieve more
    accurate energy estimation
- with more accurate energy estimation, a micro-utility can reduce
    the variance in revenue
- reductions in revenue variance should lead to lower-cost capital
    [@JaramilloReview2015]
- we explore methods for bottom up estimation of appliance ownership
    after electrification


## Contribution

- more accurate forecasting of appliance purchases, use, and resulting
    electricity demand can improve financial performance by improving
    the procurement of power generation equipment
- we use surveys of rural households to create a village level forecast
    of appliance acquisition after electrification
- this appliance forecast can be used to create a bottom-up model of
    electricity demand (cite World Bank Policy Research Working Paper 4866)
- in the short term, we do not use a top-down modeling approach as we do not expect the
    availability of electricity to significantly influence income


## Related Work

- other studies have made forecasts of electricity demand in areas with
    low or no access to electricity
- these have used econometric studies of wealth shocks or comparisons of
    villages by socioeconomic means
- Wolfram et al have used an econometric approach to predict the
    appliance acquisition as communities encounter wealth [@Wolfram2012, @Wolfram2015]
- the wolfram study forecasts appliance purchases stimulated by
    increases in wealth [@Wolfram2012, @Wolfram2015]
- Jay Taneja IBM Nairobi paper shows district based approach to village
    pairing strategy [@Taneja2015]
- We augment this pairing strategy with survey-based measurements of desire to buy
- this study forecasts energy demand by comparing similar villages
    before and after a connection to electricity
- this is an energy supply shock rather than an income shock


# Method

## Current Ownership
- Households report if they own a certain appliance
- Households are grouped by electricity access type

## Willingness to Buy
- Households not owning an appliance are asked if they would purchase if
    reliable electricity were available
- This fraction is calculated

## Latent Demand
- From the current ownership levels and the predicted purchase fraction
    we can estimate the appliance ownership after electrification
- This doesn't capture the rate of acquisition, only the level after a
    transition in the absence of economic growth
- This short run forecast is important for microgrid entrepreneurs

## Electricity Forecast
- From assumptions about the appliance characteristics, you can estimate
    the daily electricity use in a stochastic model

## Study Basic Detail

- The survey collected data on electricity use and assets for 1184
    households in the Lake Sentani region
- Electricity access among the surveyed households ranged from grid
    access to village-level access, to only household-level sources of energy
- For the appliance measurements we detail below, we have 417 grid
    surveys, 160 microgrid surveys, and 182 surveys with no
    village-level access
- Of the total households available, the percentage surveyed ranged from
    45% to 75%
- We are especially interested in comparisons between different levels
    of access to energy
- The survey was designed and administered by Advancing Energy and Cenderwash University
    as part of an electrification effort in the Lake Sentani region
- The survey used the ODK platform which allows for the electronic
    collection of data from hand-held tablet devices
- The data was stored online using Ona
- We downloaded the data in an Excel format for local analysis


## Basic Survey Results

- 26 Villages were surveyed
- Range of village sizes from X to Y
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

### Method
- We observe the overall reported percentage of household reporting
    ownership of each appliance using survey questions
- We report for lighting, mobile phones, television, radio,
    refrigerators, fans, and rice cookers
- We then split the dataset and assign each village to an access type
    (grid, microgrid, no central access)
- We observe the reported percentage of appliance ownership in each
    access type by summing the yes/no response and dividing by the
    number of respondents
- We report the number of valid responses in each category

### Results

- We observe a low variation for TV, lighting, and mobile phone
    ownership across access types
- These are highly desirable services with modest energy requirements
- We observe higher variation for rice cookers and refrigerators with
    ownership concentrated in areas with grid connections
- Since these appliances require greater power and energy, we expect
    grid locations
- We observe variation in radio ownership with concentration of
    ownership in off-grid and community run microgrid areas
- No explanation for this observation
- label: appliance-ownership-by-access-type

![Percent Ownership: Plots percentages of households reporting ownership
of each type of appliance based on current electricity access type.
](figures/appliance-ownership-by-access-type.png)


## Surveyed Appliance Desire

### Method
- we provide an estimate of post-electrification appliance ownership
    using the survey responses
- of the households that do not own an appliance, what fraction of them
    state a preference to buy one if electricity is available
- these potential purchases provide one estimate of latent demand

### Results
- Refrigerators show highest proportion of non-owners desiring ownership
- Lighting and TV show very low proportions but this could be a problem
    of survey administration
- label: appliance-demand-by-access-type

![Appliance Desire to Purchase: Plots percentages of homeowners not
currently owning an appliance that state a willingness to buy that
appliance.](figures/appliance-demand-by-access-type.png)


## Post-electrification estimate of appliance ownership

- we create a post-electrification estimate by adding the surveyed
    willingness or desire to purchase and add to the existing level of
    ownership
- this provides one estimate of ownership
- this is probably an overestimate
- we can use this and assumptions about the appliance energy use to
    estimate resulting increase in energy usage


![Post Electrification Ownership Percentages: Plot of expected level of
appliance ownership after electrification using survey responses of
interest in purchasing as a proxy for future
purchase.](figures/post-electrification-ownership.png)

## Bottom up electricity estimation

- using an estimate of post-electrification ownership, we can bound
    estimates of energy and power usage for households and villages
- from the measured proportion of appliance ownership in the reporting
- villages, we can construct a binomial probability distribution for a
    village about to become electrified
- from these probability distributions, we can create a monte carlo
    simulation of appliance ownership.
- each appliance could also have a probability distribution for its energy use
    per day
- these results can create a histogram of trials for the daily
    electricity use
- these can be used to bound the electricity generation supplies needed

![Simulated Daily Energy: Plots results of a Monte Carlo simulation of
the electricity use based on the probability of each household owning an
appliance.](./figures/daily-energy-simulation.png)

# Conclusion

# Acknowledgements

# References
