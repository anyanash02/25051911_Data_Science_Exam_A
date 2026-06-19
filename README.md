# Data Science Part A Practical Exam

**Author:** Anya Nash  
**Student number:** 25051911  
**Date:** 19 June 2026

------------------------------------------------------------------------

## Purpose and Structure

The purpose of this README document is to explain my reasoning and
process for answering each question (and sub question) in the Data
Science 871 Part A Practical Exam. The raw data from the
‘PracData26Folder’ is stored in the Project’s main data folder, while
any intermediary, cleaned or question-specific sub sample data is stored
in each question’s data folder. General code is stored in the Project’s
main code folder and any question-specific code is stored in each
question’s code folder. The relevant output for each question, such as
PowerPoints, pdfs, etc. is stored in each question’s folder.

### Getting Started

I used the following code to create my project and folder structures:

## Question 1: Coffee Hub

I used an R Markdown file to create my PowerPoint presentation. I
struggled a bit initially with the formatting, but AI helped me with
some of the finer syntax details.

    ## # A tibble: 6 × 13
    ##   name          roaster roast loc_country origin_1 origin_2 Cost_Per_100g Rating
    ##   <chr>         <chr>   <chr> <chr>       <chr>    <chr>            <dbl>  <dbl>
    ## 1 “Sweety” Esp… A.R.C.  Medi… Hong Kong   Panama   Ethiopia         14.3      95
    ## 2 Flora Blend … A.R.C.  Medi… Hong Kong   Africa   Asia Pa…          9.05     94
    ## 3 Ethiopia Sha… Revel … Medi… United Sta… Guji Zo… Souther…          4.7      92
    ## 4 Ethiopia Suk… Roast … Medi… United Sta… Guji Zo… Oromia …          4.19     92
    ## 5 Ethiopia Ged… Big Cr… Medi… United Sta… Gedeb D… Gedeo Z…          4.85     94
    ## 6 Ethiopia Kay… Red Ro… Light United Sta… Odo Sha… Guji Zo…          5.14     93
    ## # ℹ 5 more variables: review_date <chr>, desc_1 <chr>, desc_2 <chr>,
    ## #   desc_3 <chr>, Value_Score <dbl>

### Summary Statistics

I start with reporting some summary statistics:

-   Average cost per 100g by roast type
-   Average rating by roast type
-   Average cost per 100g by country
-   Average rating by country
-   Number of roasters by roast type
-   Cost and rating of coffee roasts

#### Average Cost Per 100g by Roast Type

<img src="README_files/figure-markdown_github/unnamed-chunk-3-1.png" alt="" width="100%" />

#### Average Rating by Roast Type

<img src="README_files/figure-markdown_github/unnamed-chunk-4-1.png" alt="" width="100%" />

#### Average Cost Per 100g by Country

<img src="README_files/figure-markdown_github/unnamed-chunk-5-1.png" alt="" width="100%" />

#### Average Rating by Country

<img src="README_files/figure-markdown_github/unnamed-chunk-6-1.png" alt="" width="100%" />

#### Number of Roasters by Roast Type

It took SO many trials and errors to eventually get the layout somewhat
acceptable for a slide (then I had some fun with the colours).

| Roast        | No. of Roasters |
|:-------------|:---------------:|
| Medium-Light |       327       |
| Medium       |       136       |
| Light        |       119       |
| Medium-Dark  |       27        |
| Dark         |        3        |

Number of roasters per roast type

#### Cost and Rating of Coffee Roasts

I thought this scatter plot would be more informative than it actually
is, but it showed some interesting information regaarding the range/
spread of rating and cost.

<img src="README_files/figure-markdown_github/unnamed-chunk-8-1.png" alt="" width="100%" />

### Identifying the best coffee

Again, it took a while to eventually get the tables to fit on the slides
(and I still never managed to get them to centre properly on the
slides).

I then start identifying the best coffees using various methods. There
are a number of different ways that I can approach this:

1.  Cheapest coffee available
2.  Highest ranking coffee available
3.  Best price-ranking combination (best value)
4.  Best price-ranking (value) combination of three different types of
    roasts
5.  Best price-ranking (value) combination of three different types of
    roasts, where all the roasts are from the same country (in case
    there are advantages to getting all three roasts from the same
    country - import/ bulk ordering benefits??)

#### Cheapest Roast by Roast Type

