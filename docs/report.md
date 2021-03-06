# Exploring the Wage Gap: Project Proposal
**Code Name:** Flying Tiger<br />
**Project Title:** Exploring the Wage Gap<br />
**Authors:**<br />
* Ciara Wang - ywangcia@uw.edu<br />
* Tingyu Zheng - tz3104@uw.edu<br />
* Hao Chen - hchen28@uw.edu<br />
* Jiayang Sun - jiayas@uw.edu<br />
* Tieshun Liu - tieshl@uw.edu<br />

**Affiliation:** <br />
INFO-201: Technical Foundations of Informatics - The Information School - University of Washington<br />
**Date:** Feb. 4th, Winter 2022

## Abstract
Our main question is to find out what types of people make the most money, this question is important because we would like to find out whether certain characteristics of people would grant them.<br />

We are concerned about this question because we would like to know whether everyone has the same opportunity.<br />

Therefore, we plan to cross-examine the datasets to locate any possible correlations between social variables and one’s income.<br />

**Keyword:** Pay gap, Socioeconomic status, Gender<br />

## 1.0 Introduction
The main idea of our project is to explore the wage gap situation which exists all over the world. We try to find out the various factors and reasons that form the wage gap. Such as what makes the well-paid people well paid, what situation they are in and what characteristics do they have, or are the lower paid people less capable? Are there any other difficulties causing their lower wage? We choose to examine the difference from variables like gender, ethnicity, region of their work, what they do, education level, and social class. Then we collect data from places like kaggle to set up our analysis. In the end we may be able to categorize different wage levels according to people with different characteristics and make references, and we can know how people can get higher wages constantly no matter when they started and grab the opportunities, instead of accepting the gap between people.<br />

## 2.0 Design Situation
Our main goal for this project is to identify the explicit or implicit reasons that had led to wage inequality, and also to identify the factors that lead to the existence of such inequalities. We have listed out a number of possible factors that could be considered for our projects.<br />

Our project framing follows by categorizing into different sections, for instance, we could have one group of participants who have the same gender(F) and under the same age range(16-35), we compare the dataset to see whether there is a relationship between one’s race and income[^1]. Using the same method, we will try to establish different combinations with certain variables unchanged, until we are able to draw conclusions from the comparisons. We have not yet identified our specific group of audience yet, we would like to collect more data to see which particular sector demonstrates the strongest wage inequality[^2]. The following projects are what we found to be relevant: <br />

For this project, our direct stakeholders would be everyone: who is interested in the job market, who is working/will enter work soon, who is social researchers[^3], and groups who are aware/unaware of the existence of such problems. Through working on this project, we can also provide some insight to firms or organizations which seek insights to improve their policies. The possible benefit for this project is that we could identify where is the pay gap and what caused such pay gap, and hopefully can raise awareness and bring attention to solve the problem; however, the potential harm is that we might not be able to do anything to change the situation even though we could draw a clear and distinct conclusion on the dataset.<br />

[^1]: https://doi.org/10.1016/j.ijproman.2020.09.004
[^2]: https://www.aauw.org/resources/research/simple-truth/
[^3]: https://doi.org/10.1111/soc4.12213


## 3.0 Research Questions
Our project focuses on addressing problems related to wage gap among different people, including several core issues.

**Would one’s race/gender/age affect his/her income? If so, how? If not, why?**

**Would one’s occupation/region/education level/social class affect his/her income? Why/Why not?**

**Would one’s wage level affect their ability to withstand systematic risk (COVID infection rate)**

After a brief analysis of the dataset we have found, we were surprised about how large the wage gaps are for different individuals, which is the reason why we are trying to find out and solve such problems. These issues are widespread and crucial in the world, and different factors, including gender, ethnicity, region of their work would lead to different situations people have. Some people live in great luxury and some work all day to make a living. Through this project, we will try to find out the factors and reasons that form the wage gap through the deep analysis of dataset we have found, and listing different factors which may contribute to issues above, and classify different wage levels based on different situations and characteristics. Eventually, we will find out how those factors lead to wage gaps, and be able to come up with possible solutions. <br />

## 4.0 The Dataset (Finding Data)
**Title links to file, footnote links to source**<br />

