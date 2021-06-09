# Created by Wyclife Agumba Oluoch
# Task: Demonstration of using R within Google Colaboratory    
# Date 8th June 2021
# Last edited on 9th of June 2021

# This is showing how to use R in Google colaboratory
# Run the following code in the first cell of the google colab

# %load_ext rpy2.ipython

# Once that is loaded successfully then you can goa ahead and load libraries like:

# %R library(datasets) This is going to work on one line

# In case you want multiple lines to be executed then use double %%.
# Also ensure all the codes are in different lines as that of %%R

# %%R
#  library(datasets)
#  data(iris)
#  summary(iris)

# You can also easily run R kernel in Google colab as a new notebook using
# https://colab.research.google.com/notebook#create=true&language=r
# This can also be achieved by https://colab.to/r

# Pretty simple but hard to install packages 