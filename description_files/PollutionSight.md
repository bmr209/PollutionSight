# PollutionSight
At PollutionSight, our goal is to keep an eye on pollution with a look toward the future. We will analyze air pollution data from the United States from the years 2000 to 2016 to identify and visualize patterns and then create a machine learning model to predict future pollutant levels in specific cities.

## Why analyze pollution?
Outdoor air pollution is one of the biggest environmental problems in the world. Possibly because it is not necessarily a visible concern and the health effects aren't usually immediate, it is an issue that only some countries have begun to take seriously. However, there is increasing evidence that exposure to pollution leads to negative health outcomes. In 2019 alone, outdoor air pollution was one of the leading risk factors for deaths in the United States:

![Deaths by risk factor for the United States in 2019](Resources/Deaths_by_Risk_Factor_2000_2019.png)

Additionally, the cognitive effects of exposure to air pollution are just beginning to be understood and have a significant impact on many aspects of our daily lives. In fact, a **[study from the University of Chicago](https://www.journals.uchicago.edu/doi/full/10.1086/698728)** indicates that even a 1 ppm increase in 3-hour CO makes umpires 11.5% more likely to make an incorrect call. Interestingly, a **[study from the National Bureau of Economic Research](https://www.nber.org/system/files/working_papers/w22753/w22753.pdf)** shows that pollution also negatively affects the stock market. An increase in PM2.5 of one standard deviation in Manhattan leads to a 11.9% decrease in returns on the NYSE. Also, cognitive scores in rooms with approximately 945 ppm and 1400 ppm of CO2 were 15% and 50%, respectively, lower than in green rooms with higher ventilation that had approximately 550 ppm of CO2, according to a **[study from Harvard University](https://dash.harvard.edu/bitstream/handle/1/27662232/4892924.pdf?sequence=1)**. 

## Data
To perform our analysis, we selected a dataset from Kaggle that contains the pollution levels of Nitrogen Dioxide(NO2), Sulphur Dioxide(SO2), Carbon Monoxide(CO) and Ozone(O3) for 2000-2016. Additionally, we compiled AQI levels for 2000-2022 from the United States Evironmental Protection Agency. To see the effect that population has on pollution, we used population data from the United States Census Bureau.

## Questions to Answer
With our analysis, we hope to answer some important questions about pollution trends in the United States:

* What are the pollution levels in several major cities?
* Can we use the pollution data from 2000-2016 to predict pollution levels from 2017-2022?
* What effect did the coronavirus pandemic have on the pollution levels of major cities?
* What effect does population have on pollution?