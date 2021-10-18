alter table cars drop column car_owner;

alter table cars add column cars_owners_id int references cars_owners(id);
