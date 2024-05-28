# Marine_Pollution_DataCleaning

Date
Region
Source
Ship Type
Area
Location
Pollutant
Estimated Litres

Colonnes toutes les mêmes sur tous les fichiers

Australia - Queensland
Marine Pollution 

2002-2020

Highlights evolution of marine pollution between 2002-2020



Check : 
- Missing Values
- Special characters
- Incorrect values
- Extreme values or outliers
- Duplicate records
- Incorrect data types

Add index (Event_ID) to differentiate each pollution event
Add a new 'Year' column. (current Dates column formats differ but we won't be using the exact dates in our analysis)

columnDate formats differ but exact dates won't be relevant for our analysis

Highlights marine pollution between 2002-2020 in Australia
By type of pollutants and starting from 2016, by quantities (will require computation and RegEx to normalize the data, to convert in a common measure unit)
By Region 
Displays evolution of marine pollution between 2002-2020

Pollutant :
- Determine the most recurring pollutant (needs to categorize whether they belong to Oil / Chemicals / Other)


Data : 

df_0216 : Ismael CSV (with encoding issues)
df_1617 : Jamyang CSV
df_1718 : Matthieu (XLSX)
df_1819 : Jamyang CSV
df_pol_1920 : Matthieu

Merge the data in a common df_pol

14H45 Check .describe() between tables

**Regions **: 5 regions
- check extra spaces (remote extra space - regex)
- Brisbale / Brisbane

**Source: **
check how much coral (remote or not)
Check, count amount  occurence sources from mid-air (Helicopter, Plane...)

**Ship Type : **
Create a « Goverment » type for « Military », "Navy" and «  Customs »
Recreational
Commercial (tanker, trading, trading ship)
Fishing on garde (au cas où en fonction du nombre d’occurence de cette donnée après le merge)

**Area** : Coastal Waters , Port Limits check other values count occurence of other values if they are relevant
Verifier définition GBR et GBRMP

**Location **: Skip about to remote this column

**Pollutant** : sheen, diesel, bilge, heavy fuel oil (HFO) 
Thinking about sort all to "Oil"

**Estimated Litres**: 
Changer regex column (extra spaces, special caracters)
Conversion in litres
