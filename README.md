# getting-and-cleaning-data
a repo for a an assignment in the Coursera course "Getting and cleaning data".


This repo contains my answer for the course assignment in the John Hopkins School of Public Health course "Getting and Cleaning Data" on coursera. The assignment was to create a script that takes a set of files downloaded from this link (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and arranges it into a tidy dataset. 

##Version information

I limited myself to using basic R code, so the script should run with no packages loaded. The version of R I was using is as follows:

platform       x86_64-w64-mingw32          
arch           x86_64                      
os             mingw32                     
system         x86_64, mingw32             
status                                     
major          3                           
minor          2.0                         
year           2015                        
month          04                          
day            16                          
svn rev        68180                       
language       R                           
version.string R version 3.2.0 (2015-04-16)
nickname       Full of Ingredients         

## Runnign instructions

The files from the above link must be downloaded and extracted in the working directory for the script to work.

The main script you will need to run is in run_analysis.R. There are comments in the script explaining what each part does. 

## Output

If executed correctly it will create the following two dataframe objects, which are the required output for the 4th and 5th step of the assignment:

"step4data" is the complete assembled and labelled dataset combining the training and test sets, as required in step 4 of the assingment.

"step5dfdata" is the dataset extracted from "step4data", which lists the average of each subject - activity combination for each of the measurements. This dataset was also submitted as a text file as part of the assignment. 

## Optional step 5 list output

The 5th step of the assignment required getting the means for the combinations of 3 different dimensions of the data: The subject, the activity, and the measurement. The preferred format for this appears to be in one big dataframe, which is why I wrote the code to generate this, with activites in the columns and both measurements and subjects in the rows. This is also the only format that would translate well when saved via the write.table() command, as instructed. 

However my preffered format was actully to arrange the data as a list consisting of smaller 30x6 data frames, where each data frame is for one measurement only, with an activity for each column and a subject in each row. To obtain this format, run the code in run_analysis.R down to the heading "## EXTRACTING STEP 5 DATA SET", and then substituting the code in step5listdata.R. The list will be in the object "step5listdata".


