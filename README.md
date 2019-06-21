# Coursera Data Science Capstone Project

This repo contains the codebase I used to develop a text prediction application as part of the Johns Hopkins University Data Science Specialization Capstone Project. You can test the application [here] (https://scottmduda.shinyapps.io/TextPredictor/).


## File Descriptions

- benchmark.png - Screenshot of benchmark script results
- Cleaner.R - Used to clean user text input
- FinalModel.Rmd - Generates the n-gram tables used by the text prediction algorithm
- final_presentation.Rpres - Presentation for assignment submission
- pred_bi.RDS - Bigram probability table
- pred_four.RDS - Four-gram probability table
- pred_tri.RDS - Trigram probability table
- pred_uni.RDS - Unigram table
- profanity.txt - List of "profane" words for filtering during text processing
- server.R / ui.R - Shiny app files

Kneser-Ney smoothing was implemented to develop the predictive text model. 

The predictive function was benchmarked using a benchmarking script written by former students in the specialization. Those scripts can be found [here] (https://github.com/hfoffani/dsci-benchmark).
