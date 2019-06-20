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
- Following processing, each line of text was tokenized into n-grams, with n representing the number of words appearing within each token. For example, 1-grams (unigrams) consist of individual words, 2-grams (bigrams) consist of two-word phrases such as "in the" or "as if," and so on. Tokenization of the sampled corpus was completed for identification of 1-grams (unigrams), 2-grams (bigrams), 3-grams (trigrams), and 4-grams (fourgrams). The frequency of occurence for each n-gram was also recorded for probability
- Bigrams, trigrams, and fourgrams were each split into two components: predicate (all words except the last word) and word (the last word of the phrase).
    


Predictive Model & Algorithm Description
========================================================

- Using only the frequency of occurrence of each n-gram for development of a predictive model provides some predictive power but does not produce results with a high level of accuracy or precision. Accuracy and precision of predicted text can be increased by applying alternative methods of statistical analysis to the corpora.
- For development of the predictive model used in this application, Kneser-Ney smoothing was used on tokenized n-grams for values of n up to four. A description of Kneser-Ney smoothing can be found [here] (https://medium.com/@seccon/a-simple-numerical-example-for-kneser-ney-smoothing-nlp-4600addf38b8). Kneser-Ney smoothing takes into account individual n-gram frequencies as well as frequencies associated with their component parts. 
- For each n-gram, a probability value was calculated for the last word appearing in the n-gram. For example, cononsider the 3-gram "i am tall." For this 3-gram, a value was calculated for probability that the 1-gram "tall" will follow the 2-gram "i am." Probability values were stored in data tables for easy retrieval.
- Once probability values were calculated, all n-grams with a frequency of 1 were discarded from the probability tables to conserve memory. The resulting data tables are used by the application to predict the next word following a user-entered set of words.

Text Prediction Application
========================================================

- A link to the application can be found here:  

- The code used to develop this application can be found here:


