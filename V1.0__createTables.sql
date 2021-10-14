create table affiliate(
    id int primary key,
    name varchar(255),
    address varchar(255),
    telephone_number integer
);

create table mechanics(
    id int primary key,
    affiliate_id int references affiliate(id),
    name varchar(255),
    telephone_number integer,
    address varchar(255),
    qualification varchar(255)
);

create table work_order(
    id int primary key,
    affiliate_id int references affiliate(id),
    price integer,
    date_of_work varchar(255)
);

create table cars(
    id int primary key,
    work_order_id int references work_order(id),
    car_owner varchar(255),
    car_brand varchar(255),
    power integer
);

alter table work_order add column cars_id int references cars(id);

create table cars_owners(
    id int primary key,
    cars_id int references cars(id),
    name varchar(255),
    telephone_number integer
);

create table cars_cars_owners(
    cars_id int references cars(id),
    cars_owners_id int references cars_owners(id)
);