| Roast | Cost | Rating | Value | Name | Roaster |
|:-----------|----:|------:|------:|:-----------------------|:------------------|
| Dark | 2.93 | 84 | 28.67 | Pike’s Place Blend | Starbucks Coffee |
| Light | 3.39 | 95 | 28.02 | Panama La Mula Geisha Washed | GK Coffee |
| Medium | 1.13 | 92 | 81.42 | Espresso Blend | Ba Yang Coffee |
| Medium-Dark | 0.99 | 87 | 87.88 | 100% Guatemalan | Hill’s Bros. Coffee |
| Medium-Light | 0.17 | 94 | 552.94 | Karen J Kona Red Bourbon | Hula Daddy Kona Coffee |

Cheapest coffee option by roast type

#### Highest Rated Roast by Roast Type

| Roast | Cost | Rating | Value | Name | Roaster |
|:---------|----:|-----:|----:|:----------------------|:-----------------------|
| Dark | 8.50 | 94 | 11.06 | Indonesia Sumatra Gayo Espresso | Simon Hsieh’s Aroma Roast Coffees |
| Light | 16.15 | 97 | 6.01 | Testi Ayla Double Ethiopia | Barrington Coffee Roasting |
| Medium | 19.82 | 96 | 4.84 | Kona Mocca® | Hula Daddy Kona Coffee |
| Medium-Dark | 7.79 | 96 | 12.32 | Bull Demon King | Simon Hsieh Aroma Roast Coffees |
| Medium-Light | 28.27 | 98 | 3.47 | GW01 Finca Sophia Olympus Geisha | GK Coffee |

Highest-rated coffee option by roast type

#### Best Valued Roast by Roast Type

| Roast | Cost | Rating | Value | Name | Roaster |
|:-----------|----:|------:|------:|:-----------------------|:------------------|
| Dark | 2.93 | 84 | 28.67 | Pike’s Place Blend | Starbucks Coffee |
| Light | 3.39 | 95 | 28.02 | Panama La Mula Geisha Washed | GK Coffee |
| Medium | 1.13 | 92 | 81.42 | Espresso Blend | Ba Yang Coffee |
| Medium-Dark | 0.99 | 87 | 87.88 | 100% Guatemalan | Hill’s Bros. Coffee |
| Medium-Light | 0.17 | 94 | 552.94 | Karen J Kona Red Bourbon | Hula Daddy Kona Coffee |

Best-value coffee option by roast type

#### Best Valued Combination for Each Three-Roast Combination

| Roast_Combo | Avg_Value | Coffee_1 | Coffee_2 | Coffee_3 |
|:--------|-------:|:-------------------|:-------------------|:----------------|
| M + MD + ML | 240.75 | Espresso Blend | 100% Guatemalan | Karen J Kona Red Bourbon |
| D + MD + ML | 223.16 | Pike’s Place Blend | 100% Guatemalan | Karen J Kona Red Bourbon |
| L + MD + ML | 222.95 | Panama La Mula Geisha Washed | 100% Guatemalan | Karen J Kona Red Bourbon |
| D + M + ML | 221.01 | Pike’s Place Blend | Espresso Blend | Karen J Kona Red Bourbon |
| L + M + ML | 220.79 | Panama La Mula Geisha Washed | Espresso Blend | Karen J Kona Red Bourbon |
| D + L + ML | 203.21 | Pike’s Place Blend | Panama La Mula Geisha Washed | Karen J Kona Red Bourbon |
| D + M + MD | 65.99 | Pike’s Place Blend | Espresso Blend | 100% Guatemalan |
| L + M + MD | 65.77 | Panama La Mula Geisha Washed | Espresso Blend | 100% Guatemalan |
| D + L + MD | 48.19 | Pike’s Place Blend | Panama La Mula Geisha Washed | 100% Guatemalan |
| D + L + M | 46.04 | Pike’s Place Blend | Panama La Mula Geisha Washed | Espresso Blend |

Recommended three-roast coffee combinations

#### Best Valued Combination for Each Same-Country Three-Roast Combination

