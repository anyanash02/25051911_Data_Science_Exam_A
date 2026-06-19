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

<div class="tabwid"><style>.cl-d9ce2bae{}.cl-d9c4c2b2{font-family:'Arial';font-size:14pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(255, 255, 255, 1.00);background-color:transparent;}.cl-d9c4c2bc{font-family:'Arial';font-size:14pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-d9c8aa58{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d9c8aa6c{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d9c8f1e8{width:1.463in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d9c8f1fc{width:1.776in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d9c8f1fd{width:1.463in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d9c8f206{width:1.776in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d9c8f207{width:1.463in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d9c8f208{width:1.776in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d9c8f210{width:1.463in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d9c8f211{width:1.776in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-d9ce2bae'><thead><tr style="overflow-wrap:break-word;"><th class="cl-d9c8f1e8"><p class="cl-d9c8aa58"><span class="cl-d9c4c2b2">Roast</span></p></th><th class="cl-d9c8f1fc"><p class="cl-d9c8aa6c"><span class="cl-d9c4c2b2">No_of_Roasters</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-d9c8f1fd"><p class="cl-d9c8aa58"><span class="cl-d9c4c2bc">Medium-Light</span></p></td><td class="cl-d9c8f206"><p class="cl-d9c8aa6c"><span class="cl-d9c4c2bc">327</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-d9c8f207"><p class="cl-d9c8aa58"><span class="cl-d9c4c2bc">Medium</span></p></td><td class="cl-d9c8f208"><p class="cl-d9c8aa6c"><span class="cl-d9c4c2bc">136</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-d9c8f207"><p class="cl-d9c8aa58"><span class="cl-d9c4c2bc">Light</span></p></td><td class="cl-d9c8f208"><p class="cl-d9c8aa6c"><span class="cl-d9c4c2bc">119</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-d9c8f207"><p class="cl-d9c8aa58"><span class="cl-d9c4c2bc">Medium-Dark</span></p></td><td class="cl-d9c8f208"><p class="cl-d9c8aa6c"><span class="cl-d9c4c2bc">27</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-d9c8f210"><p class="cl-d9c8aa58"><span class="cl-d9c4c2bc">Dark</span></p></td><td class="cl-d9c8f211"><p class="cl-d9c8aa6c"><span class="cl-d9c4c2bc">3</span></p></td></tr></tbody></table></div>

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

<div class="tabwid"><style>.cl-da4be134{}.cl-da408f14{font-family:'Arial';font-size:12pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(255, 255, 255, 1.00);background-color:transparent;}.cl-da408f32{font-family:'Arial';font-size:12pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-da459946{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-da459950{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-da45db22{width:1.195in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db36{width:0.556in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db40{width:0.704in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db41{width:0.695in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db4a{width:2.677in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db4b{width:2.029in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db54{width:1.195in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db55{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db56{width:0.704in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db5e{width:0.695in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db68{width:2.677in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db69{width:2.029in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db72{width:1.195in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db73{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db7c{width:0.704in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db7d{width:0.695in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db86{width:2.677in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db87{width:2.029in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db88{width:1.195in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db90{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db9a{width:0.704in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db9b{width:0.695in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45db9c{width:2.677in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da45dba4{width:2.029in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-da4be134'><thead><tr style="overflow-wrap:break-word;"><th class="cl-da45db22"><p class="cl-da459946"><span class="cl-da408f14">Roast</span></p></th><th class="cl-da45db36"><p class="cl-da459950"><span class="cl-da408f14">Cost</span></p></th><th class="cl-da45db40"><p class="cl-da459950"><span class="cl-da408f14">Rating</span></p></th><th class="cl-da45db41"><p class="cl-da459950"><span class="cl-da408f14">Value</span></p></th><th class="cl-da45db4a"><p class="cl-da459946"><span class="cl-da408f14">Name</span></p></th><th class="cl-da45db4b"><p class="cl-da459946"><span class="cl-da408f14">Roaster</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-da45db54"><p class="cl-da459946"><span class="cl-da408f32">Dark</span></p></td><td class="cl-da45db55"><p class="cl-da459950"><span class="cl-da408f32">2.93</span></p></td><td class="cl-da45db56"><p class="cl-da459950"><span class="cl-da408f32">84</span></p></td><td class="cl-da45db5e"><p class="cl-da459950"><span class="cl-da408f32">28.67</span></p></td><td class="cl-da45db68"><p class="cl-da459946"><span class="cl-da408f32">Pike’s Place Blend</span></p></td><td class="cl-da45db69"><p class="cl-da459946"><span class="cl-da408f32">Starbucks Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da45db72"><p class="cl-da459946"><span class="cl-da408f32">Light</span></p></td><td class="cl-da45db73"><p class="cl-da459950"><span class="cl-da408f32">3.39</span></p></td><td class="cl-da45db7c"><p class="cl-da459950"><span class="cl-da408f32">95</span></p></td><td class="cl-da45db7d"><p class="cl-da459950"><span class="cl-da408f32">28.02</span></p></td><td class="cl-da45db86"><p class="cl-da459946"><span class="cl-da408f32">Panama La Mula Geisha Washed</span></p></td><td class="cl-da45db87"><p class="cl-da459946"><span class="cl-da408f32">GK Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da45db72"><p class="cl-da459946"><span class="cl-da408f32">Medium</span></p></td><td class="cl-da45db73"><p class="cl-da459950"><span class="cl-da408f32">1.13</span></p></td><td class="cl-da45db7c"><p class="cl-da459950"><span class="cl-da408f32">92</span></p></td><td class="cl-da45db7d"><p class="cl-da459950"><span class="cl-da408f32">81.42</span></p></td><td class="cl-da45db86"><p class="cl-da459946"><span class="cl-da408f32">Espresso Blend</span></p></td><td class="cl-da45db87"><p class="cl-da459946"><span class="cl-da408f32">Ba Yang Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da45db72"><p class="cl-da459946"><span class="cl-da408f32">Medium-Dark</span></p></td><td class="cl-da45db73"><p class="cl-da459950"><span class="cl-da408f32">0.99</span></p></td><td class="cl-da45db7c"><p class="cl-da459950"><span class="cl-da408f32">87</span></p></td><td class="cl-da45db7d"><p class="cl-da459950"><span class="cl-da408f32">87.88</span></p></td><td class="cl-da45db86"><p class="cl-da459946"><span class="cl-da408f32">100% Guatemalan</span></p></td><td class="cl-da45db87"><p class="cl-da459946"><span class="cl-da408f32">Hill's Bros. Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da45db88"><p class="cl-da459946"><span class="cl-da408f32">Medium-Light</span></p></td><td class="cl-da45db90"><p class="cl-da459950"><span class="cl-da408f32">0.17</span></p></td><td class="cl-da45db9a"><p class="cl-da459950"><span class="cl-da408f32">94</span></p></td><td class="cl-da45db9b"><p class="cl-da459950"><span class="cl-da408f32">552.94</span></p></td><td class="cl-da45db9c"><p class="cl-da459946"><span class="cl-da408f32">Karen J Kona Red Bourbon</span></p></td><td class="cl-da45dba4"><p class="cl-da459946"><span class="cl-da408f32">Hula Daddy Kona Coffee</span></p></td></tr></tbody></table></div>

#### Highest Rated Roast by Roast Type

<div class="tabwid"><style>.cl-da8a59fa{}.cl-da83c41e{font-family:'Arial';font-size:10pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(255, 255, 255, 1.00);background-color:transparent;}.cl-da83c428{font-family:'Arial';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-da8710d8{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-da8710e2{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-da872fc8{width:1.027in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fc9{width:0.533in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fd2{width:0.617in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fd3{width:0.556in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fdc{width:2.493in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fdd{width:2.435in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fde{width:1.027in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fe6{width:0.533in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872fe7{width:0.617in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872ff0{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872ffa{width:2.493in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872ffb{width:2.435in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da872ffc{width:1.027in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873004{width:0.533in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873005{width:0.617in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873006{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da87300e{width:2.493in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da87300f{width:2.435in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873010{width:1.027in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873011{width:0.533in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873018{width:0.617in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873019{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da87301a{width:2.493in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-da873022{width:2.435in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-da8a59fa'><thead><tr style="overflow-wrap:break-word;"><th class="cl-da872fc8"><p class="cl-da8710d8"><span class="cl-da83c41e">Roast</span></p></th><th class="cl-da872fc9"><p class="cl-da8710e2"><span class="cl-da83c41e">Cost</span></p></th><th class="cl-da872fd2"><p class="cl-da8710e2"><span class="cl-da83c41e">Rating</span></p></th><th class="cl-da872fd3"><p class="cl-da8710e2"><span class="cl-da83c41e">Value</span></p></th><th class="cl-da872fdc"><p class="cl-da8710d8"><span class="cl-da83c41e">Name</span></p></th><th class="cl-da872fdd"><p class="cl-da8710d8"><span class="cl-da83c41e">Roaster</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-da872fde"><p class="cl-da8710d8"><span class="cl-da83c428">Dark</span></p></td><td class="cl-da872fe6"><p class="cl-da8710e2"><span class="cl-da83c428">8.50</span></p></td><td class="cl-da872fe7"><p class="cl-da8710e2"><span class="cl-da83c428">94</span></p></td><td class="cl-da872ff0"><p class="cl-da8710e2"><span class="cl-da83c428">11.06</span></p></td><td class="cl-da872ffa"><p class="cl-da8710d8"><span class="cl-da83c428">Indonesia Sumatra Gayo Espresso</span></p></td><td class="cl-da872ffb"><p class="cl-da8710d8"><span class="cl-da83c428">Simon Hsieh's Aroma Roast Coffees</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da872ffc"><p class="cl-da8710d8"><span class="cl-da83c428">Light</span></p></td><td class="cl-da873004"><p class="cl-da8710e2"><span class="cl-da83c428">16.15</span></p></td><td class="cl-da873005"><p class="cl-da8710e2"><span class="cl-da83c428">97</span></p></td><td class="cl-da873006"><p class="cl-da8710e2"><span class="cl-da83c428">6.01</span></p></td><td class="cl-da87300e"><p class="cl-da8710d8"><span class="cl-da83c428">Testi Ayla Double Ethiopia</span></p></td><td class="cl-da87300f"><p class="cl-da8710d8"><span class="cl-da83c428">Barrington Coffee Roasting</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da872ffc"><p class="cl-da8710d8"><span class="cl-da83c428">Medium</span></p></td><td class="cl-da873004"><p class="cl-da8710e2"><span class="cl-da83c428">19.82</span></p></td><td class="cl-da873005"><p class="cl-da8710e2"><span class="cl-da83c428">96</span></p></td><td class="cl-da873006"><p class="cl-da8710e2"><span class="cl-da83c428">4.84</span></p></td><td class="cl-da87300e"><p class="cl-da8710d8"><span class="cl-da83c428">Kona Mocca®</span></p></td><td class="cl-da87300f"><p class="cl-da8710d8"><span class="cl-da83c428">Hula Daddy Kona Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da872ffc"><p class="cl-da8710d8"><span class="cl-da83c428">Medium-Dark</span></p></td><td class="cl-da873004"><p class="cl-da8710e2"><span class="cl-da83c428">7.79</span></p></td><td class="cl-da873005"><p class="cl-da8710e2"><span class="cl-da83c428">96</span></p></td><td class="cl-da873006"><p class="cl-da8710e2"><span class="cl-da83c428">12.32</span></p></td><td class="cl-da87300e"><p class="cl-da8710d8"><span class="cl-da83c428">Bull Demon King</span></p></td><td class="cl-da87300f"><p class="cl-da8710d8"><span class="cl-da83c428">Simon Hsieh Aroma Roast Coffees</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-da873010"><p class="cl-da8710d8"><span class="cl-da83c428">Medium-Light</span></p></td><td class="cl-da873011"><p class="cl-da8710e2"><span class="cl-da83c428">28.27</span></p></td><td class="cl-da873018"><p class="cl-da8710e2"><span class="cl-da83c428">98</span></p></td><td class="cl-da873019"><p class="cl-da8710e2"><span class="cl-da83c428">3.47</span></p></td><td class="cl-da87301a"><p class="cl-da8710d8"><span class="cl-da83c428">GW01 Finca Sophia Olympus Geisha</span></p></td><td class="cl-da873022"><p class="cl-da8710d8"><span class="cl-da83c428">GK Coffee</span></p></td></tr></tbody></table></div>

#### Best Valued Roast by Roast Type

<div class="tabwid"><style>.cl-dab74af0{}.cl-daae097c{font-family:'Arial';font-size:12pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(255, 255, 255, 1.00);background-color:transparent;}.cl-daae0986{font-family:'Arial';font-size:12pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-dab1ce72{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-dab1ce86{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-dab200c2{width:1.195in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200cc{width:0.556in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200d6{width:0.704in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200d7{width:0.695in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200d8{width:2.677in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200d9{width:2.029in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200da{width:1.195in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200e0{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200ea{width:0.704in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200eb{width:0.695in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200ec{width:2.677in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200f4{width:2.029in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200f5{width:1.195in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200fe{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab200ff{width:0.704in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab20108{width:0.695in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab20109{width:2.677in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab2010a{width:2.029in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab20112{width:1.195in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab20113{width:0.556in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab20114{width:0.704in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab2011c{width:0.695in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab2011d{width:2.677in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dab20126{width:2.029in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-dab74af0'><thead><tr style="overflow-wrap:break-word;"><th class="cl-dab200c2"><p class="cl-dab1ce72"><span class="cl-daae097c">Roast</span></p></th><th class="cl-dab200cc"><p class="cl-dab1ce86"><span class="cl-daae097c">Cost</span></p></th><th class="cl-dab200d6"><p class="cl-dab1ce86"><span class="cl-daae097c">Rating</span></p></th><th class="cl-dab200d7"><p class="cl-dab1ce86"><span class="cl-daae097c">Value</span></p></th><th class="cl-dab200d8"><p class="cl-dab1ce72"><span class="cl-daae097c">Name</span></p></th><th class="cl-dab200d9"><p class="cl-dab1ce72"><span class="cl-daae097c">Roaster</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-dab200da"><p class="cl-dab1ce72"><span class="cl-daae0986">Dark</span></p></td><td class="cl-dab200e0"><p class="cl-dab1ce86"><span class="cl-daae0986">2.93</span></p></td><td class="cl-dab200ea"><p class="cl-dab1ce86"><span class="cl-daae0986">84</span></p></td><td class="cl-dab200eb"><p class="cl-dab1ce86"><span class="cl-daae0986">28.67</span></p></td><td class="cl-dab200ec"><p class="cl-dab1ce72"><span class="cl-daae0986">Pike’s Place Blend</span></p></td><td class="cl-dab200f4"><p class="cl-dab1ce72"><span class="cl-daae0986">Starbucks Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-dab200f5"><p class="cl-dab1ce72"><span class="cl-daae0986">Light</span></p></td><td class="cl-dab200fe"><p class="cl-dab1ce86"><span class="cl-daae0986">3.39</span></p></td><td class="cl-dab200ff"><p class="cl-dab1ce86"><span class="cl-daae0986">95</span></p></td><td class="cl-dab20108"><p class="cl-dab1ce86"><span class="cl-daae0986">28.02</span></p></td><td class="cl-dab20109"><p class="cl-dab1ce72"><span class="cl-daae0986">Panama La Mula Geisha Washed</span></p></td><td class="cl-dab2010a"><p class="cl-dab1ce72"><span class="cl-daae0986">GK Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-dab200f5"><p class="cl-dab1ce72"><span class="cl-daae0986">Medium</span></p></td><td class="cl-dab200fe"><p class="cl-dab1ce86"><span class="cl-daae0986">1.13</span></p></td><td class="cl-dab200ff"><p class="cl-dab1ce86"><span class="cl-daae0986">92</span></p></td><td class="cl-dab20108"><p class="cl-dab1ce86"><span class="cl-daae0986">81.42</span></p></td><td class="cl-dab20109"><p class="cl-dab1ce72"><span class="cl-daae0986">Espresso Blend</span></p></td><td class="cl-dab2010a"><p class="cl-dab1ce72"><span class="cl-daae0986">Ba Yang Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-dab200f5"><p class="cl-dab1ce72"><span class="cl-daae0986">Medium-Dark</span></p></td><td class="cl-dab200fe"><p class="cl-dab1ce86"><span class="cl-daae0986">0.99</span></p></td><td class="cl-dab200ff"><p class="cl-dab1ce86"><span class="cl-daae0986">87</span></p></td><td class="cl-dab20108"><p class="cl-dab1ce86"><span class="cl-daae0986">87.88</span></p></td><td class="cl-dab20109"><p class="cl-dab1ce72"><span class="cl-daae0986">100% Guatemalan</span></p></td><td class="cl-dab2010a"><p class="cl-dab1ce72"><span class="cl-daae0986">Hill's Bros. Coffee</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-dab20112"><p class="cl-dab1ce72"><span class="cl-daae0986">Medium-Light</span></p></td><td class="cl-dab20113"><p class="cl-dab1ce86"><span class="cl-daae0986">0.17</span></p></td><td class="cl-dab20114"><p class="cl-dab1ce86"><span class="cl-daae0986">94</span></p></td><td class="cl-dab2011c"><p class="cl-dab1ce86"><span class="cl-daae0986">552.94</span></p></td><td class="cl-dab2011d"><p class="cl-dab1ce72"><span class="cl-daae0986">Karen J Kona Red Bourbon</span></p></td><td class="cl-dab20126"><p class="cl-dab1ce72"><span class="cl-daae0986">Hula Daddy Kona Coffee</span></p></td></tr></tbody></table></div>

#### Best Valued Combination for Each Three-Roast Combination

<div class="tabwid"><style>.cl-db21f7a6{}.cl-db188c8e{font-family:'Arial';font-size:9pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(255, 255, 255, 1.00);background-color:transparent;}.cl-db188c98{font-family:'Arial';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-db1b863c{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-db1b8650{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-db1be7c6{width:1.032in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7d0{width:0.824in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7da{width:2.054in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7e4{width:1.714in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7e5{width:1.032in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7ee{width:0.824in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7ef{width:2.054in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7f8{width:1.714in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be7f9{width:1.032in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be802{width:0.824in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be80c{width:2.054in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be80d{width:1.714in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be816{width:1.032in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be817{width:0.824in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be820{width:2.054in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-db1be82a{width:1.714in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-db21f7a6'><thead><tr style="overflow-wrap:break-word;"><th class="cl-db1be7c6"><p class="cl-db1b863c"><span class="cl-db188c8e">Roast_Combo</span></p></th><th class="cl-db1be7d0"><p class="cl-db1b8650"><span class="cl-db188c8e">Avg_Value</span></p></th><th class="cl-db1be7da"><p class="cl-db1b863c"><span class="cl-db188c8e">Coffee_1</span></p></th><th class="cl-db1be7da"><p class="cl-db1b863c"><span class="cl-db188c8e">Coffee_2</span></p></th><th class="cl-db1be7e4"><p class="cl-db1b863c"><span class="cl-db188c8e">Coffee_3</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-db1be7e5"><p class="cl-db1b863c"><span class="cl-db188c98">M + MD + ML</span></p></td><td class="cl-db1be7ee"><p class="cl-db1b8650"><span class="cl-db188c98">240.75</span></p></td><td class="cl-db1be7ef"><p class="cl-db1b863c"><span class="cl-db188c98">Espresso Blend</span></p></td><td class="cl-db1be7ef"><p class="cl-db1b863c"><span class="cl-db188c98">100% Guatemalan</span></p></td><td class="cl-db1be7f8"><p class="cl-db1b863c"><span class="cl-db188c98">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">D + MD + ML</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">223.16</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Pike’s Place Blend</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">100% Guatemalan</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">L + MD + ML</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">222.95</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Panama La Mula Geisha Washed</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">100% Guatemalan</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">D + M + ML</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">221.01</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Pike’s Place Blend</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Espresso Blend</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">L + M + ML</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">220.79</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Panama La Mula Geisha Washed</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Espresso Blend</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">D + L + ML</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">203.21</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Pike’s Place Blend</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Panama La Mula Geisha Washed</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">D + M + MD</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">65.99</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Pike’s Place Blend</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Espresso Blend</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">100% Guatemalan</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">L + M + MD</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">65.77</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Panama La Mula Geisha Washed</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Espresso Blend</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">100% Guatemalan</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be7f9"><p class="cl-db1b863c"><span class="cl-db188c98">D + L + MD</span></p></td><td class="cl-db1be802"><p class="cl-db1b8650"><span class="cl-db188c98">48.19</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Pike’s Place Blend</span></p></td><td class="cl-db1be80c"><p class="cl-db1b863c"><span class="cl-db188c98">Panama La Mula Geisha Washed</span></p></td><td class="cl-db1be80d"><p class="cl-db1b863c"><span class="cl-db188c98">100% Guatemalan</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-db1be816"><p class="cl-db1b863c"><span class="cl-db188c98">D + L + M</span></p></td><td class="cl-db1be817"><p class="cl-db1b8650"><span class="cl-db188c98">46.04</span></p></td><td class="cl-db1be820"><p class="cl-db1b863c"><span class="cl-db188c98">Pike’s Place Blend</span></p></td><td class="cl-db1be820"><p class="cl-db1b863c"><span class="cl-db188c98">Panama La Mula Geisha Washed</span></p></td><td class="cl-db1be82a"><p class="cl-db1b863c"><span class="cl-db188c98">Espresso Blend</span></p></td></tr></tbody></table></div>

#### Best Valued Combination for Each Same-Country Three-Roast Combination

<div class="tabwid"><style>.cl-de86bad0{}.cl-de7f4980{font-family:'Arial';font-size:7pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(255, 255, 255, 1.00);background-color:transparent;}.cl-de7f498a{font-family:'Arial';font-size:7pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-de81f6ee{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-de81f6f8{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-de823848{width:0.844in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de82385c{width:0.769in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823866{width:0.682in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823867{width:1.693in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823868{width:1.639in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823869{width:1.947in;background-color:rgba(97, 34, 59, 1.00);vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823870{width:0.844in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823871{width:0.769in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de82387a{width:0.682in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de82387b{width:1.693in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de82387c{width:1.639in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823884{width:1.947in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823885{width:0.844in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823886{width:0.769in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de82388e{width:0.682in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de82388f{width:1.693in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823890{width:1.639in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823898{width:1.947in;background-color:transparent;vertical-align: middle;border-bottom: 0.75pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de823899{width:0.844in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de8238a2{width:0.769in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de8238a3{width:0.682in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de8238ac{width:1.693in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de8238ad{width:1.639in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-de8238ae{width:1.947in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0.75pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-de86bad0'><thead><tr style="overflow-wrap:break-word;"><th class="cl-de823848"><p class="cl-de81f6ee"><span class="cl-de7f4980">Roast_Combo</span></p></th><th class="cl-de82385c"><p class="cl-de81f6ee"><span class="cl-de7f4980">Country</span></p></th><th class="cl-de823866"><p class="cl-de81f6f8"><span class="cl-de7f4980">Avg_Value</span></p></th><th class="cl-de823867"><p class="cl-de81f6ee"><span class="cl-de7f4980">Coffee_1</span></p></th><th class="cl-de823868"><p class="cl-de81f6ee"><span class="cl-de7f4980">Coffee_2</span></p></th><th class="cl-de823869"><p class="cl-de81f6ee"><span class="cl-de7f4980">Coffee_3</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-de823870"><p class="cl-de81f6ee"><span class="cl-de7f498a">L + M + ML</span></p></td><td class="cl-de823871"><p class="cl-de81f6ee"><span class="cl-de7f498a">Hawai'i</span></p></td><td class="cl-de82387a"><p class="cl-de81f6f8"><span class="cl-de7f498a">197.04</span></p></td><td class="cl-de82387b"><p class="cl-de81f6ee"><span class="cl-de7f498a">Ethiopia Yirgacheffe G1</span></p></td><td class="cl-de82387c"><p class="cl-de81f6ee"><span class="cl-de7f498a">Medium-Dark Roast</span></p></td><td class="cl-de823884"><p class="cl-de81f6ee"><span class="cl-de7f498a">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">L + MD + ML</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">Hawai'i</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">195.66</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Ethiopia Yirgacheffe G1</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">CBD Coffee Dark Roast</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">M + MD + ML</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">Hawai'i</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">190.78</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Medium-Dark Roast</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">CBD Coffee Dark Roast</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">Karen J Kona Red Bourbon</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">D + M + MD</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">United States</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">58.54</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Pike’s Place Blend</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">Colombia</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">100% Guatemalan</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">L + M + MD</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">United States</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">56.92</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Look for the Helpers</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">Colombia</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">100% Guatemalan</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">D + M + ML</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">Taiwan</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">54.11</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Indonesia Sumatra Gayo Espresso</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">Espresso Blend</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">Taiwan Natural Alishan Zhuo-Wu Geisha</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">D + MD + ML</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">United States</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">48.39</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Pike’s Place Blend</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">100% Guatemalan</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">Elida Natural ASD (Panama)</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">D + L + MD</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">United States</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">46.79</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Pike’s Place Blend</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">Look for the Helpers</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">100% Guatemalan</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823885"><p class="cl-de81f6ee"><span class="cl-de7f498a">D + L + M</span></p></td><td class="cl-de823886"><p class="cl-de81f6ee"><span class="cl-de7f498a">Taiwan</span></p></td><td class="cl-de82388e"><p class="cl-de81f6f8"><span class="cl-de7f498a">40.17</span></p></td><td class="cl-de82388f"><p class="cl-de81f6ee"><span class="cl-de7f498a">Indonesia Sumatra Gayo Espresso</span></p></td><td class="cl-de823890"><p class="cl-de81f6ee"><span class="cl-de7f498a">Panama La Mula Geisha Washed</span></p></td><td class="cl-de823898"><p class="cl-de81f6ee"><span class="cl-de7f498a">Espresso Blend</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-de823899"><p class="cl-de81f6ee"><span class="cl-de7f498a">D + L + ML</span></p></td><td class="cl-de8238a2"><p class="cl-de81f6ee"><span class="cl-de7f498a">Taiwan</span></p></td><td class="cl-de8238a3"><p class="cl-de81f6f8"><span class="cl-de7f498a">36.31</span></p></td><td class="cl-de8238ac"><p class="cl-de81f6ee"><span class="cl-de7f498a">Indonesia Sumatra Gayo Espresso</span></p></td><td class="cl-de8238ad"><p class="cl-de81f6ee"><span class="cl-de7f498a">Panama La Mula Geisha Washed</span></p></td><td class="cl-de8238ae"><p class="cl-de81f6ee"><span class="cl-de7f498a">Taiwan Natural Alishan Zhuo-Wu Geisha</span></p></td></tr></tbody></table></div>

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
