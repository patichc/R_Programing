## Assignment Resolution - General Comments

<b>Author</b>: Patricia Chavez
<b>Environment</b>:                                  
     * platform       x86_64-w64-mingw32          
     * language       R                           
     * version.string R version 3.2.0 (2015-04-16)

This content including the generated code and plots is my answer to 
the Project 1 assignment for the course <b>R Programming</b>
of the <b>Data Science Specialization</b> offered in <b>Coursera</b> by
<b>Johns Hopkins University</b>

The code was implemented based on the prototype for the functions as 
provided in the assignment instructions
 
<hr>
### Part 1

Function named '<b>pollutantmean</b>' that calculates the mean of a pollutant 
(sulfate or nitrate) across a specified list of monitors. 
<b>Arguments</b>: '<b>directory</b>', '<b>pollutant</b>', and '<b>id</b>'. 
<b>Result</b>: Given a vector monitor ID numbers (specified in the <b>id</b> argument),
<b>pollutantmean</b> reads that monitors' particulate matter data from the 
directory specified in the <b>directory</b> argument and returns the mean of the 
pollutant across all of the monitors, ignoring any missing values coded as NA

![pollutantmean code](scripts/pollutantmean.R)

<hr>
### Part 2

Function named '<b>complete</b>' that reads a directory full of files and reports 
the number of completely observed cases in each data file. The function should 
return a data frame where the first column is the name of the file and the second 
column is the number of complete cases. 
<b>Arguments</b>: '<b>directory</b>', and '<b>id</b>'. 
<b>Result</b>: Given a vector monitor ID numbers (specified in the <b>id</b> argument),
<b>complete</b> reads that monitors' particulate matter data from the 
directory specified in the <b>directory</b> argument and returns a data frame where 
the first column is the ID of the file for a monitor and the second column is the number of 
complete cases.

![complete code](scripts/complete.R)

<hr>
### Part 3

Function named '<b>corr</b>' that takes a directory of data files and a threshold for 
complete cases and calculates the correlation between sulfate and nitrate for monitor 
locations where the number of completely observed cases (on all variables) is greater 
than the threshold.
<b>Arguments</b>: '<b>directory</b>', and '<b>id</b>'. 
<b>Result</b>: Given a monitor ID (specified in the <b>id</b> argument),
<b>corr</b> reads that monitors' particulate matter data from the 
directory specified in the <b>directory</b> argument and returns a
vector of correlations for the monitors that meet the threshold requirement. 
If no monitors meet the threshold requirement, then the function should return 
a numeric vector of length 0

![corr code](scripts/corr.R)

<hr>



<hr>