| Roast_Combo | Country | Avg_Value | Coffee_1 | Coffee_2 | Coffee_3 |
|:------|:-------|-----:|:----------------|:--------------|:-------------------|
| L + M + ML | Hawai’i | 197.04 | Ethiopia Yirgacheffe G1 | Medium-Dark Roast | Karen J Kona Red Bourbon |
| L + MD + ML | Hawai’i | 195.66 | Ethiopia Yirgacheffe G1 | CBD Coffee Dark Roast | Karen J Kona Red Bourbon |
| M + MD + ML | Hawai’i | 190.78 | Medium-Dark Roast | CBD Coffee Dark Roast | Karen J Kona Red Bourbon |
| D + M + MD | United States | 58.54 | Pike’s Place Blend | Colombia | 100% Guatemalan |
| L + M + MD | United States | 56.92 | Look for the Helpers | Colombia | 100% Guatemalan |
| D + M + ML | Taiwan | 54.11 | Indonesia Sumatra Gayo Espresso | Espresso Blend | Taiwan Natural Alishan Zhuo-Wu Geisha |
| D + MD + ML | United States | 48.39 | Pike’s Place Blend | 100% Guatemalan | Elida Natural ASD (Panama) |
| D + L + MD | United States | 46.79 | Pike’s Place Blend | Look for the Helpers | 100% Guatemalan |
| D + L + M | Taiwan | 40.17 | Indonesia Sumatra Gayo Espresso | Panama La Mula Geisha Washed | Espresso Blend |
| D + L + ML | Taiwan | 36.31 | Indonesia Sumatra Gayo Espresso | Panama La Mula Geisha Washed | Taiwan Natural Alishan Zhuo-Wu Geisha |

Recommended three-roast coffee combination from the same country

### Recommendations

Lastly, I finish with my recommendations based on my findings:

-   Recommendation 1: if just one type of coffee is to be stocked, I
    would recommend this coffee:

    -   Medium-Light roast: Karen J Kona Red Bourbon, roasted by Hula
        Daddy Kona Coffee
    -   It has the best value for money
    -   It is both inexpensive and highly rated

-   Recommendation 2: if the goal is to supply a range of coffee roasts,
    I would recommend the following combination:

    -   A medium roast: Espresso Blend
    -   A medium-dark roast: 100% Guatemalan
    -   And a medium-light roast: Karen J Kona Red Bourbon

-   Recommendation 3: if the goal is to supply a range of coffee roasts
    and there is an advantage from importing them all from the same
    country, I would recommend the following roasts from Hawai’i:

    -   Light roast: Ethiopia Yirgacheffe G1
    -   Medium roast: Medium-Dark Roast
    -   And medium-light roast: Karen J Kona Red Bourbon

I used a plot to create slide headings/ sections in my slide show

<img src="README_files/figure-markdown_github/unnamed-chunk-14-1.png" alt="" width="100%" />

## Question 2: Baby Names

I first start by loading the data and the functions required for this
question.

### Spearman Correlation

After researching some additional context and meaning of the Spearman
Correlation, I calculate it between each year’s 25 most popular boys’
and girls’ names and that of the next 3 years. I plot it as 3 line
graphs, plotted separately for male names and female names.

#### Preparing the data and calculating the Spearman Correlation

#### Plotting the Spearman Correlation for female names

<img src="README_files/figure-markdown_github/unnamed-chunk-18-1.png" alt="" width="100%" />

The graph shows that the top 25 female names are very persistent for the
time period analysed. For most of the years, the Spearman rank
correlation is between 0.8 and 1, except for between 1960 and 1970,
around 1985 and around 2005. Therefore, if a female name is in the top
25, then there is a very high probability that it will be in the top 25
in the following year as well as the year after that. According to this
graph, it appears that female names are no more or less likely to
persist since the 1990s compared to earlier years; the pattern does not
appear to change significantly from the 1990s.

#### Plotting the Spearman Correlation for male names

<img src="README_files/figure-markdown_github/unnamed-chunk-19-1.png" alt="" width="100%" />

The graph shows that the top 25 male names are very persistent for the
time period analysed. Before 1965, the Spearman rank correlation remains
between 0.85 and 1, however, the range significantly increases and the
consistency decreases after 1965. This indicates that male names were
initially quite persistent, but that persistence has decreased
significantly since 1965. Therefore, the probability of a male name
remaining in the top 25 male names began very high, but in more recent
years, that probability has become smaller. From this graph, it appears
that male names are less persistent since the 1990s than prior to that -
popular names have become a bit slower to persist since the 1990s.

### Spearman Correlation by Decade

I now do the same thing as above, but this time calculate the Spearman
correlation for popular names by decade.

#### Spearman Correlation by Decade for Female Names

<img src="README_files/figure-markdown_github/unnamed-chunk-21-1.png" alt="" width="100%" />

