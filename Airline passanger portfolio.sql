--Dividing passengers with respect to the Class
select [Class],[Type of Travel],[Customer Type],count([id]) as no_of_passengers,
avg([inflight wifi service]) as wifi_service,avg([Departure/Arrival time convenient]) as departure_arrival_time_convinient,
avg([Ease of Online booking]) as online_booking,avg([Gate location]) as gate_location,avg([Food and drink]) as food_drink,
avg([Online boarding]) as online_boarding,avg([Seat comfort]) as seat_comfort,avg([Inflight entertainment]) as inflight_entertainment,
avg([On-board service]) as on_board_service, avg([Leg room service]) as leg_room,avg([Baggage handling]) as baggage_handling,
avg([Checkin service]) as checkin_service, avg([Inflight service]) as inflight_service, avg([Cleanliness]) as cleanliness
from dbo.test$
group by [Class], [Type of Travel],[Customer Type]
order by [Type of Travel],[Customer Type]

--Dividing passengers with respect to the distance travelled
select [Class],[Type of Travel],count([id]) as no_of_passengers,
avg([inflight wifi service]) as wifi_service,avg([Departure/Arrival time convenient]) as departure_arrival_time_convinient,
avg([Ease of Online booking]) as online_booking,avg([Gate location]) as gate_location,avg([Food and drink]) as food_drink,
avg([Online boarding]) as online_boarding,avg([Seat comfort]) as seat_comfort,avg([Inflight entertainment]) as inflight_entertainment,
avg([On-board service]) as on_board_service, avg([Leg room service]) as leg_room,avg([Baggage handling]) as baggage_handling,
avg([Checkin service]) as checkin_service, avg([Inflight service]) as inflight_service, avg([Cleanliness]) as cleanliness
from dbo.test$
where [Flight Distance] between 0 and 2500
group by [Class], [Type of Travel]
order by [Type of Travel]

select [Class],[Type of Travel],count([id]) as no_of_passengers,
avg([inflight wifi service]) as wifi_service,avg([Departure/Arrival time convenient]) as departure_arrival_time_convinient,
avg([Ease of Online booking]) as online_booking,avg([Gate location]) as gate_location,avg([Food and drink]) as food_drink,
avg([Online boarding]) as online_boarding,avg([Seat comfort]) as seat_comfort,avg([Inflight entertainment]) as inflight_entertainment,
avg([On-board service]) as on_board_service, avg([Leg room service]) as leg_room,avg([Baggage handling]) as baggage_handling,
avg([Checkin service]) as checkin_service, avg([Inflight service]) as inflight_service, avg([Cleanliness]) as cleanliness
from dbo.test$
where [Flight Distance] between 2500 and 5000
group by [Class], [Type of Travel]
order by [Type of Travel]


--Dividing people with respect to their ages
select [Class],[Type of Travel],count([id]) as no_of_passengers,
avg([inflight wifi service]) as wifi_service,avg([Departure/Arrival time convenient]) as departure_arrival_time_convinient,
avg([Ease of Online booking]) as online_booking,avg([Gate location]) as gate_location,avg([Food and drink]) as food_drink,
avg([Online boarding]) as online_boarding,avg([Seat comfort]) as seat_comfort,avg([Inflight entertainment]) as inflight_entertainment,
avg([On-board service]) as on_board_service, avg([Leg room service]) as leg_room,avg([Baggage handling]) as baggage_handling,
avg([Checkin service]) as checkin_service, avg([Inflight service]) as inflight_service, avg([Cleanliness]) as cleanliness
from dbo.test$
where Age <= 24
group by [Class], [Type of Travel]
order by [Type of Travel]

select [Class],[Type of Travel],count([id]) as no_of_passengers,
avg([inflight wifi service]) as wifi_service,avg([Departure/Arrival time convenient]) as departure_arrival_time_convinient,
avg([Ease of Online booking]) as online_booking,avg([Gate location]) as gate_location,avg([Food and drink]) as food_drink,
avg([Online boarding]) as online_boarding,avg([Seat comfort]) as seat_comfort,avg([Inflight entertainment]) as inflight_entertainment,
avg([On-board service]) as on_board_service, avg([Leg room service]) as leg_room,avg([Baggage handling]) as baggage_handling,
avg([Checkin service]) as checkin_service, avg([Inflight service]) as inflight_service, avg([Cleanliness]) as cleanliness
from dbo.test$
where Age between 24 and 39
group by [Class], [Type of Travel]
order by [Type of Travel]

select [Class],[Type of Travel],count([id]) as no_of_passengers,
avg([inflight wifi service]) as wifi_service,avg([Departure/Arrival time convenient]) as departure_arrival_time_convinient,
avg([Ease of Online booking]) as online_booking,avg([Gate location]) as gate_location,avg([Food and drink]) as food_drink,
avg([Online boarding]) as online_boarding,avg([Seat comfort]) as seat_comfort,avg([Inflight entertainment]) as inflight_entertainment,
avg([On-board service]) as on_board_service, avg([Leg room service]) as leg_room,avg([Baggage handling]) as baggage_handling,
avg([Checkin service]) as checkin_service, avg([Inflight service]) as inflight_service, avg([Cleanliness]) as cleanliness
from dbo.test$
where Age > 39
group by [Class], [Type of Travel]
order by [Type of Travel]

--Finally selecting the target audience to see the ratings of different sections to find the conclusions
select [Class],count([id]) as no_of_passengers,[Customer Type],
avg([inflight wifi service]) as wifi_service,avg([Departure/Arrival time convenient]) as departure_arrival_time_convinient,
avg([Ease of Online booking]) as online_booking,avg([Gate location]) as gate_location,avg([Food and drink]) as food_drink,
avg([Online boarding]) as online_boarding,avg([Seat comfort]) as seat_comfort,avg([Inflight entertainment]) as inflight_entertainment,
avg([On-board service]) as on_board_service, avg([Leg room service]) as leg_room,avg([Baggage handling]) as baggage_handling,
avg([Checkin service]) as checkin_service, avg([Inflight service]) as inflight_service, avg([Cleanliness]) as cleanliness
from dbo.test$
where [Customer Type] = 'Loyal Customer' and [Flight Distance] between 0 and 2500 and [Class] = 'Business' or  [Class] = 'Eco' and [Customer Type] = 'Loyal Customer' and [Flight Distance] between 0 and 2500
group by [Class],  [Customer Type]
