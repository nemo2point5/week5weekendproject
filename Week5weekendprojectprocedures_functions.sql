create or replace function new_car_sale(
	car_id int,
	sale_percentage float4
)
return int
language plpgsql as $$
begin
	update car
	set price of sale = price of sale - ((sale percentage / 100) * price of sale)
	where car_id = carId;
	return carId;
end;
$$	

create or replace function name_changer(
	mechaninId int,
	new_last_name varchar
)
returns varchar
language plpgsql as $$
begin
	update mechanic
	set last_name = new_last_name
	where mechanic_id = mechanicId;
	return mechanicId;
end;
$$

create or replace procedure new_car(
	make_ varchar,
	model_ varchar,
	model_year_ int,
	car_id_ varchar,
	vin_num varchar
)
language plpgsql as $$
begin 
	insert into car(
		make,
		model,
		year_of_car,
		color,
		model_year,
		car_for_sale,
		price_of_sale
	)VALUES(
		make_,
		model_,
		year_,
		color_,
		model_year_,
		car_sale_,
		pricing_
	);
end
$$