The same trends are apparent when looking at popular female names by
decade - according to this graph, it appears that female names are no
more or less likely to persist since the 1990s compared to earlier
years; the pattern does not appear to change significantly from the
1990s.

#### Spearman Correlation by Decade for Male Names

<img src="README_files/figure-markdown_github/unnamed-chunk-22-1.png" alt="" width="100%" />

Once again, this graph shows similar trends to the yearly popular make
names graph above. From this graph, it appears that male names are less
persistent since the 1990s than prior to that - popular names have
become a bit slower to persist since the 1990s.

### Name Surges

I created a table showing the top 10 female names and top 10 male names
that had the largest year-to-year percentage rank improvement. I limited
the ranking to names that had more than 100 counts in the previous
period, so that large increases in relatively unpopular names are not
captured.

| Year | Gender | Name | Previous count | Current count | Change in count | % change in count | Previous rank | Current rank | Rank improvement |
|:---|:----|:------|:-------|:-------|:--------|:---------|:-------|:-------|:--------|
| 1976 | F | Jaime | 897 | 7836 | 6939 | 773.6 | 262 | 29 | 803.4483 |
| 1989 | F | Kiara | 171 | 2595 | 2424 | 1417.5 | 832 | 115 | 623.4783 |
| 2002 | F | Ashanti | 253 | 2927 | 2674 | 1056.9 | 784 | 115 | 581.7391 |
| 1957 | F | Tammy | 204 | 4363 | 4159 | 2038.7 | 602 | 107 | 462.6168 |
| 1979 | F | Brianne | 133 | 1655 | 1522 | 1144.4 | 813 | 168 | 383.9286 |
| 1995 | F | Alondra | 111 | 1149 | 1038 | 935.1 | 1121 | 242 | 363.2231 |
| 2007 | F | Miley | 141 | 1213 | 1072 | 760.3 | 1249 | 277 | 350.9025 |
| 1966 | F | Michelle | 16215 | 27152 | 10937 | 67.4 | 18 | 4 | 350.0000 |
| 1991 | F | Iesha | 253 | 1875 | 1622 | 641.1 | 703 | 157 | 347.7707 |
| 1982 | F | Kayla | 266 | 2268 | 2002 | 752.6 | 583 | 132 | 341.6667 |
| 2011 | M | Mason | 14831 | 19488 | 4657 | 31.4 | 12 | 2 | 500.0000 |
| 2013 | M | Jayceon | 128 | 1827 | 1699 | 1327.3 | 1059 | 208 | 409.1346 |
| 2010 | M | Bentley | 497 | 3762 | 3265 | 656.9 | 505 | 100 | 405.0000 |
| 1998 | M | Dawson | 141 | 1883 | 1742 | 1235.5 | 779 | 175 | 345.1429 |
| 2013 | M | Noah | 17302 | 18179 | 877 | 5.1 | 4 | 1 | 300.0000 |
| 1995 | M | Tristan | 441 | 3085 | 2644 | 599.5 | 454 | 121 | 275.2066 |
| 2013 | M | Jase | 1100 | 4539 | 3439 | 312.6 | 304 | 89 | 241.5730 |
| 2002 | M | Ethan | 17959 | 22105 | 4146 | 23.1 | 17 | 5 | 240.0000 |
| 1995 | M | Bailey | 112 | 990 | 878 | 783.9 | 853 | 273 | 212.4542 |
| 1972 | M | Christopher | 48251 | 52195 | 3944 | 8.2 | 6 | 2 | 200.0000 |

Top 10 year-on-year name surges by gender

#### Names Surge and TV Shows/ Movies

First, I merged the HBO_titles dataset with the HBO_credits dataset. I
then matched the character names to the national baby name dataset I
created earlier. I then plotted, of the top 25 male and female names,
the names that were also names of TV show or movie characters in a
bubble plot. In the bubble plot, the size of the bubbles represent the
number of babies with a particular name, while the size of the stars
indicate the tmdb popularity score of the TV show/ movie. The plots are
separate by gender and show the persistence and popularity of names, and
how said persistence and popularity interacts with TV show/ movie
character names.

##### Male Names

The plot below shows how the popularity and persistence of male names
interacts with character names of TV show or movie characters. The male
names chosen are the 20 male names that experienced the largest
percentage rank improvement. These names were then merged with character
names.

<img src="README_files/figure-markdown_github/unnamed-chunk-28-1.png" alt="" width="100%" />

