-- create category table
create table category (
	category_id varchar(50) not null,
	category varchar(50) not null,
		primary key (category_id)
);
--create subcategory table
create table subcategory (
	subcategory_id varchar(50) not null,
	subcategory varchar(50) not null,
		primary key (subcategory_id)
);

--create contacts table
create table contacts (
	contact_id int not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(200) not null,
		primary key (contact_id)
);

--create campaign table
create table campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar (100) not null,
	description varchar (100) not null,
	goal int not null,
	pledged int not null,
	outcome varchar (50) not null,
	backers_count int not null,
	country varchar (10) not null,
	currency varchar(10) not null,
	launch_date date not null,
	end_date date not null,
	category_id varchar (50) not null,
	subcategory_id varchar(50) not null,
		primary key (cf_id),
		foreign key (contact_id) references contacts (contact_id),
		foreign key (category_id) references category (category_id),
		foreign key (subcategory_id) references subcategory (subcategory_id)
)