**[Glassdoor- Analyze Gender Pay Gap | Kaggle](https://github.com/info-201a-wi22/final-project-starter-ciagzb/blob/main/data/Analyze_Gender_Pay_Gap.csv) [^4]**<br />
9 columns, 879 rows<br />

This dataset demonstrates employees’ job title, education, and salaries. There are 9 variables: job title, gender, age, performance evaluation, education, department, seniority, basic pay and bonus pay. Glassdoor collected these data for showcasing how to analyze these data. Their research team uses the data to write reports and articles. They themselves also have conducted research on the gender pay gap in 2019 which pointed out that the gender pay gap is slightly closing. The dataset is found on kaggle, uploaded by Neelima Jauhari. The validity is unknown.<br />

[^4]: https://www.kaggle.com/nilimajauhari/glassdoor-analyze-gender-pay-gap

**[Gender wage gap](https://github.com/info-201a-wi22/final-project-starter-ciagzb/blob/main/data/Gender_wage_gap.csv)[^5]**<br />
8 columns, 946 rows<br />

This dataset consists of 946 rows and 8 columns. The Organisation for Economic Cooperation and Development (OECD) collected these data. The dataset has average wages, employee compensation by activity, gender wage gap, and wage levels as its indicators. Under the title of each indicator, there is a definition given by OECD to clarify. These data could benefit researchers who focus on the labor market. This dataset is found through the Google Dataset Search. It is a trustworthy source because it specified the organization who conducted the research.<br />

[^5]: https://data.world/oecd/gender-wage-gap/workspace/file?filename=gender_wage_gap.csv

**[Download gender pay gap data](https://github.com/info-201a-wi22/final-project-starter-ciagzb/blob/main/data/UK_Gender_Pay_Gap_Data.csv)[^6]**<br />
27 columns, 1690 rows<br />

The latest 2021-22 dataset consists of 1690 rows and 27 columns. Each row represents a company. The columns include the mean and median hourly pay by gender, percentage of each gender who gets a bonus, and the quartiles of hourly pay of each gender. The UK government required organizations to submit their own report of payroll to help future employees understand the existing (or nonexistent) gender pay gap in the company. The data could serve as a driving force for organizations to close the gender pay gap and also benefit the employees to get their rightful pay. It is a trustworthy source because it is provided by the UK government.<br />

[^6]: https://gender-pay-gap.service.gov.uk/viewing/download

**[Work Hour Prediction Challenge | Kaggle](https://github.com/info-201a-wi22/final-project-starter-ciagzb/blob/main/data/Work_Hour_Prediction_Challenge.csv)[^7]**<br />
15 columns, 8119 rows<br />

This dataset consists of 8119 rows and 15 columns. The columns include variables such as gender, race, education, marital status, working hour per week, and income range. The organization/individual who collected the data is not specified on the website. The purpose of the dataset is to attribute different working hours per week to various factors. The dataset is found on Kaggle, uploaded by Gaurav Dutta. The validity of the dataset is unknown.<br />

[^7]: https://www.kaggle.com/gauravduttakiit/work-hour-prediction-challenge

**[Exploring The Wage Gap | Kaggle](https://github.com/info-201a-wi22/final-project-starter-ciagzb/blob/main/data/Exploring_The_Wage_Gap.csv)[^8]**<br />
9 columns, 558 rows<br />

This dataset consists of 558 rows and 9 columns. The rows are occupations and the columns are different attributes such as number of workers of each gender and median weekly income for each gender. The organization that collected the data is the U.S. Bureau of Labor Statistics, which is a trustworthy source that gives real world data. People could utilize the data to analyze the real wage gap that exists in the US labor market. The dataset is found on Kaggle, uploaded by Jean-Phillipe in 2015.<br />

[^8]: https://www.kaggle.com/drgilermo/exploring-the-wage-gap/data

**What questions above can be answered using the data in the dataset?**<br />
For questions that are related to Age, gender, education, location can be answered. For example, the dataset generated by OECD can be used to answer questions related to income across regions in terms of gender.

## 5.0 Findings
We have cleaned and aggregated the datasets that elaborate on the gender wage gap of OECD countries and gender inequality indices. We found that Asian countries, such as South Korea and Japan, are the countries with the widest wage gap. On the other hand, Scandinavian countries, such as Norway, Sweden and Denmark, are more likely to have the most equal pay, but men still have higher average wages than women. While in most of the countries, men have higher average wages than women, Colombia has a negative wage gap value, which means women in Colombia have an average wage higher than men. 

On top of that, Scandinavian countries tend to have lower gender inequality values (i.e. have higher gender equality) and have narrower wage gaps as well. But this result does not apply to other countries. For example, Colombia has a negative wage gap value, but is the least gender equal country in our data. 

Overall, the gender wage gap is decreasing in the past decade. We can observe this fact from the graph of pay gaps in Norway, Mexico, and the United States from 2005 to 2020. All three countries have a decreasing trend in wage gap, demonstrating the fact that these countries are working to close the gap.<br />

## 6.0 Discussion
It can be seen in the data that the gender wage gap is still a critical issue in our society. Most of the countries are still having problems with paying both genders equally, even though these countries are in an organization that aims to “stimulate economic progress and world trade”. Economic growth cannot reach its fullest without paying attention to the systemic sexism that might impede progress. Our project is to highlight the current issue so that employers around the globe can have a better understanding of what is yet to accomplish.

Our findings suggest that Norway, Sweden, Finland, and Denmark, also known as Scandinavian countries, have generally the narrowest wage, as well as have the most gender equality. Japan, South Korea, and Israel have the largest wage gap, but these countries have relatively low gender inequality indices. Similarly, Colombia has a narrow gender pay gap, but is the country to have the most gender inequality in the dataset, as indicated by the United Nations. This indicates that while a narrow pay gap does align with more gender equality in some countries, it does not guarantee gender equality in all of the countries. We have to inquire into other factors that might cause gender inequality, such as access to education and access to public health facilities. 

Our findings also demonstrate a decreasing trend of gender wage gap in recent years, and it holds true for most of the countries. While some countries might have a rather small improvement, we should be hopeful of the future as more developed and developing countries are joining the trend to reevaluate their systemic sexism in the labor market.

There are still limitations to the results that we have found. The dataset we found is collected by the Organization for Economic Co-operation and Development (OECD), which includes 38 member countries. The problem is that OECD countries are mostly European countries, and a few additional American, Oceanic and Asian countries, which might not be comprehensive to analyze the overall trends in the world. We could have more data Asian and African countries that may experience a whole different pay gap situation than the OECD countries.<br />

## 7.0 Conclusion
We should always be mindful of the hegemonic nature of the data and be critical of the data. Up to this point, gender wage gap is closing but still remains unsolved in most countries. We have to learn that although women can obtain more equal treatment with the decreasing gender wage gap, women still face oppression in other areas.

## Domain of Interest
**Why are we interested?**

* To investigate the relationship between social variables and income.<br />

* We would like to investigate the given datasets to determine whether there is a correlation between the above social variables and one’s income level.<br />

**Relevant Projects:**

* [Exploring the gender wage gap among project managers: A multi-national analysis of human capital and national policies - ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S0263786320300818)<br />

* [The Gender Wage Gap in the United States and Cross Nationally - Misra - 2014 - Sociology Compass - Wiley Online Library](https://onlinelibrary.wiley.com/doi/abs/10.1111/soc4.12213)<br />

* [The Simple Truth About the Gender Pay Gap](https://www.aauw.org/resources/research/simple-truth/)<br />

* [The Gender Wage Gap: Extent, Trends, and Explanations - American Economic Association](https://www.aeaweb.org/articles?id=10.1257%2Fjel.20160995)<br />

* [Data and Code for: Civil Rights Enforcement and the Racial Wage Gap](https://www.openicpsr.org/openicpsr/project/138924/version/V1/view;jsessionid=FD8B385056E3E3CA4F9B0022E72DF3C7)<br />

All of the links have the references in [Reference](https://github.com/info-201a-wi22/final-project-starter-ciagzb/blob/main/docs/p01-proposal.md#references)<br />

**Question related to the field:**<br />
* Would one’s race/gender/age affect his/her income? If so, how? If not, why?<br />

* Would one’s occupation/region/education level/social class affect his/her income? Why/Why not? eg . Would someone who is from NYC, graduated from college, getting the same wage as someone who is from Dallas, graduated from college?<br />

* Would one’s wage level affect their ability to withstand systematic risk (COVID  infection rate)<br />

**How can data answer these questions?**<br />
By categorizing into different sections, for instance, we could have one group of participants who have the same gender (F) and under the same age range(16-35), we compare the dataset to see whether there is a relationship between one’s race and income. Using the same method, we will try to establish different combinations with certain variables unchanged, until we are able to draw conclusions from the comparisons.<br />

## References
Greer, T. W., & Carden, L. L. (2021). Exploring the gender wage gap among project managers: A multi-national analysis of human capital and national policies. _International Journal of Project Management, 39_(1), 21–31. https://doi.org/10.1016/j.ijproman.2020.09.004

Misra, J., & Murray-Close, M. (2014). The Gender Wage Gap in the United States and Cross Nationally. _Sociology Compass, 8_(11), 1281–1295. https://doi.org/10.1111/soc4.12213

‌The Simple Truth About the Gender Pay Gap: AAUW Report. (2021, September 20). Retrieved February 5, 2022, from AAUW : Empowering Women Since 1881 website: https://www.aauw.org/resources/research/simple-truth/

‌Blau, F. D., & Kahn, L. M. (2017). The Gender Wage Gap: Extent, Trends, and Explanations. _Journal of Economic Literature, 55_(3), 789–865. https://doi.org/10.1257/jel.20160995

‌Lopez, J. J., & Cunningham, J. P. (2021). Data and Code for: Civil Rights Enforcement and the Racial Wage Gap. _Openicpsr.org._ https://doi.org/10.3886/E138924V1