As seen from the plot above, there is not a clear pattern between the
popularity or persistence of names and character names from TV shows/
movies for these particular male names. However, it is interesting to
observe how these variables develop and interact over time. Also, for
most of these names, their popularity has been increasing over time.
This makes them an excellent choice for a toy company, because their
popularity is increasing, and increasing regardless of popular character
names. It is clear that some names are classics - Christopher, Michael
and Ryan remain persistently popular, regardless of whether TV show or
movie characters have these names. These names are also the names of
characters in many TV shows/ movies. Therefore, for a toy company, these
names are good to take note of, because they are unlikely to change
significantly in popularity over time, meaning they are a lower-risk
investment.

##### Female Names

The plot below shows how the popularity and persistence of female names
interacts with character names of TV show or movie characters. The
female names chosen are the 20 female names that experienced the largest
percentage rank improvement. These names were then merged with character
names.

<img src="README_files/figure-markdown_github/unnamed-chunk-29-1.png" alt="" width="100%" />

As seen from the plot above, there is not a clear pattern between the
popularity or persistence of names and character names from TV shows/
movies for these particular female names. However, it is interesting to
observe how these variables develop and interact over time. It is clear
that some names are classics - Michelle, Kayla, Ashley, Jenna and Jamie
remain persistently popular, regardless of whether TV show or movie
characters have these names. Therefore, for a toy company, these names
are good to take note of, because they are unlikely to change
significantly in popularity over time, meaning they are a lower-risk
investment.

## Question 3: Loans and Credit

Assist in understanding predictors of loan defaults and efficacy of
Lending Club’s customer grading system which used to predict whether
client would likely default on loans or not.

I first start by loading the data and the functions required for this
question.

### Cleaning data and defining who counts as default

Current and Fully Paid are treated as non-defaulter Charged off/
default/ late (31-120 days) treated as defaulters

### Default Profile Summary Statistics

#### Default Rate by Grade

<img src="README_files/figure-markdown_github/unnamed-chunk-32-1.png" alt="" width="100%" />

It is clear from the graph that as credit grade goes from A to G, the
default rate increases exponentially. Therefore, grade is highly
associated with the default rate (although that is how it is designed).

#### Default Rate by Term of Loan

<img src="README_files/figure-markdown_github/unnamed-chunk-33-1.png" alt="" width="100%" />

There is a small difference in the default rate based on the length of
the loan, with the longer loan having a slightly higher default rate.

#### Default Rate by Length of Employment

<img src="README_files/figure-markdown_github/unnamed-chunk-34-1.png" alt="" width="100%" />

There is not a substantial difference in the default rate based on the
length of employment, except for those who have n/a for length of
employment - they have a much higher default rate. This is logical,
because those who answered n/a to length of employment are most likely
not working/ unemployed. Thus, they probably have a less stable income,
which would make their default rate higher.

#### Default Rate by State

<img src="README_files/figure-markdown_github/unnamed-chunk-35-1.png" alt="" width="100%" />

There is no obvious outlier in the default rate based on US state,
however, the difference in default rate between the state with the
highest default rate (Alabama) and the state with the lowest default
rate (West Virginia) is substantial. Texas has a default rate on the
higher side, however, it is not obviously different from any of the
other states.

#### Default Rate by State for Short Term Loans

<img src="README_files/figure-markdown_github/unnamed-chunk-36-1.png" alt="" width="100%" />

There is no obvious outlier in the default rate based on US state for
short term loans, however, the difference in default rate between the
state with the highest default rate (Alabama) and the state with the
lowest default rate (West Virginia) is substantial. Texas has a default
rate on the higher side, however, it is not obviously different from any
of the other states.

#### Default Rate by DTI Band

<img src="README_files/figure-markdown_github/unnamed-chunk-37-1.png" alt="" width="100%" />

The default rate for different bands of the debt-to-income ratio follows
an expected pattern. The default rate is lower for a lower
debt-to-income ratio, and the default rate is higher for a higher
debt-to-income ratio.

#### Default Rate by Purpose of Loan

<img src="README_files/figure-markdown_github/unnamed-chunk-38-1.png" alt="" width="100%" />

The default rate differs a bit based on the purpose of the loan. Loans
for paying off credit cards or buying cars have the lowest default rate,
while loans for weddings and small businesses have the highest default
rate. It is logical that loans for small businesses have the highest
default rate, since small businesses often carry a higher investment
risk, and have unpredictable profits (and often low/ no initial
profits).

### Default Rate, Credit Grades and Young Individuals

