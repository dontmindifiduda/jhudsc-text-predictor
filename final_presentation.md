Coursera Data Science Capstone Project
========================================================
author: Scott Duda
date: June 20, 2019
autosize: true


Capstone Project Objective
========================================================

- The objective of this capstone project is to develop a predictive text model that can be applied to a Shiny application. Users can enter text into the Shiny application, and the underlying predictive text model will be used to predict the next word that the user plans on typing.
- Construction of the predictive text model will be based on analysis of a corpus of text documents compiled from the following three sources: blog articles, tweets, and news articles.
- The base corpora for development of this predictive model was extracted from [HC Corpora] (http://corpora.epizy.com/?i=1), a collection of corpora in several different languages. For development of the predictive model used in this application, only English langauge texts were used.
- To create the predictive text model, 500,000 lines of text were extracted from each text source. This representes approximately 56% of the blog data, 49% of the news article data, and 21% of the twitter data.   


Text Processing 
========================================================

- Each line of text was processed as follows:
    - Converted to lowercase
    - Punctuation, numbers, and all non-alphbetic characters removed
    - Web addresses removed
    - Extraneous whitespace removed
    - Profanity removed
- Following processing, each line of text was tokenized into n-grams for n = 1 to 4, with n representing the number of words appearing within each token. The frequency of occurence for each n-gram was also recorded for probability calculation.
- Bigrams, trigrams, and fourgrams were each split into two components: predicate (all words except the last word) and word (the last word of the phrase).
    


Predictive Model & Algorithm Description
========================================================

- Using only the frequency of occurrence of each n-gram for development of a predictive model provides some predictive power but does not produce results with a high level of accuracy or precision. Accuracy and precision of predicted text can be increased by applying alternative methods of statistical analysis to the corpora.
- For development of the predictive model used in this application, Kneser-Ney smoothing was used on tokenized n-grams for values of n up to four. A description of Kneser-Ney smoothing can be found [here] (https://medium.com/@seccon/a-simple-numerical-example-for-kneser-ney-smoothing-nlp-4600addf38b8). Kneser-Ney smoothing takes into account individual n-gram frequencies as well as frequencies associated with their component parts. 
- For each n-gram, a probability value was calculated for the last word appearing in the n-gram.  Probability values were stored in data tables for easy retrieval.


Text Prediction Application
========================================================

- A link to the application can be found here:  [https://scottmduda.shinyapps.io/TextPredictor/] (https://scottmduda.shinyapps.io/TextPredictor/)

- The code used to develop this application can be found here:  [https://github.com/dontmindifiduda/jhudsc-text-predictor] (https://github.com/dontmindifiduda/jhudsc-text-predictor)

- The predictive model was benchmarked using a benchmarking script developed by former students in the data science specialization ([https://github.com/hfoffani/dsci-benchmark] (https://github.com/hfoffani/dsci-benchmark)). Benchmarking results are shown below:

![Benchmarking results] (benchmark.png)



