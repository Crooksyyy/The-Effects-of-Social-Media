# How Household Income Impacts Political Views, Focusing on Mr. Donald Trump

## Overview

This repo provides an analysis of the impacts of household income on voting. To complete this analysis we use a self reported measure of how closely an id=ndividual follows Mr. Donald Trump and their self reported household income. To further our analysis we also use variables like race.

This paper was inspired by 'The Welfare Effects of Social Media' available at the below link: https://www.aeaweb.org/articles?id=10.1257/aer.20190658&ArticleSearch%5Bwithin%5D%5Barticletitle%5D=1&ArticleSearch%5Bwithin%5D%5Barticleabstract%5D=1&ArticleSearch%5Bwithin%5D%5Bauthorlast%5D=1&ArticleSearch%5Bq%5D=&JelClass%5Bvalue%5D=I3&journal=1&page=2&per-page=21&from=j



## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

## LLM's (Large Language Models)
In today's world, it is important to note if and how LLM's were used to produce this repo. Aspects of the code were written with the help of ChatGPT 3.5. The entire chat history is available in inputs/llms/usage.txt.

## Data 
It is important to note the raw data in this repo cannot be accessed directly through R as a result of the large files. To obtain the raw data please visit the link below. The file used for this repo is named baseline_anonymous.dta.

https://www.openicpsr.org/openicpsr/project/112081/version/V1/view?path=/openicpsr/112081/fcr:versions/V1/confidential/main_experiment/output&type=folder

It can also be downloaded from this repo in the folder inputs/data/base_data.csv or inputs/data/base_data.dta
The raw data files