Unfortunately, there is no age variable in the data. Therefore, as a
very rough, imperfect proxy for age, I use length of employment. I
classify young individuals as those with a length of employment of 5
years or less. Then, to determine whether credit grades are a good
indicator for whether younger individuals will default on their loans, I
regress the default rate on credit grade, restricting the sample to
younger individuals only. The table below shows the results of the
regression.

    ## 
    ## Call:
    ## lm(formula = default ~ factor(grade), data = .)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.41484 -0.12065 -0.07112 -0.02362  0.97638 
    ## 
    ## Coefficients:
    ##                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)    0.023615   0.000980   24.10   <2e-16 ***
    ## factor(grade)B 0.047500   0.001285   36.97   <2e-16 ***
    ## factor(grade)C 0.097035   0.001296   74.88   <2e-16 ***
    ## factor(grade)D 0.141490   0.001556   90.91   <2e-16 ***
    ## factor(grade)E 0.221019   0.002235   98.89   <2e-16 ***
    ## factor(grade)F 0.331223   0.003942   84.02   <2e-16 ***
    ## factor(grade)G 0.391223   0.007566   51.71   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.2954 on 427348 degrees of freedom
    ## Multiple R-squared:  0.04928,    Adjusted R-squared:  0.04927 
    ## F-statistic:  3692 on 6 and 427348 DF,  p-value: < 2.2e-16

<table class="table" style="color: black; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Regression of default rate on loan grade
</caption>
<thead>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:right;">
Estimate
</th>
<th style="text-align:right;">
Std. Error
</th>
<th style="text-align:right;">
t-statistic
</th>
<th style="text-align:right;">
p-value
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Constant
</td>
<td style="text-align:right;">
0.024
</td>
<td style="text-align:right;">
0.001
</td>
<td style="text-align:right;">
24.097
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
Grade B
</td>
<td style="text-align:right;">
0.048
</td>
<td style="text-align:right;">
0.001
</td>
<td style="text-align:right;">
36.969
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
Grade C
</td>
<td style="text-align:right;">
0.097
</td>
<td style="text-align:right;">
0.001
</td>
<td style="text-align:right;">
74.878
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
Grade D
</td>
<td style="text-align:right;">
0.141
</td>
<td style="text-align:right;">
0.002
</td>
<td style="text-align:right;">
90.907
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
Grade E
</td>
<td style="text-align:right;">
0.221
</td>
<td style="text-align:right;">
0.002
</td>
<td style="text-align:right;">
98.887
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
Grade F
</td>
<td style="text-align:right;">
0.331
</td>
<td style="text-align:right;">
0.004
</td>
<td style="text-align:right;">
84.018
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
Grade G
</td>
<td style="text-align:right;">
0.391
</td>
<td style="text-align:right;">
0.008
</td>
<td style="text-align:right;">
51.708
</td>
<td style="text-align:right;">
0
</td>
</tr>
</tbody>
</table>

As seen in the regression table above, credit grade is a somewhat good
indicator of whether younger individuals will default. This is because
all the coefficients are statistically significant with an
economically-meaningful magnitude, however, the R-squared value is quite
low at 0.04928, meaning there are many other factors that influence the
default rate of young individuals.

### Interest Rates, Age, Occupation and Credit Scores

I created 11 different occupation groups. I used AI to get the initial
key words, then kept going back to the data to look for more to add. It
was a very time consuming process (and I definitely spent way too much
time on it).

Using employment length as an imperfect, rough proxy for age once again
and using very rough occupation categories, I regress interest rate on
employment length, occupation and credit score to determine whether
interest rates are determined by these factors. The results are
displayed below.

    ## OLS estimation, Dep. Var.: int_rate
    ## Observations: 786,940
    ## Fixed-effects: grade: 7,  emp_length: 12,  emp_title_clean: 43,388
    ## RMSE: 1.3155   Adj. R2: 0.926009

With an R-squared value of 0.926009, it is clear that interest rates are
strongly associated with age, occupation and credit scores.

### Risk Profiles

The table below shows the top 10 combinations of credit grade, DTI band,
purpose of loan and type of home ownership that have the highest default
rates.

