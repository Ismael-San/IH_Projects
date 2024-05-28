# Project_4_Udemy

Check amount of NaN (few)

Remove NaN rows (since the amount is irrevelant)


Convert from float64 to integer :
- column "course_id" 
- column "num_subscribers"
- column "num_reviews" 
- column "num_lectures" 

Convert rating column into 0.XXX to rate (XX/10) (x10)

Check amount of duplicates - by using course_id and check if each course_id is unique
(after check : 1191 unique values - one NaN detected, so only unique rows)

ID : 52118 - Split content in each column (all info are in URL column) - remove "hours" (regex miam miam) str.split(",")
ID : 1239206 - Remove this row (too many NaN values)







