use energy_insights;

select * from continents_new;
select * from primary_energy_database;
select * from renewable_energy_database;

select 	
		renewable_energy_database.Year as "Year",
		continents_new.continents as "Continents",
        continents_new.countries as "Countries",
		primary_energy_database.ID_Country as "Country _ID",
        primary_energy_database.Value_MMTOE as "Primary Energy Supply",
        (renewable_energy_database.Value_KTOE/1000) as "Renewable Energy",
        ((renewable_energy_database.Value_KTOE/1000) /primary_energy_database.Value_MMTOE)*100 as "Renewable Energy Percentage",
        
        
        ((primary_energy_database.Value_MMTOE - (select
												AVG(primary_energy_database.Value_MMTOE) as avg_primary_energy
												from primary_energy_database))/
                                                (select std(primary_energy_database.Value_MMTOE) as std_primary
												from primary_energy_database)) as "Normalized Primary",
        
        ((renewable_energy_database.Value_KTOE/1000 - (select 
													  avg(renewable_energy_database.Value_KTOE/1000) as avg_renewable 
													  from renewable_energy_database))/
                                                      (select std(renewable_energy_database.Value_KTOE/1000) as std_renewable
													  from renewable_energy_database)) as "Normalized Renewable"
                
from primary_energy_database
inner join  renewable_energy_database
on primary_energy_database.ID_Country = renewable_energy_database.ID_Country
and primary_energy_database.YEAR = renewable_energy_database.Year
inner join continents_new 
on continents_new.country_id = primary_energy_database.ID_Country
order by 4 asc; 


select YEAR, max(Value_MMTOE) as max_primary, min(Value_MMTOE) as min_primary, sum(Value_MMTOE) as sum_primary
from primary_energy_database
group by YEAR
order by YEAR  desc;

select YEAR, (max(Value_KTOE)/1000) as max_renewable, (min(Value_KTOE)/1000) as min_renewable, (sum(Value_KTOE)/1000) as sum_renewable
from renewable_energy_database
group by YEAR
order by YEAR  desc;
		


select country_id,
			case when country_id = "OECD" then "Association"
				 when country_id = "G20" then "Association"
                 when country_id = "EU27_2020" then "Association"
                 when country_id = "EU28" then "Association"
                 when country_id = "OEU" then "Association"
                 when country_id = "WLD" then "Association"
				 else "Country"
			end as entity_type
from continents_new;





