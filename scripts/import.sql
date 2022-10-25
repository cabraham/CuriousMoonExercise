create schema if not exists import;
drop table if exists import.master_plan;
create table import.master_plan(
	start_time_utc text,
	duration text,
	date text,
	team text,
	spass_type text,
	target text,
	request_name text,
	library_definition text,
	title text,
	description text
);

drop table if exists events;

create table events(
	id serial primary key,
	time_stamp timestamptz not null,
	title varchar(500),
	description text,
	event_type_id int,
	spass_type_id int,
	target_id int,
	team_id int,
	request_id int
);
