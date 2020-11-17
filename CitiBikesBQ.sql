select station_id, num_bikes_available, capacity, num_bikes_disabled from `bigquery-publicdata.new_york_citibike.citibike_stations` where num_bikes_available = 0; #available bikes

select sum(capacity), count(station_id) from `bigquery-publicdata.new_york_citibike.citibike_stations` where num_bikes_available = 0;

select count(distinct station_id) from `bigquery-public-data.new_york_citibike.citibike_stations`;

select sum(capacity) from `bigquery-public-data.new_york_citibike.citibike_stations`;

select count( end_station_name ) as count, end_station_name from `bigquery-publicdata.new_york_citibike.citibike_trips` group by end_station_name order by count desc;

select start_station_id from `bigquery-public-data.new_york_citibike.citibike_trips` where
start_station_name is null;

select avg( tripduration) from `bigquery-public-data.new_york_citibike.citibike_trips` WHERE name
= 'Pershing Square North' or name = 'E 17 St & Broadway';

select name, num_bikes_available, capacity from `bigquery-publicdata.new_york_citibike.citibike_stations` where num_bikes_available = 0 ;

select start_station_name, count(end_station_name) as num_of_trips from `bigquery-publicdata.new_york_citibike.citibike_trips` where start_station_name = end_station_name group by
start_station_name order by 2 desc;

select start_station_name, end_station_name, count (end_station_id) as num_trips from
`bigquery-public-data.new_york_citibike.citibike_trips` group by start_station_name,
end_station_name order by 3 desc;

select starttime, count (start_station_id) as num_start from `bigquery-publicdata.new_york_citibike.citibike_trips` group by starttime order by 2 desc;

select start_station_name, end_station_name, count( start_station_id) as num_rides, extract (hour
from timestamp (starttime) at time zone 'America/New_York') as ride_hour, extract (dayofweek
from timestamp (starttime) at time zone 'America/New_York') as ride_day from `bigquery-publicdata.new_york_citibike.citibike_trips` group by start_station_name, end_station_name, ride_hour,
ride_day having start_station_name <> end_station_name order by 3 desc;

select start_station_name, end_station_name, count( start_station_id) as num_trips from
`bigquery-public-data.new_york_citibike.citibike_trips` group by start_station_name,
end_station_name having start_station_name <> end_station_name order by 3 desc;

select start_station_name, end_station_name, count( start_station_id) as num_rides, extract (hour
from timestamp (starttime) at time zone 'America/New_York') as ride_hour, extract (dayofweek
from timestamp (starttime) at time zone 'America/New_York') as ride_day from `bigquery-publicdata.new_york_citibike.citibike_trips` group by start_station_name, end_station_name, ride_hour,
ride_day having start_station_name = 'Pershing Square North'order by 3 desc;

select end_station_name, start_station_name, count( start_station_id) as num_rides, extract (hour
from timestamp (starttime) at time zone 'America/New_York') as ride_hour, extract (dayofweek
from timestamp (starttime) at time zone 'America/New_York') as ride_day from `bigquery-publicdata.new_york_citibike.citibike_trips` group by end_station_name, start_station_name, ride_hour,
ride_day having end_station_name = 'Pershing Square North'order by 3 desc;

Select st_GeogPoint(longitude, latitude) as WKT, name, num_bikes_available, capacity from
`bigquery-public-data.new_york_citibike.citibike_stations` where num_bikes_available = 0;

select end_station_name, start_station_name, count( start_station_id) as num_rides, extract
(hour from timestamp (starttime) at time zone 'America/New_York') as ride_hour, extract
(dayofweek from timestamp (starttime) at time zone 'America/New_York') as ride_day from
`bigquery-public-data.new_york_citibike.citibike_trips` group by end_station_name,
start_station_name, ride_hour, ride_day having start_station_name = 'E 17 St & Broadway'order by
3 desc;

select usertype, count( start_station_name) as num_trips, start_station_name from `bigquerypublic-data.new_york_citibike.citibike_trips` group by usertype, start_station_name having
start_station_name = 'E 17 St & Broadway' order by 2 desc;

select station_id, name, capacity, num_bikes_available from `bigquery-publicdata.new_york_citibike.citibike_stations` where capacity = num_bikes_available;

select station_id, name, capacity, num_bikes_available from `bigquery-publicdata.new_york_citibike.citibike_stations` where capacity = num_bikes_available and capacity <> 0;


select sum(capacity) from `bigquery-public-data.new_york_citibike.citibike_stations` where
capacity = num_bikes_available and capacity <> 0;