insert into affiliate(id, name, address, telephone_number) values (1, 'Auto-League', '95 Orenburg Tract, Kazan', 241123);
insert into affiliate(id, name, address, telephone_number) values (2, 'Auto-Ball', '83 Dekabristov Street, Kazan', 845982);

insert into mechanics(id, affiliate_id, name, telephone_number, address, qualification) values (1, 1, 'Maxim', 891582, '23 Yamasheva Street, Kazan', 'Chief engineer');
insert into mechanics(id, affiliate_id, name, telephone_number, address, qualification) values (2, 1, 'Mikhail', 891923, '35 Kremlevskaya Street, Kazan', 'Junior mechanic');

insert into work_order(id, affiliate_id, price, date_of_work) values (1, 1, 7000, '15.10.2021');
insert into work_order(id, affiliate_id, price, date_of_work) values (2, 2, 9500, '16.10.2021');

insert into cars(id, work_order_id, car_brand, power) values (1, 2, 'BMW', 350);
insert into cars(id, work_order_id, car_brand, power) values (2, 1, 'Bugatti', 880);

insert into cars_owners(id, cars_id, name, telephone_number) values (1, 1, 'Semyon', 873124);
insert into cars_owners(id, cars_id, name, telephone_number) values (2, 2, 'Ilya', 875414);

update work_order set cars_id = 1 where id = 1;
update work_order set cars_id = 2 where id = 2;

update cars set cars_owners_id = 1 where id = 1;
update cars set cars_owners_id = 2 where id = 2;

insert into cars_cars_owners(cars_id, cars_owners_id) values (1, 1);
insert into cars_cars_owners(cars_id, cars_owners_id) values (2, 2);