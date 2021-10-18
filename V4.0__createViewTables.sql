create view expensive_cars
as select * from cars where car_brand = 'BMW'
with local check option;

select * from expensive_cars;

create view orders_on_the_selected_day
as select * from work_order where date_of_work = '15.10.2021'
with local check option;

select * from orders_on_the_selected_day;