| Grade | DTI band | Loan purpose | Home ownership | Number of borrowers | Default rate | Median annual income |
|:----:|:-----:|:-----------:|:---------:|:------------:|:--------:|:------------:|
| G | (30,35\] | debt_consolidation | RENT | 202 | 53.5% | $55,500 |
| G | (25,30\] | debt_consolidation | RENT | 159 | 46.5% | $56,000 |
| F | (30,35\] | debt_consolidation | RENT | 597 | 44.7% | $50,119 |
| F | (20,25\] | debt_consolidation | RENT | 716 | 43.7% | $60,000 |
| G | (30,35\] | debt_consolidation | MORTGAGE | 186 | 41.9% | $65,000 |
| F | (25,30\] | debt_consolidation | RENT | 685 | 41.8% | $55,000 |
| G | (20,25\] | debt_consolidation | RENT | 172 | 40.7% | $57,450 |
| F | (35,40\] | debt_consolidation | RENT | 295 | 40.0% | $50,000 |
| G | (15,20\] | debt_consolidation | RENT | 118 | 39.8% | $55,674 |
| F | (15,20\] | debt_consolidation | RENT | 628 | 39.5% | $62,000 |

Top 10 borrower profiles with the highest default rates

From the table above, we can see that the highest defaulters are
individuals with credit grades of either F or G, a DTI that is greater
than 25 and who rent their homes. The median income for each group is
between 50000 and 60000 US dollars.

When lenders assess borrower credibility, they can do a number of things
to reduce default risk. They can identify those borrowers who are part
of the highest default risk combination categories and either reduce the
loan amount to these borrowers, or have additional checks and balances
before approving the loan. Instead of just focusing on one category or
“tick-box” at a time, lenders now have a better, fuller picture of the
default risk of the borrower. A borderline answer for one or two
categories could be viewed as okay when each category is viewed in
isolation, but could paint a much riskier picture when categories are
viewed together.

### DTI Cap

The table below shows how the share of loans accepted and default rate
would change, if there was a DTI cap imposed.

<table class="table" style="color: black; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Default risk under alternative DTI hard caps
</caption>
<thead>
<tr>
<th style="text-align:center;">
DTI cap
</th>
<th style="text-align:center;">
Borrowers accepted
</th>
<th style="text-align:center;">
Share accepted
</th>
<th style="text-align:center;">
Default rate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;">
5
</td>
<td style="text-align:center;">
47688
</td>
<td style="text-align:center;">
5.3%
</td>
<td style="text-align:center;">
7.7%
</td>
</tr>
<tr>
<td style="text-align:center;">
10
</td>
<td style="text-align:center;">
164287
</td>
<td style="text-align:center;">
18.1%
</td>
<td style="text-align:center;">
7.6%
</td>
</tr>
<tr>
<td style="text-align:center;">
15
</td>
<td style="text-align:center;">
341407
</td>
<td style="text-align:center;">
37.7%
</td>
<td style="text-align:center;">
8.0%
</td>
</tr>
<tr>
<td style="text-align:center;">
20
</td>
<td style="text-align:center;">
528833
</td>
<td style="text-align:center;">
58.4%
</td>
<td style="text-align:center;">
8.5%
</td>
</tr>
<tr>
<td style="text-align:center;">
25
</td>
<td style="text-align:center;">
684950
</td>
<td style="text-align:center;">
75.6%
</td>
<td style="text-align:center;">
9.0%
</td>
</tr>
<tr>
<td style="text-align:center;">
30
</td>
<td style="text-align:center;">
798324
</td>
<td style="text-align:center;">
88.1%
</td>
<td style="text-align:center;">
9.4%
</td>
</tr>
<tr>
<td style="text-align:center;">
35
</td>
<td style="text-align:center;">
864625
</td>
<td style="text-align:center;">
95.4%
</td>
<td style="text-align:center;">
9.8%
</td>
</tr>
<tr>
<td style="text-align:center;">
40
</td>
<td style="text-align:center;">
891675
</td>
<td style="text-align:center;">
98.4%
</td>
<td style="text-align:center;">
9.9%
</td>
</tr>
<tr>
<td style="text-align:center;">
45
</td>
<td style="text-align:center;">
896435
</td>
<td style="text-align:center;">
98.9%
</td>
<td style="text-align:center;">
9.9%
</td>
</tr>
<tr>
<td style="text-align:center;">
50
</td>
<td style="text-align:center;">
899763
</td>
<td style="text-align:center;">
99.3%
</td>
<td style="text-align:center;">
9.9%
</td>
</tr>
<tr>
<td style="text-align:center;">
55
</td>
<td style="text-align:center;">
901461
</td>
<td style="text-align:center;">
99.5%
</td>
<td style="text-align:center;">
9.9%
</td>
</tr>
</tbody>
</table>

