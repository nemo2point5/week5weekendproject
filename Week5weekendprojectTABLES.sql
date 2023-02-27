create table salesPerson(
	salesperson_id SERIAL primary key,
	first_name varchar(255),
	last_name varchar(255),
	sales_date varchar(255)
);
	
create table salesInvoice_(
	invoice_id SERIAL primary key,
	sales_date text not null, 
	car_id varchar(45) not null,
	customer_id varchar(45) not null,
	salesperson_id SERIAL not null,
	foreign key(salesperson_id) references salesPerson(salesperson_id),
	foreign key(customer_id) references customer(customer_id)
);
	
create table carDetails(
	car_id SERIAL primary key,
	vin_num varchar(255),
	make varchar(255),
	color varchar(255),
	model_year varchar(255),
	model varchar(255)
);
	
create table customer(
	customer_id SERIAL primary key,
	first_name varchar(255),
	last_name varchar(255),
	phone_number varchar(255),
	address varchar(255),
	city varchar(255),
	state varchar(255),
	zip_code varchar(255)
);
	
create table serviceTicket(
	serviceticket_id SERIAL primary key not null,
	mechanic_id SERIAL not null,
	car_id varchar(255) not null,
	service_total_id varchar(255) not null,
	customer_id varchar(255) not null,
	date_received text,
	return_date text,
	comments_ text not null,
	foreign key (service_total_id) references services_(service_total_id)
	foreign key (mechanic_id) references mechanic(mechanic_id)
	);
	
create table services_(
	service_total SERIAL primary key,
	service_total_id varchar(255) not null,
	price text not null,
	provided_services text
);

create table mechanic(
	mechanic_id SERIAL primary key not null,
	first_name varchar(255),
	last_name varchar(255),
);

create table serviceMechanic(
	servicemechanic_id SERIAL primary key,
	price varchar(255) not null,
	serviceticket_id varchar(255) not null,
	mechanic_id varchar(255) not null,
	comments_ text not null
);