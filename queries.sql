insert into customer (username, password, created_at)
values ('gabriel', '123', '2022-09-17'),
('natalia', '123', '2022-09-17'),
('daniel', '123', '2022-09-17'),
('jose', '123', '2022-09-17'),
('damaris', '123', '2022-09-17');

 insert into item (name, price)
 values ('Corolla', 30000), ('Civic', 30000), ('Focus', 25000), ('Jetta', 28000), ('Fluence', 27000),
 ('HR-V', 35000), ('Tucson', 32000), ('Rav4', 40000), ('CR-V', 39000), ('X1', 42000);
 
insert into purchase (purchase_time, customer_id, item_id)
values ('2022-09-17 16:00:00', 1,1), ('2022-09-17 16:00:00', 1,2), ('2022-09-17 16:00:00', 1,3), ('2022-09-17 16:00:00', 1,4),
('2022-09-16 13:00:00', 2,5), ('2022-09-16 13:00:00', 2,6), ('2022-09-16 13:00:00', 2,7), ('2022-09-16 13:00:00', 2,8),
('2022-09-15 13:00:00', 3,9), ('2022-09-15 13:00:00', 3,9), ('2022-09-15 13:00:00', 3,10), ('2022-09-15 13:00:00', 3,10),
('2022-09-15 13:00:00', 4,4), ('2022-09-15 13:00:00', 4,4), ('2022-09-15 13:00:00', 4,4), ('2022-09-15 13:00:00', 4,4),
('2022-09-15 13:00:00', 5,6), ('2022-09-15 13:00:00', 5,1), ('2022-09-15 13:00:00', 5,3), ('2022-09-15 13:00:00', 5,10);

select p.customer_id 
from purchase p 
order by p.purchase_time desc
limit 5;

call five_recent_purchases(5);

select c.username, count(p.customer_id) 
from purchase p 
inner join customer c on c.id = p.customer_id
where c.id = 1
group by c.id;

call customer_purchases(1);
call customer_purchases(2);
call customer_purchases(3);