As seen in the table above, as the DTI cap increases, both the share
accepted and default rate increase. Therefore, there is a trade-off
between the risk of default and maximising the number of borrowers. A
DTI cap that is too strict will cause the number of borrowers to decline
significantly, however, it would also have the positive effect of
reducing the default rate. The same goes for a DTI cap that is too
lenient - the number of borrowers will increase, but at the cost of the
default rate increasing as well. I think an appropriate hard-cap for DTI
levels is 25. At 25, approximately 75% of borrowers are accepted, which
is not too low, and the default rate is at 9%, which is an improvement
compared to no DTI cap.

## Question 4: Netflix

### Loading the data and functions

Separating content with multiple countries into multiple rows (long
format)

## Summary of the Top 10 Netflix Content-Producing Countries

![](README_files/figure-markdown_github/unnamed-chunk-49-1.png)

As seen in the graph above, the US produces by far the most content for
Netflix. The next two highest countries are India and Great Britain.

## Relationship Between Movie TMDB Score and Runtime

The scatter plot below shows the relationship between TMDB score and
runtime, by genre. As shown by the graph below, there is a very weak
relationship between TMDB score and runtime. Interestingly, though,
comedies, documentations and dramas have a somewhat similar TMDB score,
but the runtime for comedies and documentations is, on average, shorter
than the runtime of dramas. Romances and thrillers tend to have lower
scores than the aforementioned genres.

<img src="README_files/figure-markdown_github/unnamed-chunk-50-1.png" alt="" width="100%" />

## Average TMDB Popularity of movies over time by genre and country

The graphs below plot the average TMDB popularity by genre and country
over time. The countries that produce the most Netflix movies are
plotted (individually) and only the top 6 genres per country are
included.

### US

As seen in the graph below, the top 6 genres for production in the US
are: comedy, drama, romance, documentation, horror and thriller. The
popularity of dramas and thrillers has increased exponentially since
2020. Therefore, it would be a good decision to focus on streaming
dramas and thrillers produced in the US.

<img src="README_files/figure-markdown_github/unnamed-chunk-51-1.png" alt="" width="100%" />

### India

As seen in the graph below, the top 6 genres for production in India
are: comedy, drama, romance, action, crime and thriller. The popularity
of actions and comedies has increased exponentially since the late
2010s. Therefore, it would be a good decision to focus on streaming
actions and comedies produced in India.

<img src="README_files/figure-markdown_github/unnamed-chunk-52-1.png" alt="" width="100%" />

### Great Britain

As seen in the graph below, the top 6 genres for production in Great
Britain are: comedy, drama, romance, action, documentation and thriller.
The popularity of actions and documentations has increased slightly
since 2020. Therefore, it would be a good decision to focus on streaming
actions and documentations produced in Great Britain. I would be
hesitant to focus on streaming thrillers from Great Britain because,
despite increasing exponentially in 2020, their popularity appears to be
on a heavy downward trend, so it woud be a riskier investment.

<img src="README_files/figure-markdown_github/unnamed-chunk-53-1.png" alt="" width="100%" />

### France

As seen in the graph below, the top 6 genres for production in France
are: comedy, drama, documentation, action, crime and thriller. The
popularity of thrillers and crime has increased exponentially since
2020. Therefore, it would be a good decision to focus on streaming
thrillers and crime produced in France.

<img src="README_files/figure-markdown_github/unnamed-chunk-54-1.png" alt="" width="100%" />

### Canada

As seen in the graph below, the top 6 genres for production in Canada
are: animation, documentation, fantasy, comedy, drama and thriller. The
popularity of fantasies, comedies and dramas have increased
exponentially since the late 2010s. Therefore, it would be a good
decision to focus on streaming fantasies, comedies and dramas produced
in Canada.

<img src="README_files/figure-markdown_github/unnamed-chunk-55-1.png" alt="" width="100%" />

### Overall Recommendations

Therefore, my advice would be to invest in streaming the following
genres of movies produced in the following countries:

-   Drama: US
-   Thriller: France (and maybe the US as well)
-   Comedy: India
-   Action: India (and maybe Great Britain as well)
-   Documentation: France
-   Fantasy: Canada
-   Drama: Canada

I would start off being a bit cautious of streaming movies that have the
genres because there is no obvious upward trend in any of the countries
analysed:

-   Animation
-   Romance
